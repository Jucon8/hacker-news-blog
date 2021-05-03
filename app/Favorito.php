<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;

class Favorito extends Model
{
    protected $fillable = [
        'id_item', 'title_item', 'url_item',
    ];

    public static function obtener_favoritos()
    {
        $fav_array = array();

        if(Auth::user())
        {
            $favoritos = Favorito::where('id_usuario', Auth::user()->id)->get();

            foreach($favoritos as $fav)
            {
                $fav_array[] = $fav->id_item;
            }
        }

        return $fav_array;
    }
}