@extends('layouts.dashboardnew')

@push('script')
	<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
				"order": [
	                [0, 'desc']
	            ]
			});

			CKEDITOR.instances["description"].on('blur', function(){
				var description = CKEDITOR.instances["description"].getData();
    			if (description.length < 50){
    			    alert("La descripción del evento debe tener al menos 50 caracteres.");
    			    $("#btn-store").prop('disabled', true);
    			}else{
    			    $("#btn-store").prop('disabled', false);
    			}
		    });
		    
		    CKEDITOR.instances["description2"].on('blur', function(){
				var description = CKEDITOR.instances["description2"].getData();
    			if (description.length < 50){
    			    alert("La descripción del evento debe tener al menos 50 caracteres.");
    			    $("#btn-update").prop('disabled', true);
    			}else{
    			    $("#btn-update").prop('disabled', false);
    			}
		    });
		});

		function editar($id){
			var route = $("#"+$id).attr('data-route');
 			$.ajax({
	            url:route,
	            type:'GET',
	            success:function(ans){
	                $("#event_id").val(ans.id);
	                $("#title").val(ans.title);
	                $("#streaming_type option[value="+ans.streaming_type+"]").attr("selected", true);
	                $("#category_id option[value="+ans.category_id+"]").attr("selected", true);
	                $("#user_id option[value="+ans.user_id+"]").attr("selected", true);
                 	CKEDITOR.instances["description2"].setData(ans.description);
	                $("#date").val(ans.date);
	                $("#time").val(ans.time);
	                $("#duration").val(ans.duration);
	                $("#modal-edit").modal("show");
	            }
	        });
		}

		function load_time(){
			//var route = 'http://localhost:8000/admin/events/calculate-time';
			var route = 'https://ftxlive.com/office/admin/events/calculate-time';
			var formData = new FormData(document.getElementById("form_time"));
 			$.ajax({
	            headers: {
	                'X-CSRF-TOKEN': $("#meta_token").val()    
	            },
	            url: route,
	            type: "POST",
				 data: formData,
				 processData: false,  // tell jQuery not to process the data
				 contentType: false,
	            success:function(ans){
	            	var fecha = ans.split(" ");
	                console.log(fecha);
	                $("#date2").val(fecha[0]);
	                $("#time2").val(fecha[1]);
	                $("#modal-time").modal("hide");
	            }
	        });
		}

		$("#selectall").on("click", function() {
			$(".countries").prop("checked", this.checked);
		});
		// if all checkbox are selected, check the selectall checkbox and viceversa
		$(".countries").on("click", function() {
			if ($(".countries").length == $(".countries:checked").length) {
				$("#selectall").prop("checked", true);
			}else{
				$("#selectall").prop("checked", false);
			}
		});
	</script>
@endpush

