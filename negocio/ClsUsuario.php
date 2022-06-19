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

    function Get_Orden_Merito($usuario, $nivel, $puntaje) {
        $this->query = "SELECT
	estatus.id_usuario,
	usuario.nombres,
	usuario.apellidos,
	estatus.puntaje
FROM
	estatus
INNER JOIN usuario ON usuario.idusuario = estatus.id_usuario
WHERE
	puntaje > $puntaje
AND nivel = $nivel
UNION
	SELECT
		estatus.id_usuario,
		usuario.nombres,
		usuario.apellidos,
		estatus.puntaje
	FROM
		estatus
	INNER JOIN usuario ON usuario.idusuario = estatus.id_usuario
	WHERE
		id_usuario = $usuario
	AND nivel = $nivel
	UNION
		SELECT
			estatus.id_usuario,
			usuario.nombres,
			usuario.apellidos,
			estatus.puntaje
		FROM
			estatus
		INNER JOIN usuario ON usuario.idusuario = estatus.id_usuario
		WHERE
			puntaje < $puntaje
		AND nivel = $nivel
		ORDER BY
			puntaje DESC
		LIMIT 10;";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Get_Status_By_Usuario($usuario) {
        $this->query = "SELECT * from estatus where id_usuario=$usuario;";
        $this->execute_query();
        $data = $this->rows;
        return $data;
    }

    function Set_Usuario($usuario) {
        $this->query = "SELECT count(*) as cnt FROM usuario WHERE usuario='$usuario[4]' or correo='$usuario[10]';";
        $this->execute_query();
        $data = $this->rows;

        if ($data[0]['cnt'] == 0) {
            $this->query = "insert into usuario(nombres,apellidos,edad,celular,usuario,clave,tipo_usuario,estado,fecha_nacimiento,sexo,nivel_estudios,tipo_colegio,correo,fecha_registro) values ('$usuario[0]','$usuario[1]','$usuario[2]','$usuario[3]','$usuario[4]',md5('$usuario[5]'),2,1,'$usuario[6]','$usuario[7]','$usuario[8]','$usuario[9]','$usuario[10]',now())";
            $this->execute_single_query();
            $this->Set_Estatus();
            return json_encode('Registro de usuario realizado correctamente');
        } else {
            return json_encode('Existen ' . $data[0]['cnt'] . ' coincidencia(s) participando, por favor pruebe con otro usuario o correo electronico');
        }
    }

    function Set_Estatus() {
        $this->query = "insert into estatus(id_usuario,nivel,puntaje,tiempo_nivel1,tiempo_nivel2,tiempo_nivel3,repeticion_nivel1,repeticion_nivel2,repeticion_nivel3,posicion_ficha_abajo,posicion_ficha_arriba,posicion_ficha_derecha,posicion_ficha_izquierda,acumulador_ficha) values ((select max(idusuario) from usuario),1,100,'00:00:00','00:00:00','00:00:00',0,0,0,0,0,0,0,0)";
        $this->execute_single_query();
        return json_encode('Registro el estatus realizado correctamente');
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

    function Upd_Posicion_Juego_Resetear($usuario) {
        $this->query = "update estatus set acumulador_ficha='$usuario[0]',posicion_ficha_izquierda='$usuario[1]',posicion_ficha_derecha='$usuario[2]',posicion_ficha_arriba='$usuario[3]',posicion_ficha_abajo='$usuario[4]' where id_usuario='$usuario[5]'";
        $this->execute_single_query();
        return json_encode('Actualización de datos');
    }

    function Get_Recuperar_Credenciales($usuario) {
        $this->query = "SELECT usuario,md5(clave) as clave from usuario where celular='$usuario[0]' and correo='$usuario[1]';";
        $this->execute_query();
        $data = $this->rows;
        if (count($data) > 0) {
            return json_encode('Su usuario es: ' . $data[0]['usuario'] . ', proceda a recuperar su clave con la opcion cambio de credenciales');
        } else {
            return json_encode('No existe usuario con los datos ingresados.');
        }
    }

    function Upd_Clave_Usuario($usuario) {
        $this->query = "SELECT count(*) as cnt FROM usuario WHERE usuario='$usuario[1]' and correo='$usuario[0]';";
        $this->execute_query();
        $data = $this->rows;

        if ($data[0]['cnt'] > 0) {
            $this->query = "update usuario set clave=md5('$usuario[2]') where usuario='$usuario[1]'";
            $this->execute_single_query();
            return json_encode('Actualizacion de credenciales correcta, por favor inicie su sesion y comienze a jugar');
        } else {
            return json_encode('No se ejecuto la solicitud el usuario o correo no existe');
        }
    }

}
