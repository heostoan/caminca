<?php

$file = realpath(dirname(__FILE__) . "/../datos/ClsConexion.php");
require_once($file);

class ClsPreguntas extends ClsConexion {

    function Get_Preguntas() {
        $this->query = "SELECT
preguntas.id,
preguntas.pregunta,
preguntas.alternativa_1,
preguntas.alternativa_2,
preguntas.alternativa_3,
preguntas.alternativa_4,
preguntas.alternativa_5,
preguntas.respuesta,
preguntas.video,
preguntas.acierto,
preguntas.fallo,
preguntas.nivel
FROM
preguntas;";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

}
