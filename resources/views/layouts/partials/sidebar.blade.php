@php
    $categoriasSidebar = \App\Models\Category::orderBy('id', 'ASC')->get();

    $banner = NULL;
    if (request()->is('/')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Home')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('shopping-cart/memberships')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Membresias')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('courses/all')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Cursos')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('nosotrosblog')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Nosotros')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('gratis')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Gratis')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('blog')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Blog')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('transmisiones')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Streaming')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('courses')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Mis Cursos')
                        ->orderBy('id', 'DESC')
                        ->first();
    }else if (request()->is('calendar')){
        $banner = \App\Models\Banner::where('status', '=', 1)
                        ->where('page', '=', 'Mis Eventos')
                        ->orderBy('id', 'DESC')
                        ->first();
    }

@endphp

<!-- Sidebar -->
<div class="bg-dark-gray" >
    <!--<div class="sidebar-heading border-right" style="border-bottom: solid white 1px; height: 70px;">
        <div class="row">
            <div class="col-4">
                <img src="{{ asset('images/FTXlive-logo.png') }}">
            </div>
        </div>
    </div>-->
    <div class="list-group list-group-flush list-sidebar">
        <a href="{{ route('index') }}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fa fa-home"></i> Home</a>
        @if(Auth::user())
        <a href="{{route('transmisiones')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fas fa-video"></i> Streaming</a>
        <a href="{{ route('schedule.calendar') }}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fas fa-calendar"></i> Mis Eventos</a>
        <!--<a href="{{ route('courses') }}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fas fa-user-circle"></i> Mis Cursos</a>-->
        <a href="{{url('/admin')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fas fa-user"></i> Backoffice</a>
        @endif
        <a href="{{route('shopping-cart.membership')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fa fa-shopping-bag"></i> Membresias</a>
        <a class="list-group-item bg-dark-gray" data-toggle="collapse" href="#searchDiv" style="color: white;"><i class="fa fa-search"></i> Explorar</a>
        <div class="collapse" id="searchDiv" style="padding-left: 10px; padding-right: 10px;">
            <form action="{{ route('search') }}" method="GET" class="form-inline d-flex justify-content-center md-form form-sm active-pink-2 mt-2">
                <input class="form-control form-control-sm w-75 border-0" type="text" placeholder="Buscar" aria-label="Buscar" id="search" name="q">
                <button class="btn btn-none border-0" type="submit"><i class="fas fa-search text-white" aria-hidden="true"></i></button>
            </form>
        </div>
        <a class="list-group-item bg-dark-gray" data-toggle="collapse" href="#categoriesDiv1" style="color: white;"><i class="fas fa-graduation-cap"></i> Grabaciones<i class="fas fa-angle-down"></i></a>
        
        <div class="collapse" id="categoriesDiv1" style="padding-left: 15px;">
            <a class="list-group-item bg-dark-gray" data-toggle="collapse" href="#categoriesDiv2" style="color: white;"><i class="fa fa-star"></i>  VER <i class="fas fa-angle-down"></i> </a>

            <div class="collapse" id="categoriesDiv2" style="padding-left: 15px;">
                @foreach($categoriasSidebar as $cat1)
                    <a class="list-group-item bg-dark-gray" href="{{ route('show.cursos.category', $cat1->id) }}" style="color: white;"><i class="{{ $cat1->icon }}"></i> {{$cat1->title}}</a>
                @endforeach
            </div> 
            
            <a class="list-group-item bg-dark-gray" data-toggle="collapse" href="#categoriesDiv3" style="color: white;"><i class="fa fa-star"></i>  DAR <i class="fas fa-angle-down"></i> </a>

            <div class="collapse" id="categoriesDiv3" style="padding-left: 15px;">
                @foreach($categoriasSidebar as $cat2)
                    <a class="list-group-item bg-dark-gray" href="{{ route('show.cursos.category', $cat2->id) }}" style="color: white;"><i class="{{ $cat2->icon }}"></i> {{$cat2->title}}</a>
                @endforeach
            </div> 
            
            <a class="list-group-item bg-dark-gray" data-toggle="collapse" href="#categoriesDiv4" style="color: white;"><i class="fa fa-star"></i>  Ganar <i class="fas fa-angle-down"></i> </a>

            <div class="collapse" id="categoriesDiv4" style="padding-left: 15px;">
                 @foreach($categoriasSidebar as $cat3)
                    <a class="list-group-item bg-dark-gray" href="{{ route('show.cursos.category', $cat3->id) }}" style="color: white;"><i class="{{ $cat3->icon }}"></i> {{$cat3->title}}</a>
                @endforeach
            </div>
            
        </div> 
        <a href="{{route('legal')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fas fa-balance-scale"></i> Legal</a>
        @if(Auth::user())
            @if(Auth::user()->rol_id == 0)
                <a href="{{route('setting-logo')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fa fa-gear"></i> Ajustes</a>
            @endif
            <a href="{{ route ('soporte')}}" class="list-group-item bg-dark-gray" style="color: white;"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Ayuda</a>

            <a class="list-group-item bg-dark-gray" style="color: white;" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        <i class="fas fa-power-off"></i> {{ __('Salir') }}
                    </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                     @csrf
            </form>
        @endif 
        <a href="#" id="menu-toggle2" class="list-group-item bg-dark-gray" style="color: white;"><i class="fa fa-arrow-left"></i> Ocultar</a>
        <a href="#" data-toggle="collapse" data-target="#social-networks" class="list-group-item bg-dark-gray" style="color: white;"><i class="far fa-thumbs-up"></i> Compartir</a>
        <div class="collapse show text-center" id="social-networks">
            <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A//www.ftxlive.com/office/" class="btn btn-social-media-icon btn-rounded facebook mt-2 mb-2" target="_blank"><i class="text-center fa fa-facebook"></i></a>
            <a href="https://twitter.com/intent/tweet?text=https%3A//www.ftxlive.com/office/" class="btn btn-social-media-icon btn-rounded twitter mt-2 mb-2" target="_blank"><i class="text-center fa fa-twitter"></i></a>
            <a href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//www.ftxlive.com/office/&title=FTX%20Live&summary=&source=" class="btn btn-social-media-icon btn-rounded linkedin mt-2 mb-2" target="_blank"><i class="fa fa-linkedin"></i></a>
            <a href="#" class="btn btn-social-media-icon btn-rounded email-icon mt-2 mb-2" target="_blank"><i class="fas fa-envelope"></i></a>
        </div>
        @guest
            <center><a type="button" class="btn btn-register-header d-md-block m-2" href="{{ route('log').'?act=1' }}">REGISTRARME</a>
            <a type="button" class="btn btn-register-header d-md-block m-2" href="{{ route('log').'?act=0' }}">ENTRAR</a></center>
        @endguest


        @if (!is_null($banner))
            <div class="text-center p-2">
                <img src="{{ asset('uploads/images/banners/'.$banner->image) }}" alt="" width="200" style="margin-top:80px">
            </div>
        @endif
    </div>
</div>
<!-- /#sidebar-wrapper -->