@section('content')
	<div class="col-xs-12">
		@if (Session::has('msj-exitoso'))
			<div class="alert alert-success">
				<strong>{{ Session::get('msj-exitoso') }}</strong>
			</div>
		@endif

		@if (Session::has('msj-erroneo'))
			<div class="alert alert-danger">
				<strong>{{ Session::get('msj-erroneo') }}</strong>
			</div>
		@endif

		<div class="box">
			<div class="box-body">
				<div style="text-align: right;">
					<a data-toggle="modal" data-target="#modal-new" class="btn btn-danger descargar"><i class="fa fa-plus-circle"></i> Nuevo Evento</a>
				</div>

				<br class="col-xs-12">

				<table id="mytable" class="table">
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th class="text-center">Título</th>
							<th class="text-center">Mentor</th>
							<th class="text-center">Acción</th>
						</tr>
					</thead>
					<tbody>
						@foreach($events as $event)
							<tr>
								<td class="text-center">{{ $event->id }}</td>
								<td class="text-center">{{ $event->title }}</td>
								<td class="text-center">{{ App\Models\Events::findID($event->user_id) }}</td>
								<td class="text-center">
									<a class="btn btn-danger editar" data-route="{{ route('admin.events.edit', $event->id) }}" id="{{$event->id}}" onclick="editar(this.id);"><i class="fa fa-edit"></i></a>
									@if ($event->status == '1' )
										<a class="btn btn-danger" href="{{ route('admin.events.change-status', [$event->id, 0]) }}" title="Deshabilitar" style="background-color: rgb(23, 21, 21)!important; border-color:rgb(23, 21, 21)!important;"><i class="fa fa-ban"></i></a>
									@endif

									@if ($event->status == '0')
									<a class="btn btn-danger" href="{{ route('admin.events.change-status', [$event->id, 1]) }}" title="Habilitar" style="background-color: rgb(23, 21, 21)!important; border-color:rgb(23, 21, 21)!important;"><i class="fa fa-check"></i></a>
									@endif

								</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Modal Agregar Evento-->
	<div class="modal fade" id="modal-new" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content"  style="background-color: black;">
      			<div class="modal-header">
        			<h5 class="white modal-title" id="exampleModalLabel">Crear Evento</h5>
      			</div>
      			<form action="{{ route('admin.events.store') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
						        <div class="col-md-12">
						            <div class="form-group">
						                <label class="white">Título del Evento</label>
						            	<input type="text" class="form-control" name="title" minlength="5" required>
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label class="white">Tipo de Evento</label>
						                <select class="form-control" name="streaming_type" required>
						                	<option value="" selected disabled>Seleccione una opción..</option>
						                	<option value="webinar">Webinar</option>
											<option value="video_conference">Video Conferencia</option>
						                </select>
						            </div>
								</div>
								@if (Auth::user()->ID == 1)
									<div class="col-md-12">
							            <div class="form-group">
							                <label class="white">Mentor</label>
							                <select class="form-control" name="user_id" @if (Auth::user()->rol_id != 2) required @endif>
							                	<option value="" selected disabled>Seleccione un mentor..</option>
							                	@foreach ($mentores as $mentor)
							                		<option value="{{ $mentor->ID }}">{{ $mentor->user_email }}</option>
							                	@endforeach
							                </select>
							            </div>
									</div>
								@else
									<input type="hidden" name="user_id" value="{{ Auth::user()->ID }}">
								@endif
								<div class="col-md-12">
						            <div class="form-group">
						                <label class="white">Categoría</label>
						                <select class="form-control" name="category_id" required>
						                	<option value="" selected disabled>Seleccione una categoría..</option>
						                	@foreach ($categorias as $categoria)
						                		<option value="{{ $categoria->id }}">{{ $categoria->title }}</option>
						                	@endforeach
						                </select>
						            </div>
						        </div>
								<div class="col-md-12">
						            <div class="form-group">
						                <label class="white">Descripción</label>
										<textarea class="ckeditor form-control" name="description" id="description"></textarea>
								    </div>
						        </div>
								<div class="col-md-12 text-center">
									<label class="white">Fecha y Hora del Sistema	 <br><span style="color: red;">{{ date('d-m-Y H:i A', strtotime($dateNow))}}</span></label>
								</div>
								<div class="col-md-12 text-center">
									<label class="white"><a href="#" data-toggle="modal" data-target="#modal-time">Calcular Hora</a></label>
								</div>
								<div class="col-md-6">
									<label class="white">Fecha</label>
									<input type="date" class="form-control" name="date" id="date2" required>
								</div>
								<div class="col-md-6">
									<label class="white">Hora</label>
									<input type="time" class="form-control" name="time" id="time2" required>
								</div>
								<div class="col-md-12">
						            <div class="form-group">
						                <label class="white">Países Disponibles</label>
						                <div class="row">
											<div class="col-sm-6 col-md-12 text-center">
												<input type="checkbox" class="form-check-input" id="selectall">
											    <label class="form-check-label white">Seleccionar todos</label>
											</div>
						                	@foreach ($paises as $pais)
							            		<div class="col-sm-6 col-md-3">
												    <input type="checkbox" class="form-check-input countries" value="{{ $pais->id }}" name="countries[]">
												    <label class="form-check-label white">{{ $pais->nombre }}</label>
												</div>
							            	@endforeach
						                </div>
						            </div>
						        </div>
								<div class="col-md-12">
						        	<label class="white">Duración (Minutos)</label>
            						<input type="number" class="form-control" name="duration" required>
								</div>
								<div class="col-md-12 text-center">
									<label class="white">Dimensiones para el banner <br><span style="color: red;">900px  x  321px</span></label>
								</div>
						        <div class="col-md-12">
									<div class="form-group">
									<label class="white text-center">Banner</label>
										<input class="form-control" type="file" name="banner" required>
									</div>
						        </div><br>
								<div class="col-md-12 text-center">
									<label class="white">Dimensiones para la miniatura <br><span style="color: red;">350px  x  450px</span></label>
								</div>
						        <div class="col-md-12">
									<div class="form-group">
									<label class="text-center white">Miniatura</label>
										<input class="form-control" type="file" name="miniatura" required>
									</div>
						        </div>

						    </div>
						</div>

				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-danger" id="btn-store" disabled>Crear Evento</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>

	<!-- Modal Editar Evento-->
	<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content" style="background-color: black;">
      			<div class="modal-header">
        			<h5 class="modal-title white" id="exampleModalLabel">Modificar Evento</h5>
      			</div>
      			<form action="{{ route('admin.events.update') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid" id="content-modal">
				        	<input type="hidden" name="event_id" id="event_id" >
							<div class="col-md-12">
								<div class="form-group">
									<label class="white">Título del Evento</label>
									<input type="text" class="form-control" name="title" id="title" minlength="5" required>
								</div>
							</div>
							<div class="col-md-12">
						        <div class="form-group">
						            <label class="white">Tipo de Evento</label>
						            <select class="form-control" name="streaming_type" id="streaming_type" required>
						                <option value="" selected disabled>Seleccione una opción..</option>
						                <option value="webinar">Webinar</option>
										<option value="video_conference">Video Conferencia</option>
						            </select>
						       </div>
						    </div>
						    @if (Auth::user()->rol_id != 2)
								<div class="col-md-12">
									<div class="form-group">
										<label class="white">Mentor</label>
										<select class="form-control" name="user_id" id="user_id" @if (Auth::user()->rol_id != 2) required @endif>
											@foreach ($mentores as $mentor)
												<option value="{{ $mentor->ID }}">{{ $mentor->user_email }}</option>
											@endforeach
										</select>
									</div>
								</div>
							@else
								<input type="hidden" name="user_id" id="user_id" value="{{ Auth::user()->ID }}">
							@endif
							<div class="col-md-12">
								<div class="form-group">
									<label class="white">Categoría</label>
									<select class="form-control" name="category_id" id="category_id" required>
										@foreach ($categorias as $categoria)
											<option value="{{ $categoria->id }}">{{ $categoria->title }}</option>
										@endforeach
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="white">Descripción</label>
									<textarea class="ckeditor form-control" name="description" id="description2"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<label class="white">Fecha</label>
								<input type="date" class="form-control" name="date" id="date" required>
							</div>
							<div class="col-md-12">
								<label class="white">Hora</label>
								<input type="time" class="form-control" name="time" id="time" required>
							</div>
							<div class="col-md-12">
								<label class="white">Duración (Minutos)</label>
								<input type="number" class="form-control" name="duration" id="duration" required>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="white text-center">Banner</label>
									<input class="form-control" type="file" name="banner">
								</div>
							</div>

							<div class="col-md-12">
									<div class="form-group">
									<label class="white text-center">Miniatura</label>
										<input class="form-control" type="file" name="miniatura">
									</div>
						  </div>

						</div>
				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-danger" id="btn-update">Guardar Cambios</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>

	<!-- Modal Calcular Hora-->
	<div class="modal fade" id="modal-time" tabindex="-1" role="dialog" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content" style="background-color: black;">
      			<div class="modal-header">
        			<h5 class="modal-title white" id="exampleModalLabel">Calcular Hora</h5>
      			</div>
      			<input type="hidden" id="meta_token" value="{{ csrf_token() }}">
				<div class="modal-body">
				    <div class="container-fluid">
				    	<form id="form_time">
							<div class="col-md-12">
								<div class="form-group">
									<label class="white">País</label>
									<select class="form-control" name="country" id="country">
										<option value="" selected disabled>Seleccione una opción...</option>
										<option value="AR">Argentina</option>
										<option value="CH">Chile</option>
										<option value="CO">Colombia</option>
										<option value="CR">Costa Rica</option>
										<option value="EC">Ecuador</option>
										<option value="ES">España</option>
										<option value="EU">Estados Unidos</option>
										<option value="PA">Panamá</option>
										<option value="PE">Perú</option>
										<option value="VE">Venezuela</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<label class="white">Fecha</label>
								<input type="date" class="form-control" name="date" id="date2">
							</div>
							<div class="col-md-6">
								<label class="white">Hora</label>
								<input type="time" class="form-control" name="time" id="time2">
							</div>
						</form>
				    </div>
				</div>
	      		<div class="modal-footer">
	        		<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
	        		<button type="button" class="btn btn-danger" onclick="load_time();">Aceptar</button>
	      		</div>
    		</div>
  		</div>
	</div>
@endsection

