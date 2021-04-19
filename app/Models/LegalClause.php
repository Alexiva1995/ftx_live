<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LegalClause extends Model
{
    protected $table = 'legal_clauses';

    protected $fillable=[
    	'legal_tab_id', 'title', 'clause', 'status'
    ];

    public function legal_tab(){
    	return $this->belongsTo('App\Models\LegalTab');
    }
}
