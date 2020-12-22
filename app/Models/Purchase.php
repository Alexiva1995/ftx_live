<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    protected $table = 'purchases';

    protected $fillable = ['user_id', 'amount', 'payment_method', 'payment_id', 'date', 'status','link'];

    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id', 'ID');
    }

    public function details(){
    	return $this->hasMany('App\Models\PurchaseDetail');
    }

    public function scopeDates($query, $initial_date, $final_date){
        if ( ($initial_date != "") && ($final_date != "") ){
            $query->where('date', '>=', $initial_date)->where('date', '<=', $final_date);
        }
    }

    public function scopeMethod($query, $payment_method){
        if ($payment_method != ""){
            $query->where('payment_method', '=', $payment_method);
        }
    }
}