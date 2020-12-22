@extends('layouts.dashboardnew')

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
            <div class="box box-info" style="background-color: #007bff; border-radius: 10px;">
                <div class="box-body">
                    <h4 class="box-title white">
                        <span class="info-box-icon-fecha-white">
                        <i class="fas fa-calendar-week"></i>
                        </span>
                        <p style="padding: 10px 50px;"> Filtrar por Fechas</p>
                    </h4>

                    <form method="GET" action="{{ route('admin.purchases-record') }}">
                        <div class="col-md-12"> 
                            <div class="form-group col-xs-12 col-md-3">
                                <label class="control-label" style="color:white">Desde</label>
                                <input class="form-control" type="date" name="initial_date" required>
                            </div>
                            <div class="form-group date col-xs-12 col-md-3">
                                <label class="control-label" style="color:white">Hasta</label>
                                <input class="form-control" type="date" name="final_date" required>
                            </div>
                            <div class="form-group col-xs-12 col-md-4" style="margin-top: 20px;">
                                <button class="btn btn-success" type="submit">
                                    buscar
                                </button>
                            </div>
                        </div> 
                    </form>
                </div>
            </div>
        </div>    

        <div class="col-xs-6">
            <div class="box box-info" style="background-color: #5743a7; border-radius: 10px;">
                <div class="box-body">
                    <h4 class="box-title white">
                    <span class="info-box-icon-fecha-blue">
                    <i class="fab fa-stripe white"></i>
                    </span>
                        <p style="padding: 10px 50px;"> Filtrar por Método de Pago</p>
                    </h4>

                    <form method="GET" action="{{ route('admin.purchases-record') }}">
                        <div class="form-group has-feedback date col-xs-12 col-md-8">
                            <label class="control-label" style="color: white;">Buscar</label>
                            <select name="payment_method" class="form-control">
                                <option value="" selected> Seleccione una opción</option>
                                <option value="Billetera">Billetera</option>
                                <option value="Coinpayment">Coinpayment</option>
                                <option value="Paypal">Paypal</option>
                                <option value="Stripe">Stripe</option>
                            </select>
                        </div>
                        
                        <div class="form-group has-feedback date col-xs-12 col-md-4" style="margin-top: 25px;">
                            <button class="btn btn-success" type="submit">
                                Buscar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-xs-6">
            <div class="box box-info" style="background-color: #007bff; border-radius: 10px;">
                <div class="box-body">
                    <h4 class="box-title white">
                    <span class="info-box-icon-fecha-blue">
                    <i class="fa fa-star"></i>
                    </span>
                        <p style="padding: 10px 50px;"> Filtrar por Membresía</p>
                    </h4>

                    <form method="GET" action="{{ route('admin.purchases-record') }}">
                        <div class="form-group has-feedback date col-xs-12 col-md-8">
                            <label class="control-label" style="color: white;">Buscar</label>
                            <select name="membership" class="form-control">
                                <option value="" selected> Seleccione una opción</option>
                                @foreach ($membresias as $membresia)
                                    <option value="{{ $membresia->id }}">{{ $membresia->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        
                        <div class="form-group has-feedback date col-xs-12 col-md-4" style="margin-top: 25px;">
                            <button class="btn btn-success" type="submit">
                                Buscar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="box box-info">
                <div class="box-body">
                    <table id="mytable" class="table">
                        <thead>
                            <tr>
                                <th class="text-center"># Orden</th>
                                <th class="text-center">Fecha</th>
                                <th class="text-center">Cliente</th>
                                <th class="text-center">Producto</th>
                                <th class="text-center">Monto</th>
                                <th class="text-center">Forma de Pago</th>
                                <th class="text-center">Id de Transacción</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($compras as $compra)
                                <tr>
                                    <td class="text-center">{{ $compra->id }}</td>
                                    <td class="text-center">{{ date('d-m-Y', strtotime($compra->date)) }}</td>
                                    <td class="text-center">{{ $compra->user->display_name }}</td>
                                    <td class="text-center">
                                        @if ($compra->product == 'Membresía')
                                            {{ $compra->description->name }}
                                        @else
                                            {{ $compra->description->title }}
                                        @endif
                                        ({{ $compra->product }})
                                    </td>
                                    <td class="text-center">{{ $compra->amount }} USD</td>
                                    <td class="text-center">{{ $compra->payment_method }}</td>
                                    <td class="text-center">{{ $compra->payment_id }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

@include('usuario.componentes.scripBotones')