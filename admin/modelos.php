<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    require_once('../negocio/ClsModelos.php');
    $objModelos = new ClsModelos();
    $result = $objModelos->Get_Modelos();
    ?>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="shortcut icon" href="../favicon.ico" />

            <title>Manager Web Zuitien</title>

            <!-- Bootstrap Core CSS -->
            <link href="css/bootstrap.css" rel="stylesheet">

            <!-- MetisMenu CSS -->
            <link href="css/metisMenu.min.css" rel="stylesheet">

            <!-- DataTables CSS -->
            <link href="css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

            <!-- DataTables Responsive CSS -->
            <link href="css/dataTables/dataTables.responsive.css" rel="stylesheet">

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

                <!-- Page Content -->
                <div id="page-wrapper">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">Modelos</h1>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <p>
                                    <a href="nuevo-modelo.php" class="btn btn-primary btn-lg btn-block">Crear un nuevo modelo</a>
                                </p>
                            </div>
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Listado de modelos
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>Modelo</th>
                                                        <th>Color</th>
                                                        <th>Producto</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>                                                    
                                                    <?php foreach ($result as $key => $value) { ?>
                                                        <tr class="odd gradeX">
                                                            <td><?php echo $value['modelo']; ?></td>
                                                            <td><?php echo $value['color']; ?></td>
                                                            <td><?php echo $value['nombre_menu']; ?></td>
                                                            <td>
                                                                <a href="nuevo-modelo.php?q=<?php echo base64_encode($value['idmodelo']); ?>" class="btn btn-warning">Editar</a>
                                                                <button class="btn btn-danger" onclick="eliminarModelo(<?php echo $value['idmodelo']; ?>)">Eliminar</button>
                                                            </td>
                                                        </tr>
                                                    <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>

                    </div>
                </div>

            </div>

            <!-- jQuery -->
            <script src="js/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>

            <!-- DataTables JavaScript -->
            <script src="js/dataTables/jquery.dataTables.min.js"></script>
            <script src="js/dataTables/dataTables.bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="js/metisMenu.min.js"></script>

            <!-- Custom Theme JavaScript -->
            <script src="js/startmin.js"></script>

            <!-- Page-Level Demo Scripts - Tables - Use for reference -->
            <script>
                var tb = jQuery.noConflict();
                tb(document).ready(function () {
                    tb('#dataTables-example').DataTable({
                        responsive: true
                    });
                });
            </script>

            <script src="js/sweetalert.min.js"></script>
            <script src="js/actions.js"></script>
        </body>
    </html>
    <?php
}
?>