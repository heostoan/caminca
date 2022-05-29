<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    $idmodelo = "";
    $modelo = "";
    $color = "";
    $img_banner = "";
    $img_secundaria = "";
    $idproducto = "";
    if (isset($_GET['q'])) {
        $id = base64_decode($_GET['q']);
        require_once('../negocio/ClsModelos.php');
        $objModelos = new ClsModelos();
        $result = $objModelos->Get_Modelos_By_Admin($id);
        if (isset($id)) {
            $idmodelo = $id;
        }
        foreach ($result as $key => $value) {
            $modelo = $value['modelo'];
            $color = $value['color'];
            $img_banner = $value['img_banner'];
            $img_secundaria = $value['img_secundaria'];
            $idproducto = $value['idproducto'];
        }
    }
    
    require_once('../negocio/ClsProductos.php');
    $objProductos = new ClsProductos();
    $result = $objProductos->Get_Productos();
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
                                <h1 class="page-header">Mantenedor de modelos</h1>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Gestión de modelos
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <img src="img/mod_desc1.png" alt="" width="100%" />
                                            <img src="img/mod_desc2.png" alt="" width="100%" />
                                            <form role="form">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                    <input class="idmodelo" type="hidden" value="<?php echo $idmodelo; ?>" />
                                                        <label>1. Modelo</label>
                                                        <input value="<?php echo $modelo; ?>" required="" class="form-control modelo">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>2. Color</label>
                                                        <input value="<?php echo $color; ?>" required="" class="form-control color">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>3. Producto</label>
                                                        <select class="form-control idproducto">
                                                            <?php foreach ($result as $key => $value) {
                                                                ?>
                                                                <option <?php if($value['idproducto']==$idproducto){ echo 'selected'; } ?> value="<?php echo $value['idproducto']; ?>"><?php echo $value['titulo_pagina']; ?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                    <button type="button" class="btn btn-success <?php
                                                    if ($idmodelo == "") {
                                                        echo 'btn_guardar_modelo';
                                                    } else {
                                                        echo 'btn_editar_modelo';
                                                    }
                                                    ?>">Guardar modelo</button>
                                                    <a href="modelos.php" class="btn btn-primary">Cancelar</a>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label>4. Imagen Slider</label>
                                                        <input required="" name="img_slider_modelo" type="file" id="img_slider_modelo">
                                                        <input type="hidden" class="img_banner" value="<?php
                                                             if ($img_banner != '') {
                                                                 echo $img_banner;
                                                             }
                                                             ?>" />
                                                        <p class="help-block">La medida de la imagen es en 800px de ancho por 800px de alto, en formatos (JPG, PNG, GIF o SVG).</p>
                                                        <img src="<?php
                                                    if ($img_banner != '') {
                                                        echo '../' . $img_banner;
                                                    }
                                                    ?>" class="card-img-top" width="100%" style="<?php
                                                    if ($img_banner != '') {
                                                        echo 'display: block';
                                                    } else {
                                                        echo 'display: none';
                                                    }
                                                    ?>" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label>5.Imagen detalle</label>
                                                        <input required="" name="img_detalle_modelo" type="file" id="img_detalle_modelo">
                                                        <input type="hidden" class="img_secundaria" value="<?php
                                                             if ($img_secundaria != '') {
                                                                 echo $img_secundaria;
                                                             }
                                                             ?>" />
                                                        <p class="help-block">La medida de la imagen es en 1080px de ancho por 900px de alto, en formatos (JPG, PNG, GIF).</p>
                                                        <img src="<?php
                                                    if ($img_secundaria != '') {
                                                        echo '../' . $img_secundaria;
                                                    }
                                                    ?>" class="card-img-top2" width="100%" style="<?php
                                                    if ($img_secundaria != '') {
                                                        echo 'display: block';
                                                    } else {
                                                        echo 'display: none';
                                                    }
                                                    ?>" />
                                                    </div>
                                                </div>
                                            </form>
                                            <!-- /.col-lg-6 (nested) -->
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