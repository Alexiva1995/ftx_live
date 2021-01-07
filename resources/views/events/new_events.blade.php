@extends('layouts.landing')

@section('content')

<div class="section-landing" style="background: linear-gradient(to bottom, #222326 50%, #1C1D21 50.1%);">
      <div class="col">
         <div class="text-white mt-4" style="padding-bottom: 35px; text-align:center;"> <h2>LO MÁS NUEVOS</h2>
         <hr width="70" style="height: 5px;text-align:center;background-color: #CF202F;">
        </div>
      </div>
      @if($new_events->isNotEmpty())
      @foreach($categories as $category)
      @if($category->events_count>0 && $category->events[0]->status ==1)
      <h3 class="text-white text-center">{{$category->title}}</h3>
      <hr width="70" style="height: 5px;text-align:center;background-color: #CF202F;">
      @endif
      <div class="row">
        @foreach($category->events as $event)
                @if($event->status == 1)
               <div class="col-md-3" style="margin-top: 20px;">
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
               @endif
      @endforeach
      </div>
      @endforeach
      
      @endif
   </div>

@endsection