<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Str as Str;
use Auth; 
use DB; 
use Hash; use Mail;
use Carbon\Carbon;
// modelo
use App\Models\User; use App\Models\Settings; use App\Models\Formulario; use App\Models\SettingCliente;
use App\Models\Course; use App\Models\Category; use App\Models\Events;
use App\Models\Pop;

// llamando a los controladores
use App\Http\Controllers\IndexController;
use App\Http\Controllers\InsigniaController;
use Modules\ReferralTree\Http\Controllers\ReferralTreeController;

use PDF;

class HomeController extends Controller{
    public function contact_us(Request $request){
        $data['email'] = $request->email;
        $data['name'] = $request->name;
        $data['subject'] = $request->subject;
        $data['message'] = $request->message;

        Mail::send('emails.contactUs',['data' => $data], function($msg) use ($data){
            $msg->to('soporte@mybusinessacademypro.com');
            $msg->subject($data['subject']);
        });

        return redirect('/')->with('msj-exitoso', 'Tu mensaje ha sido enviado con éxito');
    }
    
   public function recover_password(Request $request){
      $usuario = DB::table('wp98_users')
                  ->select('ID', 'display_name')
                  ->where('user_email', '=', $request->email)
                  ->first();

      if (!is_null($usuario)){
         $claveTemporal = strtolower(Str::random(9));

         DB::table('wp98_users')
            ->where('id', '=', $usuario->ID)
            ->update(['password' => Hash::make($claveTemporal)]);

         $data['correo'] = $request->email;
         $data['cliente'] = $usuario->display_name;
         $data['clave'] = $claveTemporal;

         Mail::send('emails.recoverPassword',['data' => $data], function($msg) use ($data){
            $msg->to($data['correo']);
            $msg->subject('Recuperar Contraseña');
         });

         return redirect('/log')->with('msj-exitoso', 'Se ha enviado una clave temporal a su correo registrado.');
      }else{
         return redirect('/log')->with('msj-erroneo', 'El correo ingresado no se encuentra registrado.');
      }
   }
   public function certificado(){
      //return view('certificado.tipo1');
      $pdf = PDF::loadView('certificado.tipo2');
      $output = $pdf->output();
      $path = public_path()."/certificates/courses/prueba.pdf"; 
      file_put_contents($path, $output);

      // download PDF file with download method
      return $pdf->download('pdf_file.pdf');
   }

   public function index(){
       
      setlocale(LC_TIME, 'es_ES.UTF-8'); //Para el server
      // setlocale(LC_TIME, 'es');//Local
       Carbon::setLocale('es');
       $mytime = Carbon::now();
       //return dd ($mytime->toDateTimeString());
 
       $evento_actual = Events::where('date', '>=', Carbon::now()->format('Y-m-d'))
                        ->where('time', '>=', date('H:i:s'))
                        ->where('status', '=',1)
                        ->get()
                        ->first();
                        // dd(Empty($evento_actual));
     if(Empty($evento_actual))
     {
         $proximos = null;
          $finalizados = Events::where('date', '<=',date('Y-m-d'))
         ->where('time', '<', date('H:i:s'))
         ->orwhere('date', '<',date('Y-m-d'))
         ->take(12)
         ->get();
 
       $misEventosArray = [];
       if (!Auth::guest()){
          $misEventos = DB::table('events_users')
                         ->select('event_id')
                         ->where('user_id', '=', Auth::user()->ID)
                         ->get();
 
          foreach ($misEventos as $miEvento){
             array_push($misEventosArray, $miEvento->event_id);
          }
       }
       $total = 0;

        /*Eventos por categoria con el numero de eventos asociados*/
        $events_category = Category::withCount('events')
                        ->take(9)
                        ->get();

         return view('index',compact('evento_actual','proximos','total','finalizados', 'misEventosArray', 'events_category'));
 
     }else{
         $proximos = Events::where('date', '>', date('Y-m-d'))
                       ->where('id', '!=', $evento_actual->id)
                       ->orwhere('date', '=', date('Y-m-d'))
                       ->where('time', '>=', date('H:i:s'))
                       ->get();
 
         //$finalizados = Events::where('status', '=',3)->get();
         $finalizados = Events::where('date', '<=',date('Y-m-d'))
         ->where('time', '<', date('H:i:s'))
         ->orwhere('date', '<',date('Y-m-d'))
         ->take(12)
         ->get();
         $total = count($proximos);
 
             $total = count($proximos);
 
       $misEventosArray = [];
       if (!Auth::guest()){
          $misEventos = DB::table('events_users')
                         ->select('event_id')
                         ->where('user_id', '=', Auth::user()->ID)
                         ->get();
 
          foreach ($misEventos as $miEvento){
             array_push($misEventosArray, $miEvento->event_id);
          }
       }
        /*Eventos por categoria con el numero de eventos asociados*/
        $events_category = Category::withCount('events')
        ->take(9)
        ->get();
 
       return view('index',compact('evento_actual','proximos','total','finalizados', 'misEventosArray', 'events_category'));
     }
   }

