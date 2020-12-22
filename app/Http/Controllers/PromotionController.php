<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Promotion;

class PromotionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        // TITLE
        view()->share('title', 'Listado de Promociones Publicitarias');

        $promociones = Promotion::orderBy('id', 'DESC')->get();

        return view('admin.coursesPromotions')->with(compact('promociones'));
    }

    public function store(Request $request){
        $promocion = new Promotion($request->all());
        $promocion->save();

        if ($request->hasFile('banner')){
            $file = $request->file('banner');
            $name = $promocion->id.".".$file->getClientOriginalExtension();
            $file->move(public_path().'/uploads/images/coursesPromotions', $name);
            $promocion->banner = $name;
        }

        $promocion->save();

        return redirect('admin/promotions')->with('msj-exitoso', 'La promoción ha sido creada con éxito');
    }

    public function update(Request $request){
        $promocion = Promotion::find($request->promotion_id);
        $promocion->fill($request->all());

        if ($request->hasFile('banner')){
            $file = $request->file('banner');
            $name = $promocion->id.".".$file->getClientOriginalExtension();
            $file->move(public_path().'/uploads/images/coursesPromotions', $name);
            $promocion->banner = $name;
        }

        $promocion->save();

        return redirect('admin/promotions')->with('msj-exitoso', 'La promoción ha sido modificada con éxito');
    }

    public function change_status($id, $status){
        $promocion = Promotion::find($id);
        $promocion->status = $status;
        $promocion->save();

        if ($status == 0){
            return redirect('admin/promotions')->with('msj-exitoso', 'La promoción ha sido deshabilitada con éxito');
        }else{
            return redirect('admin/promotions')->with('msj-exitoso', 'La promoción ha sido habilitada con éxito');
        }
    }
}
