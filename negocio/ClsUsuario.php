<?php

$file = realpath(dirname(__FILE__) . "/../datos/ClsConexion.php");
require_once($file);

class ClsUsuario extends ClsConexion {

    function Get_Usuario_By_Play($persona) {
        $this->query = "SELECT count(*) as logeo, usuario.idusuario,
usuario.usuario,
usuario.clave,
usuario.estado
FROM
usuario
 WHERE usuario.estado = 1 and usuario.tipo_usuario=2 and usuario.usuario = '$persona[0]' AND usuario.clave = md5('$persona[1]');";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Get_Usuario_By_Clave_Admin($persona) {
        $this->query = "SELECT count(*) as logeo, usuario.idusuario,
usuario.usuario,
usuario.clave,
usuario.estado
FROM
usuario
 WHERE usuario.estado = 1 and usuario.tipo_usuario=1 and usuario.usuario = '$persona[0]' AND usuario.clave = md5('$persona[1]');";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Get_Usuarios() {
        $this->query = "SELECT * from usuario;";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Set_Usuario($usuario) {
        $this->query = "insert into usuario(nombres,apellidos,edad,celular,usuario,clave,tipo_usuario,estado) values ('$usuario[0]','$usuario[1]','$usuario[2]','$usuario[3]','$usuario[4]',md5('$usuario[5]'),2,1)";
        $this->execute_single_query();
        return json_encode('Registro realizado correctamente');
    }

    function Set_Estatus() {
        $this->query = "insert into estatus(id_usuario,nivel,puntaje,tiempo_nivel1,tiempo_nivel2,tiempo_nivel3,repeticion_nivel1,repeticion_nivel2,repeticion_nivel3,posicion_ficha_abajo,posicion_ficha_arriba,posicion_ficha_derecha,posicion_ficha_izquierda,acumulador_ficha) values ((select max(idusuario) from usuario),1,100,'00:00:00','00:00:00','00:00:00',0,0,0,0,0,0,0,0)";
        $this->execute_single_query();
        return json_encode('Registro realizado correctamente');
    }

    function Get_Estatus_By_Usuario($persona) {
        $this->query = "SELECT * FROM estatus WHERE id_usuario='$persona';";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Upd_Nivel($usuario) {
        $this->query = "update estatus set nivel='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización del nivel satisfactorio');
    }

    function Upd_Puntaje($usuario) {
        $this->query = "update estatus set puntaje='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización del puntaje satisfactorio');
    }

    function Upd_Tiempo_Nivel1($usuario) {
        $this->query = "update estatus set tiempo_nivel1='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 1 satisfactorio');
    }

    function Upd_Tiempo_Nivel2($usuario) {
        $this->query = "update estatus set tiempo_nivel2='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 2 satisfactorio');
    }

    function Upd_Tiempo_Nivel3($usuario) {
        $this->query = "update estatus set tiempo_nivel3='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 3 satisfactorio');
    }

    function Upd_Repeticion_Nivel1($usuario) {
        $this->query = "update estatus set repeticion_nivel1=repeticion_nivel1+1 where id_usuario='$usuario[0]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 1 satisfactorio');
    }

    function Upd_Repeticion_Nivel2($usuario) {
        $this->query = "update estatus set repeticion_nivel2=repeticion_nivel2+1 where id_usuario='$usuario[0]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 2 satisfactorio');
    }

    function Upd_Repeticion_Nivel3($usuario) {
        $this->query = "update estatus set repeticion_nivel3=repeticion_nivel3+1 where id_usuario='$usuario[0]'";
        $this->execute_single_query();
        return json_encode('Actualización del tiempo nivel 3 satisfactorio');
    }

    function Upd_Posicion_Arriba($usuario) {
        $this->query = "update estatus set posicion_ficha_arriba='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización de la posicion de arriba');
    }

    function Upd_Posicion_Abajo($usuario) {
        $this->query = "update estatus set posicion_ficha_abajo='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización de la posicion de abajo');
    }

    function Upd_Posicion_Derecha($usuario) {
        $this->query = "update estatus set posicion_ficha_derecha='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización de la posicion derecha');
    }

    function Upd_Posicion_Izquierda($usuario) {
        $this->query = "update estatus set posicion_ficha_izquierda='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización de la posicion izquierda');
    }

    function Upd_Acumular_Posicion_Ficha($usuario) {
        $this->query = "update estatus set acumulador_ficha='$usuario[0]' where id_usuario='$usuario[1]'";
        $this->execute_single_query();
        return json_encode('Actualización de la posicion izquierda');
    }

}
