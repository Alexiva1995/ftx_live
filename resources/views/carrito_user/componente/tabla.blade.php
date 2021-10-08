<h4 class="text-white text-right mb-5"><strong><i class="fa fa-shopping-cart"></i> Carrito</strong></h4>

@foreach ($items as $item)
<div class="row">
  <div class="col-8">
    <h5 class="mt-0 text-white"><strong>{{$item->curso['titulo']}}</strong></h5>
    <h4 class="text-white">
       <strong><small>Costo:</small> {{$item->curso['precio']}} USD</strong>
    </h4>
  </div>
  <div class="col-4 text-right">
    <a class="btn btn-danger" href="{{route('shopping-cart.delete', [$item->id])}}">
      <i class="fas fa-trash"></i>
    </a>
  </div>
</div>
@endforeach
<hr style="border: 1px solid #ffffff;opacity: 1;" />
<h4 class="text-white mb-5">
    TOTAL
    <strong class="float-right color-green">{{$totalItems}} USD</strong>
</h4>
