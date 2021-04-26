<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ChatForm extends Component
{
    public $user_id;
    public $avatar;
    public $usuario;
    public $mensaje;

    public function mount()
    {
        $this->user_id = Auth::user()->id;
        $this->avatar = asset('uploads/avatar/'.Auth::user()->avatar);
        $this->usuario = Auth::user()->display_name;
        $this->mensaje = "";
    }

    public function render()
    {
        return view('livewire.chat-form');
    }

    public function enviarMensaje()
    {
        $this->validate([
            'mensaje' => 'required'
        ]);

        $this->emit("mensajeEnviado");
        // $this->emit("mensajeRecibido", $this->mensaje);
        // evento para poder realizar el chat
        event(new \App\Events\EnviarMensaje($this->user_id, $this->usuario, $this->mensaje, $this->avatar));
    }
}
