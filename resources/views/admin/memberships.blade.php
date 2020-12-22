@extends('layouts.dashboardnew')

@push('script')
	<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
			});
		});

		function editar($membresia){
	        $("#membership_id").val($membresia.id);
	        $("#name").val($membresia.name);
            $("#price").val($membresia.price);
			$("#price_annual").val($membresia.price_annual);
			$("#discount").val($membresia.descuento);
			$("#discount_annual").val($membresia.discount_annual);
			$("#modal-edit").modal("show");
		}

		function editarMensaje($mensaje){
	        $("#message_id").val($mensaje.id);
	        $("#message_title").val($mensaje.title);
            $("#message_description").val($mensaje.description);
			$("#modal-edit-message").modal("show");
		}
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
		
        <div class="col-xs-12">
            <div class="box box-info">
                <div class="box-body">
                    <table id="mytable" class="table">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Membresía</th>
                                <th class="text-center">Precio Mensual</th>
                                <th class="text-center">Precio Mensual Preferencial</th>
                                <th class="text-center">Precio Anual</th>
                                <th class="text-center">Precio Anual Preferencial</th>
                                <th class="text-center">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($membresias as $membresia)
                                <tr>
                                    <td class="text-center">{{ $membresia->id }}</td>
                                    <td class="text-center">{{ $membresia->name }}</td>
                                    <td class="text-center">{{ number_format($membresia->price, 0, ',', '.') }}</td>
                                    <td class="text-center">{{ number_format($membresia->descuento, 0, ',', '.') }}</td>
                                    <td class="text-center">{{ number_format($membresia->price_annual, 0, ',', '.') }}</td>
                                    <td class="text-center">{{ number_format($membresia->discount_annual, 0, ',', '.') }}</td>
                                    <td class="text-center">
										<a class="btn btn-info" onclick="editar({{$membresia}});"><i class="fa fa-edit"></i></a>
										<a class="btn btn-success" onclick="editarMensaje({{$membresia->upgrade_message}});" title="Editar Mensaje de Upgrade"><i class="fa fa-file"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Modificar Membresía</h5>
      			</div>
      			<form action="{{ route('admin.memberships.update') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
								<input type="hidden" name="membership_id" id="membership_id">
								<div class="col-md-12">
									<div class="form-group">
										<label>Nombre</label>
										<input type="text" class="form-control" name="name" id="name" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Precio Mensual</label>
										<input type="text" class="form-control" name="price" id="price" required>
									</div>
                                </div>
                                <div class="col-md-12">
									<div class="form-group">
										<label>Precio Anual</label>
										<input type="text" class="form-control" name="price_annual" id="price_annual" required>
									</div>
                                </div>
                                <div class="col-md-12">
									<div class="form-group">
										<label>Precio Mensual Preferencial</label>
										<input type="text" class="form-control" name="descuento" id="discount" required>
									</div>
                                </div>
                                <div class="col-md-12">
									<div class="form-group">
										<label>Precio Anual Preferencial</label>
										<input type="text" class="form-control" name="discount_annual" id="discount_annual" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Imagen</label>
										<input type="file" class="form-control" name="image" >
									</div>
								</div>
							</div>
						</div>
				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Guardar Cambios</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
    </div>
    
    <div class="modal fade" id="modal-edit-message" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Modificar Mensaje de Upgrade</h5>
      			</div>
      			<form action="{{ route('admin.memberships.update-message') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid" id="content-modal">
	    					<div class="row">
								<input type="hidden" name="message_id" id="message_id">
								<div class="col-md-12">
									<div class="form-group">
										<label>Título</label>
										<input type="text" class="form-control" name="title" id="message_title" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Descripción</label>
										<textarea class="form-control" name="description" id="message_description"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Imagen</label>
										<input type="file" class="form-control" name="image" >
									</div>
								</div>
							</div>
						</div>
				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Guardar Cambios</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>
@endsection
