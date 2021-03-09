@extends('layouts.landing')

@section('content')

   <div class="container-fluid courses-slider" style="background-color: #fff;">
      <div class="container-fluid courses-slider">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                  <img src="{{ asset('uploads/entradas/'.$articulo->banner) }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption row align-items-center">
                     <div class="col-md-12 blog-title-two font-weight-bold">{{$articulo->titulo}}</div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div class="container pl-5 pr-5">
         <div class="row justify-content-md-center">
            <div class="col-md-4 mt-3 text-center"></div>
            <div class="col-md-4 mt-3 text-center">
               <div>
                  <img src="{{ asset('uploads/entradas/'.$articulo->imagen_destacada) }}" class="card-img" alt="...">
               </div>
               <div class="new-course-title pb-1 mb-3" style="background-color: #333; color: #2A91FF; font-size:30px; text-align: center;">
                  {!! $articulo->autor !!}
               </div>
            </div>
             <div class="col-md-4 mt-3 text-center"></div>
            <div class="col-md-12 mt-2">{!! $articulo->descripcion_completa !!}</div>
         </div>
      </div>
   </div>
@endsection
