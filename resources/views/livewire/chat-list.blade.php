<div style="overflow: hidden !important; height:400px;" class="d-flex align-items-end col-12">
    <div class="row">
        @foreach ($mensajes as $mensaje)
            @if ($mensaje['user_id'] == Auth::user()->id)
                <div class="alert p-1 col-10 offset-2" style="background-color: #F37D88; border-radius: 15px 15px 0px 15px; -moz-border-radius: 15px 15px 0px 15px; -webkit-border-radius: 15px 15px 0px 15px;
border: 2px solid #F37D88;" role="alert">
            @else
                <div class="alert p-1 col-10" style="background-color: #545762; border-radius: 15px 15px 15px 0px; -moz-border-radius: 15px 15px 15px 0px; -webkit-border-radius: 15px 15px 15px 0px;
border: 2px solid #545762;" role="alert">
            @endif
                <h5 class="nombre-jd">
                    <img src="{{ asset($mensaje['avatar']) }}" alt="" class="rounded-circle logo-username-green">
                    {{$mensaje['usuario']}} 
                </h5>
                <span class="ml-2">
                    {!! $mensaje['mensaje'] !!}
                </span>
            </div>
        @endforeach
    </div>
</div>
