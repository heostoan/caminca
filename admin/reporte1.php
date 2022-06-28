<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    require_once('../negocio/ClsUsuario.php');
    $objUsuario = new ClsUsuario();
    $result = $objUsuario->Get_Reporte_Usuarios();
    ?>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="shortcut icon" href="../favicon.ico" />

            <title>Estado de todos los participantes</title>

            <!-- Bootstrap Core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">

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
                                <h1 class="page-header">Estado de todos los participantes</h1>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Gráficos
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">              
                                        <div class="col-md-12">
                                            <div id="piechart" class="col-md-6" style="height: 300px;"></div>
                                            <div id="piechart2" class="col-md-6" style="height: 300px;"></div>
                                            <div id="piechart3" class="col-md-6" style="height: 300px;"></div>
                                            <div id="piechart4" class="col-md-6" style="height: 300px;"></div>
                                            <div id="piechart5" class="col-md-6" style="height: 300px;"></div>
                                        </div>
                                        <!-- /.table-responsive -->
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Listado de datos
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">         
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th>Nombres y apellidos</th>
                                                            <th>Nivel</th>
                                                            <th>Puntaje acumulado</th>
                                                            <th>Tiempo PANAKA</th>
                                                            <th>Tiempo AUQUI</th>
                                                            <th>Tiempo INCA</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php
                                                        $est_time1 = "";
                                                        $est_time2 = "";
                                                        $est_time3 = "";
                                                        foreach ($result as $key => $value) {
                                                            if ($value['tiempo_nivel1'] === "00:00:00") {
                                                                $est_time1 = 'No iniciado';
                                                            } else {
                                                                $est_time1 = $value['tiempo_nivel1'];
                                                            }
                                                            if ($value['tiempo_nivel2'] === "00:00:00") {
                                                                $est_time2 = 'No alcanzado';
                                                            } else {
                                                                $est_time2 = $value['tiempo_nivel2'];
                                                            }
                                                            if ($value['tiempo_nivel3'] === "00:00:00") {
                                                                $est_time3 = 'No alcanzado';
                                                            } else {
                                                                $est_time3 = $value['tiempo_nivel3'];
                                                            }
                                                            ?>
                                                            <tr class="odd gradeX">
                                                                <td><?php echo $value['nombres'] . " " . $value['apellidos']; ?></td>
                                                                <td><?php echo $value['nivel']; ?></td>
                                                                <td><?php echo $value['puntaje']; ?></td>
                                                                <td><?php echo $est_time1; ?></td>
                                                                <td><?php echo $est_time2; ?></td>
                                                                <td><?php echo $est_time3; ?></td>
                                                            </tr>
                                                        <?php } ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- /.table-responsive -->
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

            <!-- Metis Menu Plugin JavaScript -->
            <script src="js/metisMenu.min.js"></script>

            <!-- DataTables JavaScript -->
            <script src="js/dataTables/jquery.dataTables.min.js"></script>
            <script src="js/dataTables/dataTables.bootstrap.min.js"></script>

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

            <!-- Custom Theme JavaScript -->
            <script src="js/startmin.js"></script>

            <script src="../loader.js"></script>
            <script type="text/javascript">
    <?php
    $result2 = $objUsuario->Get_Grap_Nivel_Usuarios();
    ?>
                google.charts.load('current', {'packages': ['corechart']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

                    var data = google.visualization.arrayToDataTable([
                        ['Nivel', 'Participantes'],
    <?php
    foreach ($result2 as $key => $value) {
        echo "['" . $value['nivel'] . "', " . $value['total'] . "],";
    }
    ?>
                    ]);

                    var options = {
                        title: 'Participantes por nivel',
                        is3D: true,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                    chart.draw(data, options);
                }
            </script>
            <script type="text/javascript">
    <?php
    $result2 = $objUsuario->Get_Grap_Edad_Usuarios();
    ?>
                google.charts.load('current', {'packages': ['corechart']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

                    var data = google.visualization.arrayToDataTable([
                        ['Nivel', 'Participantes'],
    <?php
    foreach ($result2 as $key => $value) {
        echo "['" . $value['edad'] . "', " . $value['total'] . "],";
    }
    ?>
                    ]);

                    var options = {
                        title: 'Participantes por edad',
                        is3D: true,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

                    chart.draw(data, options);
                }
            </script>
            <script type="text/javascript">
    <?php
    $result2 = $objUsuario->Get_Grap_Sexo_Usuarios();
    ?>
                google.charts.load('current', {'packages': ['corechart']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

                    var data = google.visualization.arrayToDataTable([
                        ['Nivel', 'Participantes'],
    <?php
    foreach ($result2 as $key => $value) {
        echo "['" . $value['sexo'] . "', " . $value['total'] . "],";
    }
    ?>
                    ]);

                    var options = {
                        title: 'Participantes por sexo',
                        is3D: true,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('piechart3'));

                    chart.draw(data, options);
                }
            </script>
            <script type="text/javascript">
    <?php
    $result2 = $objUsuario->Get_Grap_TipoColegio_Usuarios();
    ?>
                google.charts.load('current', {'packages': ['corechart']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

                    var data = google.visualization.arrayToDataTable([
                        ['Tipo de colegio', 'Participantes'],
    <?php
    foreach ($result2 as $key => $value) {
        echo "['" . $value['tipo_colegio'] . "', " . $value['total'] . "],";
    }
    ?>
                    ]);

                    var options = {
                        title: 'Participantes por tipo de colegio',
                        is3D: true,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('piechart4'));

                    chart.draw(data, options);
                }
            </script>
            <script type="text/javascript">
    <?php
    $result2 = $objUsuario->Get_Grap_NivlEstudios_Usuarios();
    ?>
                google.charts.load('current', {'packages': ['corechart']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

                    var data = google.visualization.arrayToDataTable([
                        ['Nivel estudios', 'Participantes'],
    <?php
    foreach ($result2 as $key => $value) {
        echo "['" . $value['nivel_estudios'] . "', " . $value['total'] . "],";
    }
    ?>
                    ]);

                    var options = {
                        title: 'Participantes por nivel de estudios',
                        is3D: true,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('piechart5'));

                    chart.draw(data, options);
                }
            </script>
        </body>
    </html>
    <?php
}
?>