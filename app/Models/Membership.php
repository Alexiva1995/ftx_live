<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Membership extends Model
{
    protected $table = 'memberships';

    protected $fillable = ['name', 'image', 'price', 'price_annual', 'descuento', 'discount_annual', 'ganancia', 'streamings', 'type'];

    public function upgrade_message(){
        return $this->hasOne('App\Models\UpgradeMessage');
    }
    public function users(){
        return $this->hasMany('App\Models\User');
    }

    public function courses(){
        return $this->hasMany('App\Models\Course');
    }

    public function purchases(){
        return $this->hasMany('App\Models\PurchaseDetail');
    }
}
