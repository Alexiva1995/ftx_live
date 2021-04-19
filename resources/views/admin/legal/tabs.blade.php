@extends('layouts.dashboardnew')

@push('script')
	<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
	
	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
				order: [[ 3, "desc" ]],
			});
		});

		function editar($id){
			var route = $("#"+$id).attr('data-route');
 			$.ajax({
	            url:route,
	            type:'GET',
	            success:function(ans){
	                $("#tab_id").val(ans.id);
	                $("#title").val(ans.title);
			        $("#modal-edit").modal("show");
	            }
	        });
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

		<div class="box">
			<div class="box-body">
				<div style="text-align: right;">
					<a data-toggle="modal" data-target="#modal-new" class="btn btn-info"><i class="fa fa-plus-circle"></i> Nueva Pestaña</a>
					<a data-toggle="modal" data-target="#modal-new-clause" class="btn btn-info"><i class="fa fa-plus-circle"></i> Nueva Clausula</a>
				</div>

				<br class="col-xs-12">

				<table id="mytable" class="table">
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th class="text-center">Título</th>
							<th class="text-center">Nº Clausulas</th>
							<th class="text-center">Estado</th>
							<th class="text-center">Acción</th>
						</tr>
					</thead>
					<tbody>
						@foreach($tabs as $tab)
							<tr>
								<td class="text-center">{{ $tab->id }}</td>
								<td class="text-center">{{ $tab->title }}</td>
								<td class="text-center">{{ $tab->legal_clauses_count }}</td>
								<td class="text-center">
									@if ($tab->status == 0)
										<label class="label label-danger">Oculta</label>
									@else
										<label class="label label-success">Visible</label>
									@endif
								</td>
								<td class="text-center">
									<a class="btn btn-info" data-route="{{ route('admin.legal.tabs.show', $tab->id) }}" id="{{$tab->id}}" onclick="editar(this.id);"><i class="fa fa-edit"></i></a>
									<a class="btn btn-warning" href="{{ route('admin.legal.clauses.index', $tab->id) }}" title="Ver Clausulas"><i class="fa fa-list"></i></a>
									@if ($tab->status == 1)
										<a class="btn btn-danger" href="{{ route('admin.legal.tabs.change-status', [$tab->id, 0]) }}" title="Deshabilitar"><i class="fa fa-ban"></i></a>
									@else
										<a class="btn btn-success" href="{{ route('admin.legal.tabs.change-status', [$tab->id, 1]) }}" title="Habilitar"><i class="fa fa-check"></i></a>
									@endif
								</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Modal Agregar Pestaña Legal-->
	<div class="modal fade" id="modal-new" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Crear Pestaña Legal</h5>
      			</div>
      			<form action="{{ route('admin.legal.tabs.store') }}" method="POST">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Título</label>
						            	<input type="text" class="form-control" name="title" required>
						            </div>
						        </div>
						    </div>
						</div>

				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Crear Pestaña</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>

	<!-- Modal Editar Pestaña-->
	<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Modificar Pestaña Legal</h5>
      			</div>
      			<form action="{{ route('admin.legal.tabs.update') }}" method="POST">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid" id="content-modal">
	    					<div class="row">
								<input type="hidden" name="tab_id" id="tab_id">
								<div class="col-md-12">
									<div class="form-group">
										<label>Título</label>
										<input type="text" class="form-control" name="title" id="title" required>
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

	<!-- Modal Agregar Pestaña Legal-->
	<div class="modal fade" id="modal-new-clause" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Crear Clausula Legal</h5>
      			</div>
      			<form action="{{ route('admin.legal.clauses.store') }}" method="POST">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Título</label>
						            	<input type="text" class="form-control" name="title" required>
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Pestaña Legal</label>
						            	<select class="form-control" name="legal_tab_id" required>
						            		<option value="" selected disabled>Seleccione una opción...</option>
						            		@foreach ($tabs as $tab)
						            			<option value="{{ $tab->id }}">{{ $tab->title }}</option>
						            		@endforeach
						            	</select>
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Descripción</label>
						            	<textarea class="ckeditor form-control" name="clause"></textarea>
						            </div>
						        </div>
						    </div>
						</div>

				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Crear Clausula</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>
@endsection

