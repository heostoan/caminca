<?php
session_start();
session_unset();
session_destroy();
include 'negocio/ClsUsuario.php';

$objUsuario = new ClsUsuario();

$msj = "";
$vercodigo = 0;
$codigoencontrado = 0;
if (isset($_POST['usuario']) && isset($_POST['clave'])) {
    $msj = "";
    $login = $_POST['usuario'];
    $clave = $_POST['clave'];
    $persona = array($_POST['usuario'], $_POST['clave']);
    $Resultado = $objUsuario->Get_Usuario_By_Play($persona);
    foreach ($Resultado as $key => $value) {
        if ($value['logeo'] == 1) {
            session_start();
            $personaId = $value['idusuario'];
            $ResultadoEstatus = $objUsuario->Get_Estatus_By_Usuario($personaId);
            foreach ($ResultadoEstatus as $valueEstatus) {
                $_SESSION['idusuario'] = $valueEstatus['id_usuario'];
                $_SESSION['nivel'] = $valueEstatus['nivel'];
                $_SESSION['puntaje'] = $valueEstatus['puntaje'];
                $_SESSION['tiempo_nivel1'] = $valueEstatus['tiempo_nivel1'];
                $_SESSION['tiempo_nivel2'] = $valueEstatus['tiempo_nivel2'];
                $_SESSION['tiempo_nivel3'] = $valueEstatus['tiempo_nivel3'];
                $_SESSION['repeticion_nivel1'] = $valueEstatus['repeticion_nivel1'];
                $_SESSION['repeticion_nivel2'] = $valueEstatus['repeticion_nivel2'];
                $_SESSION['repeticion_nivel3'] = $valueEstatus['repeticion_nivel3'];
                $_SESSION['posicion_ficha_abajo'] = $valueEstatus['posicion_ficha_abajo'];
                $_SESSION['posicion_ficha_arriba'] = $valueEstatus['posicion_ficha_arriba'];
                $_SESSION['posicion_ficha_derecha'] = $valueEstatus['posicion_ficha_derecha'];
                $_SESSION['posicion_ficha_izquierda'] = $valueEstatus['posicion_ficha_izquierda'];
                $_SESSION['acumulador_ficha'] = $valueEstatus['acumulador_ficha'];
            }
            $_SESSION['usuario_logeado'] = $value['usuario'];
            $msj = "<div class='alert alert-success' style='margin-top:20px;'>
                                Usuario autenticado. Espere...
                            </div>";

            if ($valueEstatus['nivel'] == 1) {
                header("refresh:0;url=panaca.php");
            } else if ($valueEstatus['nivel'] == 2) {
                header("refresh:0;url=auki.php");
            } else if ($valueEstatus['nivel'] == 3) {
                header("refresh:0;url=inca.php");
            }
        } else {
            $msj = "<div class='alert alert-danger' style='margin-top:20px;'>
                                Usario o Clave incorrecta
                            </div>";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../favicon.ico" />

        <title>Entra y juega</title>

        <!-- Bootstrap Core CSS -->
        <link href="admin/css/bootstrap.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="admin/css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="admin/css/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading text-center">
                            <h1 class="panel-title">Bienvenido, ingresa y juega</h1>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="index.php">
                                <fieldset>
                                    <div class="form-group">
                                        <input autocomplete="off" autofocus="" class="form-control" placeholder="Usuario" name="usuario" required="" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input autocomplete="off" class="form-control" placeholder="Clave" name="clave" type="password" required="" value="">
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="submit" class="btn btn-lg btn-success btn-block" value="Iniciar sesión" />
                                    <div class="text-center" style="margin-top: 10px">
                                        <a href="nuevo-usuario.php" class="btn btn-default btn-block">Usuario nuevo, regístrate aquí</a>
                                    </div>
                                    <?php
                                    echo $msj;
                                    ?>      
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>