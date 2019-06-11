<?php

namespace App\Http\Controllers\Api;

use App\User;
use App\Comentario;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class ComentariosApiController extends Controller
{
    //
    public function addComentario(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'comentario' => 'required|string|max:512',            
        ]);
    
        if ($validator->fails())
        {
            return response(['errors'=>$validator->errors()->all()], 422);
        }
    
        //$comentario = Comentario::create($request->toArray());
        $comentario = new Comentario();
        $comentario->comentario = $request->comentario;
        $comentario->fk_comentario_id = 0;
        $comentario->save();
    
        $response = "Comentario creado";
    
        return response($response, 200);

    }


    public function addResponse(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'comentario' => 'required|string|max:512',            
        ]);
    
        if ($validator->fails())
        {
            return response(['errors'=>$validator->errors()->all()], 422);
        }
    
        //$comentario = Comentario::create($request->toArray());
        $comentario = new Comentario();
        $comentario->comentario = $request->comentario;
        $comentario->fk_comentario_id = $id;
        $comentario->save();
    
        $response = "Respuesta creada";
    
        return response($response, 200);
        
    }
}
