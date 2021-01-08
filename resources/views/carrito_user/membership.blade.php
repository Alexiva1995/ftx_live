@extends('layouts.landing')

@push('styles')
    <style>
        .color-green {
            color: #6ab742;
        }

        .btn-color-green {
            background: #cc4e49;
        }

        .bg-grey-alt {
            background: #313335;
        }

        .btn-color-red{
            background: #CF202F;
        }
    </style>
@endpush

@section('content')
    <div class="title-page-one_course col-md border-bottom-2">
        <h6>Membresias</h6>
        <hr style="border: 1px solid #707070;opacity: 1;" />
    </div>

    @if (!Auth::guest())
    <div class="title-page-course col-md"><span class="text-white">
            <h3 class="mb-2"><span class="text-white">Hola</span><span class="text-danger"> {{Auth::user()->display_name}}</span><span class="text-white"> ¡Nos alegra verte hoy!</span></h3>
    </div>
    @endif

    <div class="col-12 mb-2">
        <div class="row justify-content-center">
            <section class="pricing">
                <div class="container mb-5">
                    <div class="row justify-content-center">
                        @foreach ($membresias as $membresia)
                            @switch($membresia->id)
                                @case(1)
                                    <!-- Free Tier -->
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-azul-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                    @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price}}<span class="period">/Mensual</span></h4>
                                                        <h5 class="text-danger mt-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->descuento}}<span class="period text-danger" style="font-size:12px;">/Mensual</span> <span class="text-white">registrándote</span></h5>
                                                    @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price}}</del> ${{$membresia->descuento}}<span class="period">/Mensual</span></h4>
                                                    @endif
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="p-2 text-white text-center">Esta membresía es para los amantes del aprendizaje </h5><br>
                                                <h5 class="p-2 text-white text-center"><strong class="text-azul-claro">Podrás conectarte a todo el contenido en vivo, solo en formato de streaming</strong></h5><br>
                                                <h5 class="p-2 text-white text-center">Tendrás acceso a:</h5>
                                                <h4 class="p-2 text-azul-claro text-center">+ 2 LIVE STREAMING <br> AL MES</h4>
                                                @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price_annual}}<span class="period">/Anual</span></h4>
                                                        <h5 class="text-danger mt-4 mb-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->discount_annual}}<span class="period text-danger" style="font-size:12px;">/Anual</span> <span class="text-white">registrándote</span></h5>
                                                @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                @endif
                                                    
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-red text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-azul-claro">4 STREAMING + CONTENIDO VIP
                                                    +</b> <b class="text-danger"> 1 MODULO GRATIS </b> DE NUESTRO PARTNER <b class="text-danger">MTA PRO </b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(2)
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-orange-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                    @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price}}<span class="period">/Mensual</span></h4>
                                                        <h5 class="text-danger mt-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->descuento}}<span class="period text-danger" style="font-size:12px;">/Mensual</span> <span class="text-white">registrándote</span></h5>
                                                    @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price}}</del> ${{$membresia->descuento}}<span class="period">/Mensual</span></h4>
                                                    @endif
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="p-2 text-orange text-center">Esta membresía es para los que quieren recibir y compartir conocimiento con nuestra red general de mentores y afiliados.</h5><br>
                                                <h5 class="p-2 text-white text-center">Disfrutarás de todo el contenido de este nivel y del anterior</h5>
                                                <h4 class="p-2 text-orange text-center">+ 4 STREAMING <br> AL MES</h4>
                                                @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price_annual}}<span class="period">/Anual</span></h4>
                                                        <h5 class="text-danger mt-4 mb-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->discount_annual}}<span class="period text-danger" style="font-size:12px;">/Anual</span> <span class="text-white">registrándote</span></h5>
                                                @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                @endif
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-red text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-orange">6 STREAMING + CONTENIDO VIP
                                                    +</b> <b class="text-danger"> 2 MODULOS GRATIS </b> DE NUESTRO PARTNER <b class="text-danger">MTA PRO </b></h5>
                                                    </div>
                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(3)
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-verde-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center" >{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                    @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price}}<span class="period">/Mensual</span></h4>
                                                        <h5 class="text-danger mt-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->descuento}}<span class="period text-danger" style="font-size:12px;">/Mensual</span> <span class="text-white">registrándote</span></h5>
                                                    @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price}}</del> ${{$membresia->descuento}}<span class="period">/Mensual</span></h4>
                                                    @endif
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="p-2 text-verde-claro text-center">Esta membresía te permite además de acceder a los beneficios de los niveles anteriores, también tendrás una sala exclusiva para tu contenido e impulso comercial por parte de FTX LIVE + Proyección con nuestro Partner de MBA Pro. </h5>
                                                <h5 class="p-2 text-white text-center">Accederás:</h5>
                                                <h4 class="p-2 text-verde-claro text-center">+ 6 STREAMING <br> AL MES</h4>
                                                @if (Auth::guest())
                                                        <h4 class="card-price text-rojo text-center"> ${{$membresia->price_annual}}<span class="period">/Anual</span></h4>
                                                        <h5 class="text-danger mt-4 mb-4 p-1 text-center"><span class="text-white">Obtén precio preferencial</span> ${{$membresia->discount_annual}}<span class="period text-danger" style="font-size:12px;">/Anual</span> <span class="text-white">registrándote</span></h5>
                                                @else
                                                        <h4 class="card-price text-rojo text-center"><del style="font-size: 30px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                @endif
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-red text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-verde-claro">6 STREAMING + CONTENIDO VIP
                                                    +</b> <b class="text-danger"> 3 MODULO GRATIS </b> DE NUESTRO PARTNER <b class="text-danger">MTA PRO </b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break
                            @endswitch
                        @endforeach
                    </div>
                </div>
            </section>
        </div>
    </div>

@endsection
