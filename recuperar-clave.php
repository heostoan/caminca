<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../favicon.ico" />

        <title>Recuperar credenciales</title>

        <!-- Bootstrap Core CSS -->
        <link href="admin/css/bootstrap.min.css" rel="stylesheet">

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
            <div id="wrapper">
                <div class="row text-center">
                    <div class="col-md-4 text-left" style="margin: 0 auto; display: inline-block; float: none">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Recuperación de credenciales
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <form role="form" enctype="multipart/form-data">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>1. Correo electrónico*</label>
                                                <input required="" class="form-control correo">
                                            </div>
                                            <div class="form-group">
                                                <label>2. Celular*</label>
                                                <input value="<?php // echo $peso;        ?>" required="" class="form-control celular"  onkeypress="return soloNumeros(event)" maxlength="9" onkeyup="limpiarNumero(this); primer9(this)" onchange="limpiarNumero(this)">
                                            </div>
                                            <div class="">
                                                (*) Campos obligatorios
                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <button type="button" class="btn btn-success btn_recuperar_usuario">Consultar</button>
                                            <a href="index.php" class="btn btn-primary">Cancelar</a>
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
        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="admin/js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="admin/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="admin/js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <!--<script src="js/startmin.js"></script>-->

        <script src="admin/js/util.js"></script>
        <script src="admin/js/sweetalert.min.js"></script>
        <script src="admin/js/actions.js"></script>
    </body>
</html>