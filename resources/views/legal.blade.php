@extends('layouts.landing')

@push('styles')
    <style>
        .legal-titles{
            font-size: 30px; 
            font-weight: bold;
        }
        .legal-text{
            font-size: 18px; 
            font-weight: 400;
        }
        .item-li{
            background-color: white;
        }
        .item-li .nav-link{
            color: #B70F1E !important;
        }
        .nav-pills .item-li .nav-link.active, .nav-pills .show>.nav-link {
            color: #fff !important;
            background-color:#B70F1E !important;
        }
        .legal-item{
            background-color: #212529;
            border:  1px solid gray;
            font-size: 14px;
            font-weight: 500;
            color:  gray;
        }
        .list-group-legal{
            width: 15%;
            position: fixed; 
            /*z-index: 1000;*/
        }
        .tab-pane{
            text-align: justify;
        }
    </style>
@endpush

@push('scripts')
    <script>
        //Cuando cargue la página completamente
        $(document).ready(function(){
            console.log($("#section-paises").offset().top);
            //Creamos un evento click para el enlace
            $(".ancla").click(function(evento){
                //Anulamos la funcionalidad por defecto del evento
                evento.preventDefault();
                //Creamos el string del enlace ancla
                var codigo = "#" + $(this).data("ancla");
                //Funcionalidad de scroll lento para el enlace ancla en 3 segundos
                $("html,body").animate({scrollTop: $(codigo).offset().top - 100}, 2000);
            });
            $(window).scroll(function(event) {
                var paisesTop = $("#section-paises").offset().top - 415;
                var scrollTop = $(window).scrollTop();

                if (scrollTop > paisesTop){
                    $(".list-group-legal").css('display', 'none');
                }else{
                    $(".list-group-legal").css('display', 'block');
                }
            });
        });
    </script>
@endpush
@section('content')
    
    <div class="panel with-nav-tabs panel-primary">
        <div class="panel-heading">
            <ul class="nav nav-pills nav-fill m-3">
                @php $cont = 0; @endphp
                @foreach ($tabs as $tab)
                    @php $cont++; @endphp
                    <li class="nav-item item-li"><a class="nav-link @if ($cont == 1) active @endif" href="#tab-{{$tab->id}}" data-toggle="tab"><b>{{ $tab->title }}</b></a></li>
                @endforeach
            </ul>
        </div>
        <div class="panel-body">
            <div class="tab-content section-landing">
                @php $cont2 = 0; @endphp
                @foreach ($tabs as $tab2)
                    @php $cont2++; @endphp
                    <div class="tab-pane @if ($cont2 == 1) active @endif pt-2 pb-2 pr-2 pl-2" id="tab-{{$tab2->id}}">  
                        <div class="row">
                            <div class="col-md-3 d-none d-lg-block d-xl-block">
                                <div class="list-group list-group-legal">
                                    @foreach ($tab2->legal_clauses as $clause)
                                        <a class="list-group-item legal-item ancla" href="#" data-ancla="tab-{{$tab2->id}}-clause-{{$clause->id}}">{{ $clause->title }}</a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-md-9">
                                @foreach ($tab2->legal_clauses as $clause2)
                                    <div class="legal-titles" id="tab-{{$tab2->id}}-clause-{{$clause2->id}}">{{ $clause2->title }}</div>
                                    <div class="mt-2 legal-text">
                                       {!! $clause2->clause !!}
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection