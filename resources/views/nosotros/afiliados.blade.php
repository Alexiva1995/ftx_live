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
   <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <div class="col-md-8 offset-md-2" style=" text-align: center;">
         <h3>El programa de <b class="text-danger">FTX Live</b> te ayuda a que ganes dinero por aprender.</h3>
      </div>
   </div>

   <div class="col-md-12 py-5" style="background-color: #cc3333;">
      <div class="row  d-flex align-items-center">
         <div class="col-md-6">
            <img src="{{ asset('nosotros/afiliados/responsive.png') }}" class="img-fluid" alt="...">
         </div>
         <div class="col-md-6">
            <h3 class="text-white text-center">Nuestro modelo se basa en el marketing de recomendación.</h3>
            <h5 class="text-white pt-2">Esta confirmado por múltiples y reconocidas firmas auditoras y de análisis de mercados globales, que el 95% de los consumidores confía en las recomendaciones de amigos y familiares y un 80% tiene mejor disposición de compra cuando recibe información a través de personas que conoce. Por eso, cada vez son más las empresas que han digitalizado esta técnica para ganar eficiencia, reducir en costes y conseguir más atención entre los clientes potenciales.</h5>
         </div>
      </div>
   </div>

   <div class="container-fluid py-5" style="background-color: #F5F5F5;">
      <div class="col-md-8 offset-sm-0 offset-md-2 mb-4">
         <h3 class="text-center">El funcionamiento de esta nueva plataforma es sencillo. El usuario sigue <b class="text-danger">5 sencillos pasos:</b></h3>
      </div>
	   <div class="row">
		   <div class="col-md-12 offset-md-1">
			   <div class="row ml-4 mr-4">
				   <div class="col-md-10">
					   <div class="row">
						   <div class="col-md-4">
                        <div class="card card-comisiones-two" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <img src="{{ asset('nosotros/afiliados/1.png') }}" alt="" height="50px" width="50px">
                              <p class="card-text"><b>Registrate</b> (No olvides poner en donde quieres que paguemos tus ganancias)</p>
                           </div>
                        </div>
						   </div>
						   <div class="col-md-4 mt-2">
                        <div class="card card-comisiones-two" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <img src="{{ asset('nosotros/afiliados/2.png') }}" alt="" height="50px" width="50px">
                              <p class="card-text">Selecciona su <b>membresía</b> y medio de pago</p>
                           </div>
                        </div>
						   </div>
   						<div class="col-md-4 mt-2">
                        <div class="card card-comisiones-two" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <img src="{{ asset('nosotros/afiliados/3.png') }}" alt="" height="50px" width="50px">
                              <p class="card-text">Disfruta de su contenido</p>
                           </div>
                        </div>
   						</div>
					   </div>
				   </div>
			   </div>
            <div class="row m-4">
   				<div class="col-md-10">
   					<div class="row">
   						<div class="col-md-4 mt-2">
                        <div class="card card-comisiones-two" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <img src="{{ asset('nosotros/afiliados/4.png') }}" alt="" height="50px" width="50px">
                              <p class="card-text"><b>Recomienda</b> el que más te guste con su link de referido</p>
                           </div>
                        </div>
   						</div>
   						<div class="col-md-4 mt-2">
                        <div class="card card-comisiones-two" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <img src="{{ asset('nosotros/afiliados/5.png') }}" alt="" height="50px" width="50px">
                              <p class="card-text">Empieza a ganar</p>
                           </div>
                        </div>
   						</div>
   					</div>
   				</div>
   			</div>
		   </div>
	   </div>
   </div>

   <div class="container-fluid img-background-razones pb-5">
      <div class="col-md-8 offset-md-2 py-5" style="text-align: center;">
         <h3 class="text-white">¿Por qué miles de personas ya eligieron el Programa de <b class="text-white">Afiliados de FTX Live?</b></h3>
      </div>

      <div class="col-md-6 offset-md-4">
         <h2 class="text-danger font-weight-bold d-flex align-items-center"><b class="text-danger" style="font-size: 80px;">5</b> Beneficios exclusivos</h2>
      </div>
      <div class="row">
         <div class="col-lg-4 offset-md-2">
      		<div class="box-title mt-2">
      			<h1 class="text-danger font-weight-bold" style="font-size: 60px;">01</h1>
      		</div>
            <div class="box-text p-2">
               <h5 class="text-white"> Podrás tener reuniones programadas e instantáneas</h5>
            </div>
            <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #cc3333;">
         </div><!--Box end-->
         <div class="col-lg-4 offset-md-1 seccion-razones">
				<div class="box-title mt-2">
					<h1 class="text-danger font-weight-bold" style="font-size: 60px;">02</h1>
				</div>
				<div class="box-text p-2">
					<h5 class="text-white">Opciones de personalización a tu reunión</h5>
            </div>
            <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #cc3333;">
         </div><!--Box end-->
      </div><!--Row end-->
      <div class="row">
         <div class="col-lg-4 offset-md-2">
            <div class="box-title">
               <h1 class="text-danger font-weight-bold" style="font-size: 60px;">03</h1>
            </div>
            <div class="box-text p-2">
               <h5 class="text-white">Chat en vivo e interacción en vivo</h5>
            </div>
            <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #cc3333;">
         </div><!--Box end-->

         <div class="col-lg-4 offset-md-1 seccion-razones">
				<div class="box-title">
					<h1 class="text-danger font-weight-bold" style="font-size: 60px;">04</h1>
				</div>
				<div class="box-text p-2">
               <h5 class="text-white">Uso compartido de archivos en tiempo real</h5>
            </div>
            <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #cc3333;"> 
         </div><!--Box end-->
      </div><!--Row end-->

      <div class="row">
         <div class="col-lg-4 offset-md-2">
            <div class="box-title">
               <h1 class="text-danger font-weight-bold" style="font-size: 60px;">05</h1>
            </div>
            <div class="box-text p-2">
               <h5 class="text-white">Si eres instructor o líder de red, podrás facilitar tu mentoría a tu red de forma sencilla y lo mejor, monetizarla también.</span>
            </div>
            <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #cc3333;">
         </div><!--Box end-->
      </div>
   </div>

@endsection
