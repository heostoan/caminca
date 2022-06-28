<?php
session_start();
session_unset();
session_destroy();
include '../negocio/ClsUsuario.php';

$objUsuario = new ClsUsuario();

$msj = "";
$vercodigo = 0;
$codigoencontrado = 0;
if (isset($_POST['usuario']) && isset($_POST['clave'])) {
    $msj = "";
    $login = $_POST['usuario'];
    $clave = $_POST['clave'];
    $persona = array($_POST['usuario'], $_POST['clave']);
    $Resultado = $objUsuario->Get_Usuario_By_Clave_Admin($persona);
    foreach ($Resultado as $key => $value) {
        if ($value['logeo'] == 1) {
            session_start();
            $_SESSION['usuario_logeado'] = $value['usuario'];
            $msj = "<div class='alert alert-success' style='margin-top:20px;'>
                                Usuario autenticado. Espere...
                            </div>";
            header("refresh:0;url=principal.php");
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

        <title>Admministrador juego</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                            <h1 class="panel-title">Bienvenido</h1>
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

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/startmin.js"></script>

    </body>
</html>