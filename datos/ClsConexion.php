<?php

class ClsConexion {

    private static $db_host = 'localhost';
    private static $db_user = 'root';
    private static $db_pass = '';
    protected $db_driver = 'mysql';
    protected $db_name = 'caminca';
    private $estado = FALSE;
    protected $query;
    protected $rows = array();
    private $conn;
    # variable para controlar transacciones
    protected $hasActiveTransaction = false;

    # Conectar a la base de datos utilizamos la libreria pdo

    private function open_connection() {
        $cadena = $this->db_driver . ":host=" . self::$db_host . ";dbname=" . $this->db_name;
        $this->conn = new PDO($cadena, self::$db_user, self::$db_pass);
        # para manejar errores y excepcciones especiales para el manejo de transacciones
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        # codificacion utf-8
        $this->conn->query("SET NAMES 'utf8'");
        $this->estado = TRUE;
    }

    # Desconectar la base de datos

    private function close_connection() {
        $this->conn = null;
        $this->estado = FALSE;
    }

    # ESPECIAL PARA SQL A NIVEL DE APLICACIÓN
    # Ejecutar un query simple del tipo INSERT, DELETE, UPDATE

    protected function execute_single_query() {
        # hasActiveTransaction si es vdd entonces esta iniciada una transaccion
        if ($this->hasActiveTransaction == false)
            $this->open_connection();
        # prepare query
        $stm = $this->conn->prepare($this->query);
        $stm->execute();
    }

    # Traer resultados de una consulta en un Array

    protected function get_results_from_query() {
        # hasActiveTransaction si es vdd entonces esta iniciada una transaccion
        $this->open_connection();
        $stm = $this->conn->prepare($this->query);
        $stm->execute();
        $this->rows = array("cuerpo" => $stm->fetchAll());
        var_dump($this->rows);
        $this->close_connection();
    }

    # EJECUTAR UN QUERY DEL TIPO INSERT , DELETE , UPDATE , SELECT
    # para el caso de que  UN  insert  INSERT , DELETE , UPDATE devuelva parametros desde un procedimiento almacendO
    # para poder utilizar este metodo todos query deben de tener por lo menos un valor de respuesta
    # PARA PODER EJECUTAR LOS PROCEMIENTOS ALMACENADO Y COLOCARLOS EN EL ARRARY POR LO MENOS DEBE DE RETORNAR UN FILA

    protected function execute_query() {
        # hasActiveTransaction si es vdd entonces esta iniciada una transaccion
        if ($this->hasActiveTransaction == false)
            $this->open_connection();

        $stm = $this->conn->prepare($this->query);
        if ($stm->execute()) {
            # esto para que el metodo de conexion no duelva error cuando se trabaja con transacciones
            $this->rows = $stm->fetchAll(); //array($stm->fetchAll());
        }
    }

    # Iniciar un transaccion

    public function beginTransaction() {
        if ($this->hasActiveTransaction == false) {
            # nos conectamos
            $this->open_connection();
            # iniciamos la transaccion
            $this->conn->beginTransaction();
            #activamos la varible controladora de transacciones
            $this->hasActiveTransaction = true;
        }
    }

    # si a tenido existo hacemos un commit para volcar los datos

    public function commit() {
        $this->conn->commit();
        $this->hasActiveTransaction = false;
        $this->close_connection();
    }

    # si hay errores para dehacer el volcado de datos

    public function rollback() {
        $this->conn->rollback();
        $this->hasActiveTransaction = false;
        $this->close_connection();
    }

    public function getEstado() {
        return $this->estado;
    }

    public function consulta($p_consulta) {
        $consulta = $this->conn->prepare($p_consulta);
        $consulta->execute();
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
    }

    public function consultaActualizar($p_consulta) {
        $consulta = $this->conn->prepare($p_consulta);
        return $consulta->execute();
    }

    public function update_new($p_consulta) {
        $consulta = $this->conn->prepare($p_consulta);
        return $consulta->execute();
    }

    public function select($p_nombre_tabla, $p_campos, $p_campos_where, $p_valores_where) {
        $sql_campos = implode(",", $p_campos);
        $sql_campos_where = $this->sentenciaPreparadaAND($p_campos_where);

        $consulta = $this->conn->prepare("SELECT $sql_campos FROM $p_nombre_tabla WHERE $sql_campos_where;");

        for ($i = 0; $i < count($p_campos_where); $i++) {
            $consulta->bindParam(':' . $p_campos_where[$i], $p_valores_where[$i]);
        }

        $consulta->execute();

        return $consulta->fetchAll();
    }

    public function insert($p_nombre_tabla, $p_campos, $p_valores) {
        $sql_campos = implode(",", $p_campos);
        $sql_valores = $this->sentenciaPreparada($p_campos);

        $consulta = $this->conn->prepare("INSERT INTO $p_nombre_tabla ($sql_campos) VALUES ($sql_valores)");

        for ($i = 0; $i < count($p_campos); $i++) {
            $consulta->bindParam(':' . $p_campos[$i], $p_valores[$i]);
        }

        return $consulta->execute();
    }

    public function update($p_nombre_tabla, $p_campos, $p_valores, $p_campos_where, $p_valores_where) {
        $sql_campos = $this->sentenciaPreparadaUpdate($p_campos);
        $sql_campos_where = $this->sentenciaPreparadaAND($p_campos_where);

        $consulta = $this->conn->prepare("UPDATE $p_nombre_tabla SET $sql_campos WHERE $sql_campos_where");

        for ($i = 0; $i < count($p_campos); $i++) {
            $consulta->bindParam(':' . $p_campos[$i], $p_valores[$i]);
        }

        for ($i = 0; $i < count($p_campos_where); $i++) {
            $consulta->bindParam(':' . $p_campos_where[$i], $p_valores_where[$i]);
        }

        return $consulta->execute();
    }

    public function delete($p_nombre_tabla, $p_campos_where, $p_valores_where) {
        $sql_campos_where = $this->sentenciaPreparadaAND($p_campos_where);

        $consulta = $this->conn->prepare("DELETE FROM $p_nombre_tabla WHERE $sql_campos_where");

        for ($i = 0; $i < count($p_campos_where); $i++) {
            $consulta->bindParam(':' . $p_campos_where[$i], $p_valores_where[$i]);
        }

        return $consulta->execute();
    }

    private function sentenciaPreparadaUpdate($array) {
        $sql_temp = "";
        for ($i = 0; $i < count($array); $i++) {
            if ($i == count($array) - 1) {
                $sql_temp = $sql_temp . $array[$i] . "=:" . $array[$i];
            } else {
                $sql_temp = $sql_temp . $array[$i] . "=:" . $array[$i] . ", ";
            }
        }
        return $sql_temp;
    }

    private function sentenciaPreparadaAND($array) {
        $sql_temp = "";
        for ($i = 0; $i < count($array); $i++) {
            if ($i == count($array) - 1) {
                $sql_temp = $sql_temp . $array[$i] . "=:" . $array[$i];
            } else {
                $sql_temp = $sql_temp . $array[$i] . "=:" . $array[$i] . " AND ";
            }
        }
        return $sql_temp;
    }

    private function sentenciaPreparada($array) {
        $sql_temp = "";
        for ($i = 0; $i < count($array); $i++) {
            if ($i == count($array) - 1) {
                $sql_temp = $sql_temp . ":" . $array[$i];
            } else {
                $sql_temp = $sql_temp . ":" . $array[$i] . ", ";
            }
        }
        return $sql_temp;
    }

}

?>