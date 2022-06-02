<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    ?>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="shortcut icon" href="../favicon.ico" />

            <title>Usuario nuevo</title>

            <!-- Bootstrap Core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">

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

            <div id="wrapper">
                <?php
                include_once './header.php';
                ?>

                <div id="page-wrapper">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">Mantenedor de usuarios</h1>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Gestión de usuario
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <form role="form" enctype="multipart/form-data">
                                                <div class="col-lg-6">
                                                    <!--<input class="idproducto" type="hidden" value="<?php echo $idproducto; ?>" />-->
                                                    <div class="form-group">
                                                        <label>1. Nombres</label>
                                                        <input value="<?php // echo $nombre_menu;  ?>" required="" class="form-control nombres">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>2. Apellidos</label>
                                                        <input value="<?php // echo $titulo_pagina;  ?>" required="" class="form-control apellidos">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>3. Edad</label>
                                                        <input value="<?php // echo $tamanho;  ?>" required="" class="form-control edad">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label>4. Celular</label>
                                                        <input value="<?php // echo $peso;  ?>" required="" class="form-control celular">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>5. Usuario</label>
                                                        <input value="<?php // echo $previene;  ?>" required="" class="form-control usuario">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>6. Clave</label>
                                                        <input value="<?php // echo $previene;  ?>" required="" class="form-control clave">
                                                    </div>
                                                </div>
                                                <div class="col-md-12 text-center">
                                                    <button type="button" class="btn btn-success btn_guardar_usuario">Guardar</button>
                                                    <a href="usuarios.php" class="btn btn-primary">Cancelar</a>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.row (nested) -->
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /#page-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- jQuery -->
            <script src="js/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="js/metisMenu.min.js"></script>

            <!-- Custom Theme JavaScript -->
            <!--<script src="js/startmin.js"></script>-->

            <script src="js/General.js"></script>
            <script src="js/sweetalert.min.js"></script>
            <script src="js/actions.js"></script>
        </body>
    </html>
    <?php
}
?>