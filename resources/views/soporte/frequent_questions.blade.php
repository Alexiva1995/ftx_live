@extends('layouts.dashboardnew')

@section('content')
   <div class="col-xs-12">
      <h2 class="white font-weight-bold">Preguntas más frecuentes</h2><hr>
      <div style="float:right;">
         @if(Auth::user()->rol_id == 0)
            <a href="{{route('soporte.tickets.team')}}" class="btn btn-danger"><i class="fas fa-ticket-alt"></i> Tickets/Soporte</a>
            <a href="{{route('soporte')}}" class="btn btn-danger"><i class="fas fa-arrow-circle-left"></i> Volver al menú principal</a>
         @else
            <a href="{{route('soporte.tickets')}}" class="btn btn-danger"><i class="fa fa-plus-circle"></i> Crear ticket</a>
            <a href="{{route('soporte')}}" class="btn btn-danger"><i class="fas fa-arrow-circle-left"></i> Volver al menú principal</a>
         @endif
      </div><br><br><br>
   </div>

   <div id="accordion">
      <div class="card accordion-academy">
         <div class="card-header" id="heading-1">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;1. ¿Cuánto tiempo dura la membresía?
               </button>
            </h5>
         </div>
         <div id="collapse-1" class="collapse" aria-labelledby="heading-1" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Tenemos dos tipos de período en las membresía, mensual o anual, aquí puedes elegir la mas favorable para ti:<br><br>
               <a href="https://ftxlive.com/office/shopping-cart/memberships">https://ftxlive.com/office/shopping-cart/memberships</a>
            </div>
         </div>

         <div class="card-header" id="heading-2">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-2" aria-expanded="true" aria-controls="collapse-2" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;2. ¿Puedo acceder a cursos y streamings a la vez?
               </button>
            </h5>
         </div>
         <div id="collapse-2" class="collapse" aria-labelledby="heading-2" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Si, podrás disfrutar de todas las grabaciones disponibles en la membresía que escojas y a los streamings que desees participar incluídos en tu membresía.
            </div>
         </div>

         <div class="card-header" id="heading-3">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-3" aria-expanded="true" aria-controls="collapse-3" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;3. ¿Puedo ver varias grabaciones a la vez?
               </button>
            </h5>
         </div>
         <div id="collapse-3" class="collapse" aria-labelledby="heading-3" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Si, podrás acceder a todas las grabaciones disponibles en tu membresía y tomar varias al mismo tiempo si lo deseas.
            </div>
         </div>

         <div class="card-header" id="heading-4">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-4" aria-expanded="true" aria-controls="collapse-4" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;4. ¿Cómo gano a través de FTXLIVE?
               </button>
            </h5>
         </div>
         <div id="collapse-4" class="collapse" aria-labelledby="heading-4" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Siendo Miembro podrás participar como afiliado o como Coach, aquí mas detalles.<br><br>

               Gana como afiliado<br>
               <a href="https://ftxlive.com/office/afiliados">https://ftxlive.com/office/afiliados</a><br><br>
               Gana como Coach
               <a href="https://ftxlive.com/office/afiliados/coaches">https://ftxlive.com/office/afiliados/coaches</a>
            </div>
         </div>

         <div class="card-header" id="heading-5">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-5" aria-expanded="true" aria-controls="collapse-5" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;5. ¿Cómo recibo mis comisiones?
               </button>
            </h5>
         </div>
         <div id="collapse-5" class="collapse" aria-labelledby="heading-5" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               En tu perfil de miembro podrás agregar tu número de cuenta bancaria para transferir tus ganancias generadas.
            </div>
         </div>

         <div class="card-header" id="heading-6">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-6" aria-expanded="true" aria-controls="collapse-6" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;6. ¿De qué forma puedo promover las grabaciones y membresía de FTXLIVE?
               </button>
            </h5>
         </div>
         <div id="collapse-6" class="collapse" aria-labelledby="heading-6" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Tendrás un link personalizado para promover que encontrarás en el escritorio de tu backoffice.<br>
               Una vez registrado y activo podrás ir a <a href="https://ftxlive.com/office/admin">https://ftxlive.com/office/admin</a>
            </div>
         </div>

         <div class="card-header" id="heading-7">
            <h5 class="mb-0">
               <button class="btn btn-link" data-toggle="collapse" data-target="#collapse-7" aria-expanded="true" aria-controls="collapse-7" style="color: white;">
                  <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20"> &nbsp; &nbsp;7. ¿Puedo invitar y referir personas de cualquier país del mundo?
               </button>
            </h5>
         </div>
         <div id="collapse-7" class="collapse" aria-labelledby="heading-7" data-parent="#accordion">
            <div class="card-body" style="padding-left: 30px; padding-right: 30px;">
               Si, usando tu link de referido podrás compartir todos los beneficios de mbapro a través de redes sociales, whatsApp y/o email.
            </div>
         </div>
      </div>
   </div>

@endsection
