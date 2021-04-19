<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LegalTab extends Model
{
    protected $table = 'legal_tabs';

    protected $fillable=[
    	'title', 'status'
    ];

    public function legal_clauses(){
    	return $this->hasMany('App\Models\LegalClause');
    }
}
