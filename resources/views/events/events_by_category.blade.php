@extends('layouts.landing')
@push('scripts')
@endpush


@section('content')
<div class="col-md-12 "><span>
          <h6 class="mt-3" style="color:#707070; ">
            <span>Eventos > </span>
            @if (!is_null ($category_name)) <span> {{ $category_name->title }} @else Búsqueda @endif</span>
          </h6>
          <hr style="border: 1px solid #707070;opacity: 1;" />
       </div>
    <div class="container-fluid">

        <div class="col mb-4 mt-4">
            <div class="title-page-course col-md"><span class="text-white">
                @if (!is_null ($category_name))
                    <h2>Eventos Online de<span class="text-danger"> "{{$category_name->title}}"</span></h2>
                @else
                    <h2>Eventos Online <span class="text-danger">relacionados</span></h2>
                @endif
            </div>
        </div>

        <div class="row">
            @if ($events->count() > 0)
                @foreach ($events as $event)
                <div class="col-md-3 mb-2" style="margin-top: 20px;">
                   @if($event->cover == null)
                    <img src="{{ asset('uploads/avatar/'.$event->mentor->avatar) }}" class="card-img-top" alt="..." >
                   @else
                     <img src="{{ asset('uploads/images/miniatura/'.$event->cover) }}" class="card-img-top" alt="..." >
                   @endif
                  <div class="card-img-overlay" style="margin-left: 10px; margin-right: 10px;">
                     <h6 class="card-title">{{$event->mentor->display_name}}</h6>
                  </div>

                  <div class="card-body" style="background-color: #25262B;">
                     <h6 class="card-title" style="margin-top: -15px;"><img src="{{ asset('images/icons/play-button.svg') }}" alt="" height="15px" width="15px">  {{$event->title}}</h6>
                     <h6 style="font-size: 10px; margin-left: 20px; margin-top: -10px;">{{$event->category->title}}</h6>
                  </div>
               </div>
                @endforeach
            @else
            <div class="container-fluid">
                <h4 class="text-white">
                    No se encontraron eventos relacionados con la búsqueda...
                </h4>
            </div>

            @endif
        </div>
    </div>


@endsection
