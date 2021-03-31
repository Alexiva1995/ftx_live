@extends('layouts.dashboardnew')

@push('script')
	<script>
		$(document).ready(function (){
			$('#mytable').DataTable({
				responsive: true,
				"order": [
	                [0, 'desc']
	            ]
			});
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

				<table id="mytable" class="table">
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th class="text-center">Título</th>
							<th class="text-center">Categoría</th>
							<th class="text-center">Mentor</th>
							<th class="text-center">Fecha</th>
							<th class="text-center">Hora</th>
						</tr>
					</thead>
					<tbody>
						@foreach($events as $event)
							<tr>
								<td class="text-center">{{ $event->id }}</td>
								<td class="text-center">{{ $event->title }}</td>
								<td class="text-center">{{ $event->category->title }}</td>
								<td class="text-center">{{ App\Models\Events::findID($event->user_id) }}</td>
								<td class="text-center">{{ date('d-m-Y', strtotime($event->date)) }}</td>
								<td class="text-center">{{ date('H:i', strtotime($event->time)) }}</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

@endsection

