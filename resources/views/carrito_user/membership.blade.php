@extends('layouts.landing')

@push('styles')
    <style>
        .color-green {
            color: #6ab742;
        }

        .btn-color-green {
            background: #28a745;
        }

        .bg-grey-alt {
            background: #313335;
        }

        .btn-color-red{
            background-color: #CF202F;
        }
        .btn-color-red2{
            background-color: #af1a30;
        }
        .btn-color-red3{
            background-color: #cc4e49;
        }
        .btn-color-blue{
            background-color: #2b93ff;
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
                                            <div class="card-header-azul-price" style="position: absolute; background-color: #CF202F;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                        <h5 class="text-center" style="color: #CF202F; font-size: 28px;"><del>{{$membresia->price}} USD/Mes</del></h5>
                                                        <h4 class="card-price text-success mt-2 p-1 text-center" style="font-weight: bold; font-size: 34px;">{{$membresia->descuento}} USD/Mes</h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="p-2 text-white text-center">Esta membresía es para los amantes del aprendizaje </h5><br>
                                                <h5 class="text-white text-center"><strong class="text-azul-claro">Podrás conectarte a todo el contenido en vivo, solo en formato de streaming</strong></h5><br>
                                                <h5 class="text-white text-center">Tendrás acceso a:</h5>
                                                <h4 class="text-center" style="color: #CF202F;">+ 2 LIVE STREAMING <br> AL MES</h4>
                                                <h4 class="pb-4 card-price text-success text-center" style="font-size: 40px;"><del style="font-size: 28px; color: red;">{{$membresia->price_annual}} USD</del><br> {{$membresia->discount_annual}}<span style="font-size: 35px;"> USD/Anual</span></h4>
                                                    
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-red text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-blue text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-azul-claro">2 STREAMING + CONTENIDO VIP
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
                                            <div class="card-header-orange-price" style="position: absolute; background-color: #af1a30 !important;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                        <h5 class="text-center" style="color: #af1a30; font-size: 28px;"><del>{{$membresia->price}} USD/Mes</del></h5>
                                                        <h4 class="card-price text-success mt-2 p-1 text-center" style="font-weight: bold; font-size: 34px;">{{$membresia->descuento}} USD/Mes</h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="text-white text-center">Esta membresía es para los que quieren recibir y compartir conocimiento con nuestra red general de mentores y afiliados.</h5><br>
                                                <h5 class="text-white text-center"><strong class="text-azul-claro">Disfrutarás de todo el contenido de este nivel y del anterior</strong></h5>
                                                <h4 class="text-center" style="color: #af1a30;">+ 4 LIVE STREAMING <br> AL MES</h4>

                                               <h4 class="pb-4 card-price text-success text-center" style="font-size: 40px;"><del style="font-size: 28px; color: red;">{{$membresia->price_annual}} USD</del><br> {{$membresia->discount_annual}}<span style="font-size: 35px;"> USD/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-red2 text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-blue text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-azul-claro">4 STREAMING + CONTENIDO VIP
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
                                            <div class="card-header-verde-price" style="position: absolute; background-color: #cc4e49 !important;">
                                                <h1 class="card-title text-white text-uppercase text-center" >{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                        <h5 class="text-center" style="color: #cc4e49; font-size: 28px;"><del>{{$membresia->price}} USD/Mes</del></h5>
                                                        <h4 class="card-price text-success mt-2 p-1 text-center" style="font-weight: bold; font-size: 34px;">{{$membresia->descuento}} USD/Mes</h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="text-white text-center">Esta membresía te permite además de acceder a los beneficios de los niveles anteriores, también tendrás una sala exclusiva para tu contenido e impulso comercial por parte de FTX LIVE + Proyección con nuestro Partner de MBA Pro. </h5>
                                                <h5 class="text-center"><strong class="text-azul-claro">Accederás:</strong></h5>
                                                <h4 class="text-center" style="color:  #cc4e49;">+ 6 LIVE STREAMING <br> AL MES</h4>

                                                <h4 class="pb-4 card-price text-success text-center" style="font-size: 40px;"><del style="font-size: 28px; color: red;">{{$membresia->price_annual}} USD</del><br> {{$membresia->discount_annual}}<span style="font-size: 35px;"> USD/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-red3 text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-blue text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-azul-claro">6 STREAMING + CONTENIDO VIP
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
