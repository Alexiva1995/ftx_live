@if (Auth::user()->rol_id == 2)
                                @if ( ($statusLive == 'scheduled') || ($statusLive == 'live') )
                                    <form action="https://streaming.ftxlive.com/connect-mba/{{$evento->id}}/{{Auth::user()->ID}}" method="POST">
                                        @csrf
                                        <input type="hidden" name="email" value="{{ Auth::user()->user_email }}">
                                        <input type="hidden" name="password" value="{{ decrypt(Auth::user()->clave) }}">
                                        
                                        <button type="submit" class="btn btn-danger btn-block">ENTRAR AL LIVE</button>  
                                    </form>
                                @else
                                    <a href="{{route('show.event', $evento->id)}}" class="btn btn-danger btn-block">VER DETALLES DEL EVENTO</a>
                                @endif
                            @else
                                @if ($statusLive == 'live')
                                    <form action="https://streaming.ftxlive.com/connect-mba/{{$evento->id}}/{{Auth::user()->ID}}" method="POST">
                                        @csrf
                                        <input type="hidden" name="email" value="{{ Auth::user()->user_email }}">
                                        <input type="hidden" name="password" value="{{ decrypt(Auth::user()->clave) }}">
                                        
                                        <button type="submit" class="btn btn-danger btn-block">ENTRAR AL LIVE</button>  
                                    </form>
                                @else
                                    <a href="{{route('show.event', $evento->id)}}" class="btn btn-danger btn-block">VER DETALLES DEL EVENTO</a>
                                @endif
                            @endif