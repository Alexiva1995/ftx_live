<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LegalTab;
use App\Models\LegalClause;

class LegalController extends Controller
{
	public function index(){
		$tabs = LegalTab::with(['legal_clauses' => function($query){
						$query->where('status', '=', 1)->orderBy('id', 'ASC');
					}])->where('status', '=', 1)
    				->orderBy('id','ASC')
    				->get();

    	return view('legal')->with(compact('tabs'));
	}

    public function tabs(){
    	// TITLE
        view()->share('title', 'Pestañas Legales');

    	$tabs = LegalTab::withCount('legal_clauses')
    				->orderBy('status', 'DESC')
    				->orderBy('id','ASC')
    				->get();

    	return view('admin.legal.tabs')->with(compact('tabs'));
    }

    public function store_tab(Request $request){
    	$tab = new LegalTab($request->all());
    	$tab->save();

    	return redirect()->route('admin.legal.tabs.index')->with('msj-exitoso', 'La pestaña ha sido creada con éxito');
    }

    public function show_tab($id){
    	$tab = LegalTab::find($id);

    	return response()->json($tab);
    }

     public function update_tab(Request $request){
     	$tab = LegalTab::find($request->tab_id);
     	$tab->fill($request->all());
    	$tab->save();

    	return redirect()->route('admin.legal.tabs.index')->with('msj-exitoso', 'La pestaña ha sido modificada con éxito');
    }

    public function change_status_tab($tab_id, $status){
    	$tab = LegalTab::find($tab_id);
    	$tab->status = $status;
    	$tab->save();

    	return redirect()->route('admin.legal.tabs.index')->with('msj-exitoso', 'El estado de la pestaña ha sido cambiado con éxito');
    }

    public function clauses($tab_id){
    	// TITLE
        view()->share('title', 'Clausulas Legales');

    	$clauses = LegalClause::where('legal_tab_id', '=', $tab_id)
    					->orderBy('status', 'DESC')
    					->orderBy('id', 'ASC')
    					->get();

    	return view('admin.legal.clauses')->with(compact('clauses', 'tab_id'));
    }

    public function store_clause(Request $request){
    	$clause = new LegalClause($request->all());
    	$clause->save();

    	return redirect()->back()->with('msj-exitoso', 'La clausula ha sido creada con éxito');
    }

    public function show_clause($id){
    	$clause = LegalClause::find($id);

    	return response()->json($clause);
    }

     public function update_clause(Request $request){
     	$clause = LegalClause::find($request->clause_id);
     	$clause->fill($request->all());
    	$clause->save();

    	return redirect()->route('admin.legal.clauses.index', $clause->legal_tab_id)->with('msj-exitoso', 'La clausula ha sido modificada con éxito');
    }

    public function change_status_clause($clause_id, $status){
    	$clause = LegalClause::find($clause_id);
    	$clause->status = $status;
    	$clause->save();

    	return redirect()->route('admin.legal.clauses.index', $clause->legal_tab_id)->with('msj-exitoso', 'El estado de la clausula ha sido cambiado con éxito');
    }
}
