<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mensagem extends Model
{
    protected $table = 'mensagems';
    protected $fillable = ['destinatario', 'assunto', 'mensagem', 'user_id'];


    public function user()
    {

        return $this->belongsTo('App\User');
    }
}
