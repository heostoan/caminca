<?php
session_start();
if (!isset($_SESSION['usuario_logeado'])) {
    header("location:index.php");
} else {
    require_once('negocio/ClsUsuario.php');
    $objUsuario = new ClsUsuario();
    $result = $objUsuario->Get_Usuarios();
    ?>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title></title>
            <link rel="stylesheet" href="index_.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        </head>
        <body>
            <table cellspacing="0" cellpadding="0">
                <tr>
                    <td class="mostasa paso">
                        <div class="area_ficha efecto" style="left: 0; right: 0; bottom: 0; top: 0">
                            <span class="ficha efecto">
                                <img src="img/fichaVerdeBasico.png" class="img_ficha efecto" width="100%" />
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
                    <td class="mostasa efecto"><div><span>7</span></div></td>
                </tr>
                <tr>
                    <td class="crema efecto"><div><span>21</span></div></td>
                    <td colspan="6" rowspan="3">
                        <div class="fd_centro">    
                            <div style="text-align: right">
                                <img src="img/Kuzco.png" style="margin-top: 50%; margin-right: 3%" width="50%"/>
                            </div>
                            <div style="text-align: center">
                                <div class="jugar" onclick="avanzar()"></div>
                            </div>
                            <div style="text-align: left">
                                <img src="" class="cara" style="margin-top: 75%; margin-left: 8%" width="50%"/>
                            </div>
                        </div>
                    </td>
                    <td class="crema efecto"><div><span>8</span></div></td>
                </tr>
                <tr>
                    <td class="ladrillo efecto"><div><span>20</div></td>
                    <td class="ladrillo efecto"><div><span>9</div></td>
                </tr>
                <tr>
                    <td class="petroleo efecto"><div><span>19</span></div></td>
                    <td class="petroleo efecto"><div><span>10</span></div></td>
                </tr>
                <tr>
                    <td class="ladrillo efecto"><div><span>18</span></div></td>
                    <td class="mostasa efecto"><div><span>17</span></div></td>
                    <td class="petroleo efecto"><div><span>16</span></div></td>
                    <td class="crema efecto"><div><span>15</span></div></td>
                    <td class="ladrillo efecto"><div><span>14</span></div></td>
                    <td class="petroleo efecto"><div><span>13</span></div></td>
                    <td class="naranja efecto"><div><span>12</span></div></td>
                    <td class="mostasa efecto"><div><span>11</span></div></td>
                </tr>
            </table>
            <script type="text/javascript" src="index_.js"></script>
        </body>
    </html>
    <?php
}
?>