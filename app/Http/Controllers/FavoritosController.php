<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Favorito;
use Auth;
use Http;


class FavoritosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user())
        {
            $id_favoritos  = Favorito::obtener_favoritos();
            $favoritos = [];
            if (!empty($id_favoritos)){
                foreach ($id_favoritos as $item)
                {
                        
                    $item_res = Http::get("https://hacker-news.firebaseio.com/v0/item/".$item.".json");
                
                    $favoritos [] = $item_res->json();
                }
                return view('favoritos', compact('favoritos'));
            }else{
                return redirect('/')->with('warning', 'No has añadido nada a favorito');
            }
        
        
        }else{
            $favoritos = null;
            return view('favoritos', compact('favoritos'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $favorito = new Favorito();
        $favorito->id_item = $request->id_item;
        $favorito->title_item = $request->title_item;
        $favorito->url_item = $request->url_item;
        $favorito->id_usuario = Auth::user()->id;
        $favorito->save();
        return redirect()->back()->with('success', 'Agregado a favoritos');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
            $item = Favorito::whereIn('id_item', [$id])->first();
            $item->delete();

        return redirect()->back()->with('error', 'Eliminado de favoritos');

    }
}
