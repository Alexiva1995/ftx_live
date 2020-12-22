<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UpgradeMessage extends Model{
    
    protected $table = "upgrade_messages";

    protected $fillable = [
        'membership_id', 'title', 'description', 'image'
    ];

    public function membership(){
        return $this->belongsTo('App\Models\Membership');
    }
}
