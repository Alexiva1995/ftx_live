@extends('layouts.landing')

@push('styles')
   <style>
      .card-testimonios {
         background: #FFFFFF 0% 0% no-repeat padding-box !important;
         border-radius: 30px!important;
         opacity: 1;
      }
   </style> 
@endpush

@section('content')
    <div class="banner-coaches">
        <img src="{{ asset('nosotros/afiliados/header.jpg') }}" class="w-100" alt="...">

        <div class="banner-coaches-text">
            <div class="row">
                <div class="col-12 mt-5 text-center">
                    <img src="{{ asset ('images/FTXlive-logo.png')}}"  class="banner-coaches-logo">
                </div>
                <div class="col-12 mt-5 text-center text-white pt-4"">
                    Te damos la bienvenida a uno de los  mejores y más geniales programas de marketing de Afiliados del mundo
                </div>
                <div class="col-12 mt-3 text-center">
                    <img src="{{ asset ('images/line-red.png')}}" class="banner-coaches-line">
                </div>
            </div>
        </div>
    </div>

    <div style="background-color: #F5F5F5; padding: 20px 5%; text-align: center;">
        <div>
        <h1 class="text-danger font-weight-bold">Comisiones Afiliados</h1>
        </div>

        <div class="row p-5">
            <div class="col-xl-2 col-lg-2 col-12 pl-0 pr-0">
                <div class="card card-comisiones" style="background-color: #B70F1E!important; height: 100px;">
                    <div class="card-body text-center">
                        <h5 class="card-title text-white comisiones-card-title nivel-body">Nivel</h5>
                    </div>
                </div>
            </div>
            <div class="col-xl-10 col-lg-10 col-12">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-danger comisiones-card-title">Membresía <br> del Ver</h5>
                                <hr class="com-line-blue">
                                <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #B70F1E!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title">Membresía <br> del Dar</h5>
                                <hr class="com-line-white">
                                <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-danger comisiones-card-title">Membresía <br>  del Ganar</h5>
                                <hr class="com-line-blue">
                                <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="padding: 5% 25%; text-align: center;">
        <h4 style="color: white; letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido o si lo paga mensual, anual o vitalicio.</h4>
    </div>

    <div class="pb-5" style="background-color: white; text-align:center;">
        <div style="padding: 5% 25%; font-size: 22px; line-height: 30px; font-weight: 400; color:#696969;">
            Por supuesto y además del valor simbólico que le damos a tu trabajo, también lo retribuimos económicamente, ofreciéndote hasta un 10% del valor de cada membresía.
        </div>

        <div class="row pl-5 pr-5 ml-5 mr-5">
            <div class="col-xl-2 col-lg-2 col-12">
                <div class="card card-comisiones" style="background-color: #F2F2F2!important; height: 100px;">
                    <div class="card-body text-center">
                        <h5 class="card-title comisiones-card-title nivel-body" style="color: #1C1E21; font-weight: bold;">Nivel</h5>
                    </div>
                </div>
            </div>
            <div class="col-xl-10 col-lg-10 col-12">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #B70F1E!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title" style="font-weight: bold;">Membresía <br> del Ver</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #F2F2F2!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title comisiones-card-title" style="color: #1C1E21; font-weight: bold;">Membresía <br> del Dar</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #B70F1E!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title" style="font-weight: bold;">Membresía <br> del Ganar</h5>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="row pl-5 pr-5 ml-5 mr-5 pt-3">
            <div class="col-xl-2 col-lg-2 col-12"></div>
            <div class="col-xl-10 col-lg-10 col-12 p-3" style="background-color: #F2F2F2; border-radius: 0px 0px 15px 15px !important;">
                <div style="font-size: 26px; font-weight: 500; color: #1C1E21;">10% DE COMISIÓN POR CADA MEMBRESÍA</div>

                <div class="mt-1" style="font-size: 20px; font-weight: bold; color: #1C1E21;">Aplica sobre el costo preferencial</div>

                <div class="mt-4" style="font-size: 20px; font-weight: 400; color: #B70F1E">O si lo paga mensual, anual o vitalicio</div>
            </div>
        </div>
    </div>
@endsection
