<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="principal.php">Administrador Juego</a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>

    <!-- Top Navigation: Left Menu -->
    <ul class="nav navbar-nav navbar-left navbar-top-links">
        <li><a href="/caminca"><i class="fa fa-home fa-fw"></i> Ir al juego</a></li>
    </ul>

    <!-- Top Navigation: Right Menu -->
    <ul class="nav navbar-right navbar-top-links">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> Administrador <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="index.php"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a>
                </li>
            </ul>
        </li>
    </ul>

    <!-- Sidebar -->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">

            <ul class="nav" id="side-menu">
                <!--<li>
                    <a href="principal.php"><i class="fa fa-sitemap fa-fw"></i> Contenidos<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="usuarios.php"><i class="fa fa-table fa-fw"></i> Usuario</a>
                        </li>
                    </ul>
                </li>-->
                <li>
                    <a href="principal.php"><i class="fa fa-copy fa-fw"></i> Reportes<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="reporte1.php"><i class="fa fa-table fa-fw"></i> Todos los niveles</a>
                        </li>
                        <li>
                            <a href="reporte2.php"><i class="fa fa-table fa-fw"></i> Usuarios PANACA</a>
                        </li>
                        <li>
                            <a href="reporte3.php"><i class="fa fa-table fa-fw"></i> Usuarios AUQUI</a>
                        </li>
                        <li>
                            <a href="reporte4.php"><i class="fa fa-table fa-fw"></i> Usuarios INCA</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
</nav>