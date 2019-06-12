<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Comentarios</title>
</head>
<body>

    <p>Comentarios</p>
    <table border="1" >
        <tr>
            <th>Id Comentario</th>
            <th>Comentario</th>
            
        </tr>
        @foreach($comentarios as $c)
            <tr>
                <td>{{ $c->comentario_id }}</td>
                <td>{{ $c->comentario }}</td>
            </tr>
        @endforeach
    </table>

    <p>Respuestas</p>
    <table border="1" >
        <tr>
            <th>Id Comentario</th>
            <th>Comentario</th>
            <th>Respuesta</th>
        </tr>
        @foreach($respuestas as $r)
            <tr>
                <td>{{ $r->comentario_id }}</td>
                <td>{{ $r->comentario }}</td>
                <td>{{ $r->respuesta }}</td>
            </tr>
        @endforeach
    </table>
    
    <p>Respuestas con Eloquent</p>

    <table border="1">
        <tr>
            <th>Id Comentario</th>
            <th>Comentario</th>
            <th>Respuesta</th>
        </tr>
        @foreach($eloquent as $e)
            @foreach($e->parent()->get() as $ee)
                <tr>
                    <td> {{ $e->comentario_id }} </td>
                    <td> {{ $e->comentario }}</td>
                    <td> {{ $ee->comentario }}</td>
                </tr>
            @endforeach
        @endforeach
    </table>
   

</body>
</html>