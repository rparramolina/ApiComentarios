<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comentario;
use DB;

class ComentariosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $respuestas = DB::select('SELECT
                                c.comentario_id,
                                c.comentario,
                                comen.comentario AS respuesta
                                FROM
                                comentarios AS c ,
                                comentarios AS comen
                                WHERE
                                comen.fk_comentario_id = c.comentario_id');

        $comentarios = Comentario::where('fk_comentario_id',0)->get();
        $eloquent = Comentario::all();
      
      
        return view('comentarios',compact('comentarios','respuestas','eloquent'));

    }


}
