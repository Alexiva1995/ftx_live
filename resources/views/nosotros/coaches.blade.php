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
