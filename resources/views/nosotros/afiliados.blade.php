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

   <div class="container-fluid img-background-razones">
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

   <div class="col-md-12" style="background-color: #F5F5F5;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h1 class="text-danger font-weight-bold">Comisiones Afiliados</h1>
      </div>   
   </div>

   <div class="container-fluid" style="background-color: #F5F5F5;">
	   <div class="row">
		   <div class="col-md-12 offset-md-1">
			   <div class="row ml-4 mr-4">
				   <div class="col-md-2 pl-0 pr-0">
                  <div class="card card-comisiones" style="background-color: #cc3333!important;">
                     <div class="card-body text-center">
                        <h5 class="card-title text-white comisiones-card-title nivel-body">Nivel</h5>
                     </div>
                  </div>
				   </div>
				   <div class="col-md-10">
					   <div class="row">
						   <div class="col-md-3 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <h5 class="card-title text-danger comisiones-card-title">Membresía <br> del Ver</h5>
                              <hr class="com-line-blue">
                              <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                              <p class="card-text">Aplica sobre el costo preferencial</p>
                           </div>
                        </div>
						   </div>
						   <div class="col-md-3 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #cc3333!important;">
                           <div class="card-body text-center">
                              <h5 class="card-title text-white comisiones-card-title">Membresía <br>del Dar</h5>
                              <hr class="com-line-white">
                              <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                              <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                           </div>
                        </div>
						   </div>
						   <div class="col-md-3 pl-0 pr-0">
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
	   </div>
   </div>

   <div class="col-md-12" style="background-color: #EDEDED;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h4 style="color:#818181;letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido.<br> o si lo paga mensual , anual o vitalicio.</h4>
      </div>
   </div>

    <div class="col-md-12" style="background-color: #fff;">
         <div class="col-md-8 offset-md-2" style="padding: 20px 15px 40px 15px; text-align: justify;">
            <h4>Te ofrecemos todo el conocimiento, el desarrollo de actitudes y las herramientas que necesitas para convertirte en un gran Speaker y Coach Master de FTX Live </h4>

            <h5>Si ya tienes la formación o experiencia en el medio de comunicación y manejo de equipos, pero ¿quieres obtener proyección internacional? Aquí encontrarás toda la información para digitalizar tus cursos y maximizar su alcance en línea.</h5>
            <h5><b>¡Haz negocio con nosotros! y ¡Súmate a nuestro equipo de entrenadores!</b></h5><br>

            <center><a type="button" class="btn btn-primary btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRATE AQUÍ</a></center><br>

            Con la atención y el cuidado que te mereces, valoraremos tu trabajo y sobre eso daremos seguimiento a algunas posibilidades. Pero para ello, requerimos que con la formalidad que se requiere, tengas consciencia de lo siguiente: <br>
            <ul>
               <li>FTX Live te ofrece una posibilidad, la cual necesita tú mayor compromiso, responsabilidad y colaboración.</li>   
               <li>Para nosotros es importante que el trabajo de todos sea valorado, por ello tenemos requisitos importantes, así como confianza en que podrás cumplir a cabalidad el objetivo que nos mueve como grupo, que sobre todo yace en la satisfacción de nuestro consumidor final, el impacto positivo que queremos dar al mundo y la trascendencia del material que ofrecemos, por ello nuestro compromiso en la calidad de todo nuestro modelo académico.</li>
               <li>Te ofrecemos la exposición internacional que siempre has soñado, apalancado de nuestra comunidad en más de 80 países y con la posibilidad de seguir creciendo por el mundo entero, le daremos un tratamiento impecable a cada material, contando con el mejor equipo técnico, operativo, logístico, administrativo y de creación de contenidos para que, sumado a extraordinarias locaciones, hagamos que expreses lo mejor de ti.</li>
            </ul>

            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <img src="https://ftxlive.com/office/nosotros/gratis-Blog/video1.jpg" class="card-img-top" alt="..." style="border: solid 0;">
                  <div style="background-color: #cc3333; color: white; padding-top: 12px; padding-bottom: 12px; text-align: center; font-weight: bold;">
                     <a href="#" data-toggle="modal" data-target="#video1" style="text-decoration: none; color: white;"><i class="fa fa-play-circle"></i> Testimonio de José Gordo</a>
                  </div>
               </div>
               <div class="col-md-2"></div>
            </div>
         </div>
      </div>

      <div class="col-md-12 pt-5" style="background: #cc3333;">
         <div class="new-courses-section-title mb-2">
            <h1 class="text-center font-weight-bold" style="color: white;">TESTIMONIOS</h1>
         </div>
         
         <!--Carousel Wrapper-->
         <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
               <li data-target="#multi-item-example" data-slide-to="0" class=""></li>
               <li data-target="#multi-item-example" data-slide-to="1" class="active"></li>
            </ol>
            <!--/.Indicators-->

            <!--Slides-->
            <div class="carousel-inner" role="listbox">
               <!--First slide-->
               <div class="carousel-item">
                  <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante1.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante2.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante3.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                  </div><!--END ROW-->
               </div><!--/.First slide-->

               <!--Second slide-->
               <div class="carousel-item active">
                  <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante1.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante2.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante3.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                  </div><!--END ROW-->
               </div><!--/.Second slide-->
            </div>
         </div>
      </div>

      <div class="col-md-12" style="background-color: #EDEDED;">
         <div class="col-md-8 offset-md-2" style="padding: 30px 20px; text-align: center;">
            <h5 style="color:#818181;">
               Por supuesto y además del valor simbólico que le damos a tu trabajo, también lo retribuimos económicamente, ofreciéndote hasta un <span style="color: #cc3333;">10% del valor de cada membresía</span>.<br><br>
            
               <b>COMISIONES DE NUESTROS TALENTOS</b>
            </h5>

            <table class="table table-bordered">
               <thead>
                  <th>* Nivel</th>
                  <th>Membresía del Ver</th>
                  <th>Membresía del Dar</th>
                  <th>Membresía del Ganar</th>
               </thead>
               <tbody>
                  <tr>
                     <td></td>
                     <td colspan="3">
                        <span style="color: red; font-weight: bold;">
                           10% DE COMISION POR CADA MEMBRESÍA<br><br>
                           Aplica sobre el costo preferencial <br><br>
                        </span>
                        <span style="color: #2A91FF;">
                           o si lo paga mensual , anual o vitalicio. 
                        </span>
                     </td>
                  </tr>
               </tbody>
            </table>

         </div>
      </div>

      <div class="col-md-12" style="background-color: #fff;">
         <div class="col-md-8 offset-md-2" style="padding: 20px 15px 40px 15px; text-align: justify;">
            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <img src="{{ asset('nosotros/afiliados/live-streaming.jpg') }}" class="card-img-top" alt="..." style="border: solid 0;">
               </div>
               <div class="col-md-2"></div>
            </div>

            <br>
            <h4>Haremos producciones a lo largo de todo el mundo y presentaremos a los mejores coaches para tu formación y desarrollo. <br>
            Personas que tengan toda el conocimiento y experiencia para ofrecerte valor en lo que sea que quieras desarrollar.</h4>

            <h5>Pero ¿Qué temas puedo encontrar en FTX Live?</h5>
            <ul>
               <li><b>Desarrollo Humano</b></li>   
               <li><b>Finanzas</b></li>
               <li><b>Ventas</b></li>
               <li><b>Emprendurismo</b></li>
               <li><b>Fintech</b></li>
               <li><b>Real Estate </b></li>
               <li><b>Enseñanza Aprendizaje</b></li>
               <li><b>Bienestar Integral</b></li>
            </ul>

            Si tienes algún tema de valor que ofrecernos, envíanos tu propuesta y con gusto nuestro comité de talentos medirá y expondrá las posibilidades que podemos ofrecerte a través de un proceso formal de varios filtros, porque como ya lo mencionamos, nuestra principal preocupación es la calidad de la información que ofrecemos, una vez que pase todas las validaciones, te contactaremos por teléfono y correo a los datos que nos dejaste en tu formulario para proceder con una entrevista online y coordinar detalles de relación comercial, derechos de uso, producción y post producción.<br>

            <center>
               <a type="button" class="btn btn-primary btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRATE AQUÍ</a><br><br>

               <b>Solicitamos tu empatía y paciencia durante el proceso, contamos con muchas solicitudes y el trabajo de todos es importante. 

               Esperamos pronto sumarte a nuestro equipo de talentos.</b>
            </center>

         </div>
      </div>

   <div class="modal fade" id="video1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Testimonio de José Gordo</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"> 
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="embed-responsive embed-responsive-16by9">
                  <video src="{{ asset('nosotros/videos/introduccion.mp4') }}" controls poster="{{ asset('nosotros/gratis-Blog/video1.jpg') }}"></video>
               </div>
            </div>
         </div>
      </div>
   </div>

@endsection
