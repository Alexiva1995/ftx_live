@extends('layouts.dashboardnew')

@push('script')
	<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
			});
		});

		function editar($promocion){
	        $("#promotion_id").val($promocion.id);
	        $("#title").val($promocion.title);
			CKEDITOR.instances["description"].setData($promocion.description);
			$("#modal-edit").modal("show");
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
					<div style="text-align: right;">
						<a data-toggle="modal" data-target="#modal-create" class="btn btn-info descargar"><i class="fa fa-plus-circle"></i> Nueva Promoción</a>
					</div>

					<br class="col-xs-12">

                    <table id="mytable" class="table">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th class="text-center">Título</th>
                                <th class="text-center">Descripción</th>
                                <th class="text-center">Banner</th>
                                <th class="text-center">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($promociones as $promocion)
                                <tr>
                                    <td class="text-center">{{ $promocion->id }}</td>
                                    <td class="text-center">{{ $promocion->title }}</td>
                                    <td class="text-center">{!! $promocion->description !!}</td>
                                    <td class="text-center"><img src="{{ asset('uploads/images/coursesPromotions/'.$promocion->banner) }}" style="width: 400px; height: 200px;"></td>
                                    <td class="text-center">
                                        <a class="btn btn-info" onclick="editar({{$promocion}});"><i class="fa fa-edit"></i></a>
                                        @if ($promocion->status == 1)
                                            <a class="btn btn-danger" href="{{ route('admin.promotions.change-status', [$promocion->id, 0]) }}" title="Deshabilitar"><i class="fa fa-ban"></i></a>
                                        @else
                                            <a class="btn btn-success" href="{{ route('admin.promotions.change-status', [$promocion->id, 1]) }}" title="Habilitar"><i class="fa fa-check"></i></a>
                                        @endif
									</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-create" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title">Crear Promoción</h5>
      			</div>
      			<form action="{{ route('admin.promotions.store') }}" method="POST" enctype="multipart/form-data">
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
						                <label>Descripción</label>
						            	<textarea class="ckeditor form-control" name="description"></textarea>
						            </div>
						        </div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Banner</label>
										<input type="file" class="form-control" name="banner" required>
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

    <div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title">Modificar Promoción</h5>
      			</div>
      			<form action="{{ route('admin.promotions.update') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
					<input type="hidden" name="promotion_id" id="promotion_id">
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Título</label>
										<input type="text" class="form-control" name="title" id="title" required>
									</div>
								</div>
								<div class="col-md-12">
						            <div class="form-group">
						                <label>Descripción</label>
						            	<textarea class="ckeditor form-control" name="description" id="description"></textarea>
						            </div>
						        </div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Banner</label>
										<input type="file" class="form-control" name="banner">
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
