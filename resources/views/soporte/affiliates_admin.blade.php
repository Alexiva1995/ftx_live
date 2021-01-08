@extends('layouts.dashboardnew')

@push('script')
@endpush


<style>

ol {
    counter-reset: my-awesome-counter;
    list-style: none;
    padding-left: 40px;
  }
  ol li {
    margin: 0 0 0.5rem 0;
    counter-increment: my-awesome-counter;
    position: relative;
  }
  ol li::before {
    content: counter(my-awesome-counter);
    color: black;
    font-size: 2rem;
    font-weight: bold;
    position: absolute;
    --size: 32px;
    left: calc(-1 * var(--size) - 10px);
    line-height: var(--size);
    width: var(--size);
    height: var(--size);
    top: 0;
    transform: rotate(-10deg);
    background:#CF202F;
    border-radius: 50%;
    text-align: center;
    box-shadow: 1px 1px 0 #999;
  }
  .bg-red{
    background-color:#CF202F;
  }

  .bg-white{
    background-color:#fff;
  }

</style>

@section('content')


<div class="col-xs-12">
<h2 class="white font-weight-bold">Afiliados</h2><hr>
<div  style="float:right;">
    <a href="{{route('soporte')}}" class="btn btn-danger"><i class="fas fa-arrow-circle-left"></i> Soporte</a>
</div><br>
<h4 class="col-md-8 white">Te damos la bienvenida a <b class="text-danger">uno de los mejores y más geniales</b> programas de marketing de Afiliados del
mundo.</h4>


<h4 class="col-md-8 text-justify white">El programa de <b class="text-danger">FTX Live</b> te ayuda a que ganes dinero por aprender.
Contamos con cientos de cursos disponibles en <b class="text-danger">10 idiomas diferentes</b> , listos para que los compartas con un
solo click y puedas así ganar dinero a través de cada compra que recomiendes.</h4>

<div class="col-md-12">
    <div class="row">
        <div class="col-lg-6 d-flex align-items-stretch">
            <div class="card">
                <div class="card-header bg-red">
                    <h2 class="text-center" style="color:black;">REGISTRATE</h2>
                </div>
                <div class="card-body bg-white text-center card-aliados">
                <h4 class="card-text" style="padding: 10px; color: black;">
                    Intégrate a nuestra comunidad, aprende todo lo que necesitas para ser un emprendedor PRO y como miles de estudiantes alrededor del mundo regístrate a nuestro programa de Afiliados de MBA PRO y comienza a ganar dinero de inmediato.
                </h4>
                </div>
            </div>
        </div>
        <div class="col-lg-6 d-flex align-items-stretch">
            <div class="card">
                <div class="card-header bg-red">
                    <h2 class="text-center" style="color:black;">CAPACITATE</h2>
                </div>
                <div class="card-body bg-white text-center card-aliados">
                <h4 style="padding: 10px; color: black; margin-top: 10px; margin-bottom: 10px;">
                Te ofrecemos cientos de cursos para que puedas aprender lo mejor con los mejores Coaches y mentores.
                </h4>
                </div>
            </div>

        </div>
    
    </div>

</div>

<div class="col-md-12">
    <div class="row">
        <div class="col-lg-6 d-flex align-items-stretch">
            <div class="card">
                <div class="card-header bg-red">
                    <h2 class="text-center" style="color:black;">RECOMIÉNDANOS</h2>
                </div>
                <div class="card-body bg-white text-center card-aliados">
                <h4 class="card-text" style="padding: 10px; color: black;">
                Comparte los cursos que más te gusten con tus contactos. Contamos con herramientas de personalización de enlaces para ofrecerte seguridad y claridad en tus recomendaciones.
                </h4>
                </div>
            </div>
        </div>
        <div class="col-lg-6 d-flex align-items-stretch">
            <div class="card">
                <div class="card-header bg-red">
                    <h2 class="text-center" style="color:black;">GANA DINERO</h2>
                </div>
                <div class="card-body bg-white text-center card-aliados">
                <h4 style="padding: 10px; color: black; margin-top: 10px; margin-bottom: 10px;">
               
                    Gánate el 30% en comisiones por cada afiliado que se inscriba,  tu ganancia aumenta conforme el alumno vaya subiendo de nivel en su aprendizaje.

                </h4>
                </div>
            </div>

        </div>
    
    </div>

</div>

<h3 class="col-md-12 white mt-4">¿Por qué miles de personas ya eligieron el Programa de Afiliados de <b class="text-danger">FTX Live</b>?</h3>

<h1 class="col-md-4 text-danger">5 Beneficios exclusivos</h1>

<div class="col-md-12">
<ol class="col-md-8">
  <li class="white"><h4 style="line-height: 28px;">Podrás tener reuniones programadas e instantáneas</h4> </li><br>
  <li class="white"><h4 style="line-height: 28px;">Opciones de personalización a tu reunión</h4></li><br>
  <li class="white"><h4 style="line-height: 28px;">Chat en vivo e interacción en vivo</h4></li><br>
  <li class="white"><h4 style="line-height: 28px;">Uso compartido de archivos en tiempo real</h4></li><br>
  <li class="white"><h4 style="line-height: 28px;">Si eres instructor o líder de red, podrás facilitar tu mentoría a tu red de forma sencilla y lo mejor, monetizarla también.
</h4></li>
</ol>
</div>

<div class="col-md-12">
<h2 class="col-md-12 text-danger">Comisiones afiliados</h2>

<div class="col-md-12 table-responsive">
<table class="table">
  <thead class="bg-red">
    <tr>
      <th class="text-center">Nivel</th>
      <th class="text-center">Membresia del Ver</th>
      <th class="text-center">Membresia del Dar</th>
      <th class="text-center">Membresia del Ganar</th>
    </tr>
  </thead>
  <tbody class="bg-white">
    <tr>
      <th></th>
      <td class="text-center text-red" colspan="3"><h4><b>30% de comisión de Afiliación</b></h4>
      <br><h5><b>Aplica sobre el costo preferencial</b> </h5>
      <br><h5 style="color:black;"><b>y sin importar la categoría de la membresía se afilie tu referido.</b></h5>
      <br><h5 style="color:black;"><b>o si lo paga mensual , anual o vitalicio.</b></h5>
      </td>
    </tr>
  </tbody>
</table>

</div>
</div>

</div>

@endsection
