<?php

include '../../negocio/ClsUsuario.php';
$objUsuario = new ClsUsuario();

$objDatos = json_decode(file_get_contents("php://input"));

if ($objDatos == null) {
    $cAccion = $_POST['accion'];
} else {
    $cAccion = $objDatos->accion;
}

if ($cAccion == 'registrarUsuario') {
    try {
        $usuario = array($_POST['nombres'], $_POST['apellidos'], $_POST['edad'], $_POST['celular'], $_POST['usuario'], $_POST['clave']);
        $Resultado = $objUsuario->Set_Usuario($usuario);
        $objUsuario->Set_Estatus();
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarPuntos') {
    try {
        $usuario = array($_POST['puntos_totales'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Puntaje($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarTiempoNivel1') {
    try {
        $usuario = array($_POST['tiempo'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Tiempo_Nivel1($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'RepeticionNivel1') {
    try {
        $usuario = array($_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Repeticion_Nivel1($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarPosicionArriba') {
    try {
        $usuario = array($_POST['posicion_ficha_arriba'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Posicion_Arriba($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarPosicionAbajo') {
    try {
        $usuario = array($_POST['posicion_ficha_abajo'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Posicion_Abajo($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarPosicionDerecha') {
    try {
        $usuario = array($_POST['posicion_ficha_derecha'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Posicion_Derecha($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarPosicionIzquierda') {
    try {
        $usuario = array($_POST['posicion_ficha_izquierda'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Posicion_Izquierda($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarAcumuladorPosicionFicha') {
    try {
        $usuario = array($_POST['acumulador_ficha'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Acumular_Posicion_Ficha($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}

if ($cAccion == 'ActualizarNivel') {
    try {
        $usuario = array($_POST['nivel'], $_POST['id_usuario']);
        $Resultado = $objUsuario->Upd_Nivel($usuario);
        $objUsuario->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objUsuario->rollback();
        echo $e;
    }
}
/*
  if ($cAccion == 'editarProducto') {
  try {
  $_POST['icono_menu'] = str_replace("img/productos/", "", $_POST['icono_menu']);
  $producto = array($_POST['nombre_menu'], "img/productos/" . $_POST['icono_menu'], $_POST['tamanho'], $_POST['peso'], $_POST['previene'], $_POST['descripcion'], $_POST['beneficios'], $_POST['aire'], $_POST['gel'], $_POST['espuma'], $_POST['titulo_pagina'], $_POST['rotulo_medio'], $_POST['contextura'], $_POST['idproducto']);
  $Resultado = $objProductos->Upd_Producto($producto);
  $objProductos->beginTransaction();
  echo $Resultado;
  } catch (Exception $e) {
  $objProductos->rollback();
  echo $e;
  }
  }

  if ($cAccion == 'eliminarProducto') {
  try {
  $producto = array($_POST['idproducto']);
  $Resultado = $objProductos->Del_Producto($producto);
  $objProductos->beginTransaction();
  echo $Resultado;
  } catch (Exception $e) {
  $objProductos->rollback();
  echo $e;
  }
  } */
?>