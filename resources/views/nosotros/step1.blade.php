@extends('layouts.landing')

@push('styles')
    <style>
    .containerscale:hover{
        transform: scale(1.1);
        z-index: 9;
       }
    
    .aumento{
       font-weight: 700;
       font-size: 18px;
    }
    </style>
@endpush

@section('content')

   <div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <img src="{{ asset('nosotros/nosotros/nosotros.png') }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption">
                     <div class="col-md-8 offset-md-4">
                        <div class="estilobusiness">FTX LIVESTREAMING</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

<div class="col-md-12" style="background-color: #EDEDED;">
   <div class="col-md-8 offset-md-2 first-section-nosotros">
  <h3>Somos el mejor espacio de entrenamientos en vivo para emprendedores y empresarios.</h3>
   </div>
  </div>


  <div class="card mb-3" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
            <div class="col-md-6 second-section-nosotros-text">
                <div class="card-body">
                     <h4 class="card-title text-center">Nuestra propuesta de valor se distingue por ofrecer:</h4>
                     <p class="mt-4 card-title align-items-center d-flex justify-content-center text-center"> Información de primer nivel y en tiempo real, así como motivación para aprender de forma sencilla y herramientas precisas para que se ponga en práctica el conocimiento adquirido en cada uno de los eventos y transmisiones que tengamos. </p>
                </div>
            </div>
                <div class="col-md-6" style="min-height: 300px; background-image: url('{{ asset('nosotros/nosotros/02.jpg') }}'); background-size: cover; background-position: top;">
                </div>
        </div>
    </div>

  <div class="col-md-12" style="background-color: #1C1D21; margin-bottom: 40px;">
    <div class="col-md-8 offset-md-2" style="margin-top: 50px;">
      <div class="card" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
            <div class="col-md-4" style="min-height: 200px; background-image: url('{{ asset('nosotros/nosotros/03.jpg') }}'); background-size: cover; background-position: top;">
            </div>
            <div class="col-md-4 nosotros-text" style="background-color: #CF202F; text-align: center; color: #fff;">
              <p class="mt-2" style="padding: 30px 30px;">Formamos parte de un grupo de empresas digitales y de alcance global, dedicadas a la educación y el desarrollo de emprendedores y empresarios</p>
            </div>
             <div class="col-md-4" style="min-height: 200px; background-image: url('{{ asset('nosotros/nosotros/04.jpg') }}'); background-size: cover; background-position: top;">
            </div>
        </div>
      </div>

      <!--<div class="card" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
           <div class="col-md-4">
              <img src="{{ asset('nosotros/nosotros/05.jpg') }}" class="card-img" alt="...">
           </div>
          <div class="col-md-8 nosotros-text" style="background-color: #fff;">
            <div class="card-body row align-items-center justify-content-center">
               <p class="card-text" style="padding: 30px 30px; font-weight: 400; font-size: 19px;">5 niveles de aprendizaje: desde el principiante, básico o intermedio para introducirte al fascinante mundo de las finanzas, hasta el avanzado y pro, que te llevan a lograr resultados extraordinarios.</p>
            </div>
          </div>
         </div>
       </div>
       <div class="card mb-3" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
          <div class="col-md-8 nosotros-text" style="background-color: #fff;">
            <div class="card-body row align-items-center">
               <p class="card-text" style="padding: 30px 30px; font-weight: 400; font-size: 19px;">Se cuenta con múltiples módulos y varias lecciones que cubren el concepto y contexto total del fascinante mundo Fintech, incluyendo sus diferentes campos de acción, como el forex, real estate y muchos otros.</p>
            </div>
          </div>
           <div class="col-md-4">
              <img src="{{ asset('nosotros/nosotros/06.jpg') }}" class="card-img" alt="...">
           </div>
         </div>
       </div>
       <div class="card mb-3" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
           <div class="col-md-4">
              <img src="{{ asset('nosotros/nosotros/07.jpg') }}" class="card-img" alt="...">
           </div>
          <div class="col-md-8 nosotros-text" style="color: #fff; background-color: #CF202F;">
            <div class="card-body row align-items-center">
               <p class="card-text" style="padding: 30px 30px; font-weight: 400; font-size: 17px;">Nuestro propósito es llevarte más allá de la riqueza, por ello no solo te hacemos crecer monetariamente, sino también personalmente, ofreciéndote mucho contenido de desarrollo personal y crecimiento integral como profesional.</p>
            </div>
          </div>
         </div>
       </div>-->

    </div>
</div>



<div class="container-fluid img-background-razones" style="padding:50px;">
<div class="col-md-8 offset-sm-0 offset-md-2 mb-4">
<h3 class="text-center"><b style="color: red; font-weight: 800; font-size: 35px;">NUESTRO ECOSISTEMA</b></h3>
</div>

    <div class="row">
         <div class="col-md-3 align-self-start mt-2 pt-4">
            <img src="{{ asset('nosotros/nosotros/mba.png') }}" class="card-img img-fluid logo-scale" alt="...">
            <img src="{{ asset('nosotros/nosotros/fentix-1.png') }}" class="mt-5 pt-5 card-img img-fluid logo-scale" alt="...">
            <img src="{{ asset('nosotros/nosotros/revolutte.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="..." style="width: 200px;">
         </div>
         <div class="col align-self-center mt-2">
            <img src="{{ asset('nosotros/nosotros/ftxl.png') }}" class="card-img img-fluid logo-rotate" alt="...">
         </div>
         <div class="col-md-3 mt-2 pt-4">
          <img src="{{ asset('nosotros/nosotros/mta-1.png') }}" class="card-img img-fluid logo-scale" alt="...">
          <img src="{{ asset('nosotros/nosotros/no-work-1.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="...">
          <img src="{{ asset('nosotros/nosotros/revolutte-real-state.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="..." style="width: 200px;">
         </div>
         <div class="col-md-12 text-center">
           <img src="{{ asset('nosotros/nosotros/revolutte-insurance.png') }}" class="card-img img-fluid logo-scale mt-3" alt="..." style="width: 200px;">
         </div>
      </div>