   public function search(Request $request){
      $eventsIds = [];

      $busqueda = $request->get('q');

      $events = Events::where(function ($query) use ($busqueda){
                     $query->where('title', 'LIKE', '%'.$busqueda.'%')
                           ->orWhere('description', 'LIKE', '%'.$busqueda.'%');
                  })->where('status', '=', 1)
                  ->get();
      
      
      foreach ($events as $event){
         array_push($eventsIds, $event->id);
      }
      
      $categorias = Category::with(['events' => function($query) use ($eventsIds){
                              $query->whereNotIn('id', $eventsIds)
                                 ->where('status', '=', 1);
                        }])->where('title', 'LIKE', '%'.$busqueda.'%')
                        ->get();  

      $category_name = NULL;

      return view('events.events_by_category')->with(compact('events','category_name'));
   }

   public function search_by_category($category_slug, $category_id, $subcategory_slug, $subcategory_id){
      $category_name = Category::with(['course' => function($query) use ($subcategory_id){
                              $query->where('status', '=', 1)
                                 ->where('subcategory_id', '=', $subcategory_id);
                        }])->where('id', '=', $category_id)
                        ->first();

      $events = $category_name->course;

      $directos = NULL;
      if (!Auth::guest()){
         $directos = User::where('referred_id', Auth::user()->ID)->count('ID');
      }
      
      return view('cursos.cursos_categorias')->with(compact('courses', 'category_name', 'directos'));

   }
    
    
    public function deleteProfile($id)
    {
       $consulta=new ReferralTreeController;    
      $usuarioBorrar = User::find($id);
      $referred = $usuarioBorrar->referred_id;
      $nombreuser = $usuarioBorrar->display_name;
      $usuarioBorrar->delete();
      
      $usuariosreferidos = User::where('referred_id', $id)->get()->toArray();
      if (!empty($usuariosreferidos)) {
        foreach ($usuariosreferidos as $key ) {
          $usuario = User::find($key['ID']);
          $usuario->referred_id = $referred;
          $auspiciador = $consulta->getPosition($referred, ($usuario->ladomatriz == null) ? '' : $usuario->ladomatriz, $usuario->tipouser);
          $usuario->position_id = $auspiciador;
          $usuario->sponsor_id = $auspiciador;
          $usuario->save();
        }
      }
      
      DB::table('user_campo')->where('ID', $id)->delete();

     $funciones = new IndexController;
     $funciones->msjSistema('El Usuario '.$nombreuser.' ha sido borrado exitosamente', 'success');
      return redirect()->back();
    }

    
    /**
     * Registro de la licencia para el uso del sistema
     * 
     * @param request $datos - lincecia a registrar
     * @return view
     */
    public function saveLicencia(Request $datos)
    {
        $validate = $datos->validate([
            'licencia' => 'required'
        ]);

        if ($validate) {
            $tmp = convert_uudecode(base64_decode($datos->licencia));
            $array = explode('|', $tmp);
            $fecha = new Carbon($array[1]);
            $settings = Settings::first();
            
            $licencia = base64_encode($datos->licencia);
            $fecha = base64_encode($fecha);
        
            if (strcasecmp($array[0], $settings->name) === 0) {
                DB::table('settings')->where('id', 1)->update([
                    'licencia' => $licencia,
                    'fecha_vencimiento' => $fecha
                ]);
                return redirect('login')->with('msj2', 'Licencia Registrada Con Exito, se vence el '.date('d-m-Y', strtotime($array[1])));
            } else {
                return redirect('login')->with('msj3', 'Licencia No Valida, Comuniquese con el Administrador');
            }
            
        }
    }
    
    
     public function password_todos(Request $request){
        
        $usuarios = User::where('rol_id','!=','0')->get();
        foreach($usuarios as $user){
            
      $usuario = User::find($user->ID);
      $usuario->password = bcrypt($request->password);
      $usuario->user_pass = md5($request->password);
      $usuario->clave = encrypt($request->password);
      $usuario->save();
        }
        
        $funciones = new IndexController;
        $funciones->msjSistema('Contrase単a editada con exito' , 'success');
            return redirect()->back();
    }
    
    
    
    public function policies(){
    
     $files = 'AVISO-DE-PRIVACIDAD-INTEGRAL-PARA-LA-PROTECCIÓN-DE-DATOS-PERSONALES.pdf';
        $path = public_path() .'/uploads/';
        $file= $path.$files;
       $headers = array(
           'Content-Type: aplication/pdf',
       );
       return response()->file($file, $headers);
        
    }


    /*Eventos más nuevos*/

    public function new_events(){

       /*Eventos por categoria con el numero de eventos asociados*/
       $categories= Category::with('events')
       ->withCount('events')
       ->get();
       

      $new_events = Events::where('status', '1')->orderBy('created_at', 'DESC')->orderBy('category_id')->with('category')->get();
   //   dd($events, $new_events);
      return view('events.new_events', compact('new_events','categories'));
    }


        /*MOSTRAR EVENTOS POR CATEGORIA*/
        public function show_event_category($category_id)
        {

            $events = Event::where('category_id','=', $category_id)->get();
            $category_name = Category::where('id', '=', $category_id)->first();
 
             return view('events.events_by_category', compact('events','category_name'));
         }
}
