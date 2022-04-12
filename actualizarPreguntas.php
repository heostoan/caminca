<?php
header('Content-Type: application/json');
require_once './negocio/ClsPreguntas.php';
$objPreguntas = new ClsPreguntas();

$ResultadoPreguntas = $objPreguntas->Get_Preguntas();

$json = json_encode($ResultadoPreguntas);
echo $json;
file_put_contents("data_preguntas.json", $json);