</div>



<div class="col-md-12" style="background-color: #1C1D21;">
     <div class="section-title-landing new-courses-section-title" style="text-align: center; padding: 30px; color: #CF202F;">
      <h2 style="font-weight: 800; font-size: 35px;">NUESTROS FUNDADORES</h2>
    </div>

    <div class="card" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
            <div class="col-md-6">
              <img src="{{ asset('nosotros/fundadores/josegordo.jpg') }}" style="width: 100%;">
            </div>
            <div class="col-md-6 align-items-center d-flex justify-content-center" style="color: #fff; background-color: #1c1d21;">
            <div class="card-body">

                <h3 class="card-title" style="text-align: right; color: white; font-size: 30px; font-weight: bold;">
                    JOSÉ GORDO
                </h3>

               <p class="card-text align-items-center d-flex justify-content-center" style="font-weight: 500; font-size: 16px; line-height: 1.6em; color: #CF202F; text-align: right;">
                Especialista en desarrollo de negocios rentables, sostenibles y de expansión global.
               </p>
               <p class="card-text align-items-center d-flex justify-content-center" style="text-align: right; line-height: 24px; font-weight: 500; font-size: 16px;">
                  15 años de experiencia en el mundo financiero, eterno aprendiz y emprendedor, amante de las finanzas, la innovación, y los proyectos de impacto social. <br>

                  Con la experiencia ganada a través los años y su pasión por el desarrollo personal y profesional de sus equipos de trabajo, ha creado diferentes técnicas de entrenamientos altamente efectivo, además de ser escritor y autor de 4 libros de negocios, 2 best seller.<br>

                  Empresario comprometido con la expansión del conocimiento, Fundador y Co-creador de: 
                  Fenttix, My Business Academy Pro, FTX Live y My Trading Academy Pro: La mejor comunidad de negocios y academias de aprendizaje para emprendedores digitales con red global.<br>

                  Sumado a un gran ecosistema de maravillosos productos y servicios, que apoyan a la generación de prosperidad y abundancia a través de la productividad y la educación.
                </p>
            </div>
          </div>
        </div>
    </div>


    <div class="card mb-3" style="max-width: 100%; margin-bottom: 0rem!important;">
        <div class="row no-gutters">
          <div class="col-md-6 align-items-center d-flex justify-content-center" style="color: #fff; background-color: #1c1d21;">
          <div class="card-body">

              <p class="card-title" style="text-align: left; color: white; font-size: 30px; font-weight: bold;">
                    TANIA TOSTADO
                </p>

               <p class="card-text align-items-center d-flex justify-content-center" style="font-weight: 500; font-size: 16px; line-height: 1.6em; color: #CF202F; text-align: left;">
                  Licenciada en Administración financiera con especialidad en finanzas corporativas.
               </p>
               <p class="card-text align-items-center d-flex justify-content-center" style="text-align: left; line-height: 24px; font-weight: 500; font-size: 16px;">
                 Ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC. Como consultora independiente, asesora a múltiples y reconocidas empresas en latinoamérica para hacer importantes transacciones con cifras de millones de dólares.</p>
            </div>
           </div>
            <div class="col-md-6">
              <img src="{{ asset('nosotros/fundadores/tania-tostado.jpg') }}" style="width: 100%;">
            </div>
          </div>
        </div>
    </div>


    <div class="col-md-12 py-5" style="background-color: #EDEDED;">
     <div class="section-title-landing new-courses-section-title" style="text-align: center; padding: 30px; color: #CF202F;">
      <h2 style="font-weight: 800; font-size: 35px;">NUESTROS ESPECIALISTAS</h2>
    </div>

<div class="col-md-10 offset-md-1">

    <div class="card" style="max-width: 100%;">
        <div class="row no-gutters">
          <div class="col-md-8" style="background-color: #EDEDED;">
              <div class="card-body">

               <p class="card-text" style="font-size: 30px; font-weight: bold;">Erick Reynaga</p>

               <p class="card-text" style="text-align: left; line-height: 24px; font-weight: 500; font-size: 16px;">Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México y es promotor de una Sociedad Financiera de Operación Múltiple en la que se operan diversas transacciones con crypto.</p>
            </div>
          </div>
          <div class="col-md-4" style="background-color: #EDEDED;">
              <img src="{{ asset('nosotros/nosotros/17.jpg') }}" class="card-img" alt="...">
              <div class="card-img-overlay d-flex flex-column" style="color: #fff; text-align: center;">
               <div class="mt-auto">
                  <div class="new-course-title" style="background-color: #333; padding: 8px; float: left; color: white;">
                    Erick Reynaga
                  </div>
                </div>
             </div>
           </div>
        </div>
    </div>

</div>

</div>

@endsection
