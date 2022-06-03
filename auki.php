<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    require_once('negocio/ClsUsuario.php');
    $objUsuario = new ClsUsuario();
    $result = $objUsuario->Get_Estatus_By_Usuario($_SESSION['idusuario']);
    foreach ($result as $key => $value) {
        $idusuario = $value['id_usuario'];
        $puntaje = $value['puntaje'];
        $nivel = $value['nivel'];
        $acumulador_ficha = $value['acumulador_ficha'];
        $posicion_ficha_abajo = $value['posicion_ficha_abajo'];
        $posicion_ficha_izquierda = $value['posicion_ficha_izquierda'];
        $posicion_ficha_arriba = $value['posicion_ficha_arriba'];
        $posicion_ficha_derecha = $value['posicion_ficha_derecha'];
        if ($nivel == 1) {
            header("refresh:0;url=panaca.php");
        }
        if ($nivel == 3) {
            header("refresh:0;url=inca.php");
        }
    }
    ?>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>NIVEL AUKI</title>
            <link rel="stylesheet" href="index.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        </head>
        <body>
            <input type="hidden" class="idusuario" value="<?php echo $idusuario; ?>"/>
            <input type="hidden" class="puntaje" value="<?php echo $puntaje; ?>"/>
            <input type="hidden" class="nivel" value="<?php echo $nivel; ?>"/>
            <input type="hidden" class="acumulador_ficha" value="<?php echo $acumulador_ficha; ?>"/>
            <input type="hidden" class="posicion_ficha_abajo" value="<?php echo $posicion_ficha_abajo; ?>"/>
            <input type="hidden" class="posicion_ficha_arriba" value="<?php echo $posicion_ficha_arriba; ?>"/>
            <input type="hidden" class="posicion_ficha_derecha" value="<?php echo $posicion_ficha_derecha; ?>"/>
            <input type="hidden" class="posicion_ficha_izquierda" value="<?php echo $posicion_ficha_izquierda; ?>"/>
            <table cellspacing="0" cellpadding="0" class="tablero">
                <tr>
                    <td class="mostasa paso">
                        <div class="area_ficha efecto" style="left: 0; right: 0; bottom: 0; top: 0">
                            <span class="ficha efecto">
                                <img src="img/fichaRojaIntermedio.png" class="img_ficha efecto" width="100%" />
                            </span>
                        </div>
                        <div><span>P/F</span></div>
                    </td>
                    <td class="crema efecto"><div><span>1</span></div></td>
                    <td class="ladrillo efecto"><div><span>2</span></div></td>
                    <td class="petroleo efecto"><div><span>3</span></div></td>
                    <td class="mostasa efecto"><div><span>4</span></div></td>
                    <td class="petroleo efecto"><div><span>5</span></div></td>
                    <td class="ladrillo efecto"><div><span>6</span></div></td>
                    <!--<td class="mostasa efecto"><div><span>7</span></div></td>-->
                </tr>
                <tr>
                    <td class="crema efecto"><div><span>23</span></div></td>
                    <td colspan="5" rowspan="5">
                        <div class="fd_centro">    
                            <div style="text-align: right">
                                <img src="img/Kuzco.png" style="margin-top: 50%; margin-right: 3%" width="50%"/>
                            </div>
                            <div style="text-align: center">
                                <!--<div class="jugar" onclick="avanzar()"></div>-->
                                <div onclick="jugar()" class="btn_jugar">Jugar</div>
                            </div>
                            <div style="text-align: left">
                                <img src="" class="cara" style="margin-top: 75%; margin-left: 8%" width="50%"/>
                            </div>
                        </div>
                    </td>
                    <td class="crema efecto"><div><span>7</span></div></td>
                </tr>
                <tr>
                    <td class="ladrillo efecto"><div><span>22</div></td>
                    <td class="mostasa efecto"><div><span>8</div></td>
                </tr>
                <tr>
                    <td class="mostasa efecto"><div><span>21</span></div></td>
                    <td class="petroleo efecto"><div><span>9</span></div></td>
                </tr>
                <tr>
                    <td class="petroleo efecto"><div><span>20</span></div></td>
                    <td class="ladrillo efecto"><div><span>10</span></div></td>
                </tr>
                <tr>
                    <td class="crema efecto"><div><span>19</span></div></td>
                    <td class="mostasa efecto"><div><span>11</span></div></td>
                </tr>
                <tr>
                    <td class="ladrillo efecto"><div><span>18</span></div></td>
                    <td class="mostasa efecto"><div><span>17</span></div></td>
                    <td class="petroleo efecto"><div><span>16</span></div></td>
                    <td class="crema efecto"><div><span>15</span></div></td>
                    <td class="ladrillo efecto"><div><span>14</span></div></td>
                    <td class="petroleo efecto"><div><span>13</span></div></td>
                    <td class="naranja efecto"><div><span>12</span></div></td>
                    <!--<td class="mostasa efecto"><div><span>11</span></div></td>-->
                </tr>
            </table>
            <div class="salir_juego" onclick="salir()">Salir del juego</div>
            <div class="cuadro_merito">
                <div style="text-align: center; width: 100%; font-weight: bold; padding-bottom: 5px; border-bottom: 1px solid black; margin-bottom: 3px">RANKING</div>
                <table class="list_om">
                </table>
            </div>
            <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script type="text/javascript" src="index.js"></script>
        </body>
    </html>
    <?php
}
?>