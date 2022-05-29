<?php

include '../../negocio/ClsModelos.php';
$objModelos = new ClsModelos();

$objDatos = json_decode(file_get_contents("php://input"));

if ($objDatos == null) {
    $cAccion = $_POST['accion'];
} else {
    $cAccion = $objDatos->accion;
}

if ($cAccion == 'registrarModelo') {
    try {
        $modelo = array($_POST['modelo'], $_POST['color'], "img/productos/" . $_POST['img_banner'], "img/productos/" . $_POST['img_secundaria'], $_POST['idproducto']);
        $Resultado = $objModelos->Set_Modelo($modelo);
        $objModelos->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objModelos->rollback();
        echo $e;
    }
}

if ($cAccion == 'editarModelo') {
    try {
        $_POST['img_banner'] = str_replace("img/productos/", "", $_POST['img_banner']);
        $_POST['img_secundaria'] = str_replace("img/productos/", "", $_POST['img_secundaria']);
        $modelo = array($_POST['modelo'], $_POST['color'], "img/productos/" . $_POST['img_banner'], "img/productos/" . $_POST['img_secundaria'], $_POST['idproducto'], $_POST['idmodelo']);
        $Resultado = $objModelos->Upd_Modelo($modelo);
        $objModelos->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objModelos->rollback();
        echo $e;
    }
}

if ($cAccion == 'eliminarModelo') {
    try {
        $modelo = array($_POST['idmodelo']);
        $Resultado = $objModelos->Del_Modelo($modelo);
        $objModelos->beginTransaction();
        echo $Resultado;
    } catch (Exception $e) {
        $objModelos->rollback();
        echo $e;
    }
}
?>