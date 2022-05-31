<?php
header("Content-type: text/javascript");
session_start();
?>
var puntos_totales = <?php echo $_SESSION['puntaje']; ?>;
var posicion_ficha = 0;
var nivel = <?php echo $_SESSION['nivel']; ?>;
var valor_dado = 2;
var paso_ancho = $(".paso").outerWidth();
var paso_alto = $(".paso").outerHeight();
var acumulador_valor_dados = 0;
var posicion_ficha_abajo = 0;
var posicion_ficha_arriba = 0;
var posicion_ficha_derecha = 0;
var posicion_ficha_izquierda = 0;
var nivel_basico = true;
var nivel_intermedio = false;
var nivel_avanzado = false;
var data = [];
var totalSeconds = 0;

function readTextFile(file, callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", file, true);
    rawFile.onreadystatechange = function () {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}

function jugar() {
    readTextFile("./data_preguntas.json", function (text) {
        data = JSON.parse(text);
        for (var i = 0; i < data.length; i++) {
            if (parseInt(i) === parseInt(acumulador_valor_dados) && parseInt(data[i]["nivel"]) === parseInt(nivel)) {
                var respuesta_correta = data[i]["respuesta"];
                if (data[i]["respuesta"] == 1) {
                    respuesta_correta = data[i]["alternativa_1"];
                }
                if (data[i]["respuesta"] == 2) {
                    respuesta_correta = data[i]["alternativa_2"];
                }
                if (data[i]["respuesta"] == 3) {
                    respuesta_correta = data[i]["alternativa_3"];
                }
                if (data[i]["respuesta"] == 4) {
                    respuesta_correta = data[i]["alternativa_4"];
                }
                if (data[i]["respuesta"] == 5) {
                    respuesta_correta = data[i]["alternativa_5"];
                }
                Swal.fire({
                    icon: 'question',
                    title: 'Responda la siguiente pregunta',
                    input: 'text',
                    inputLabel: data[i]["pregunta"],
                    inputPlaceholder: 'Coloca aquí tu respuesta',
                    confirmButtonText: 'Validar'
                }).then((result) => {
                    if (result.isConfirmed) {
                        var rpta = result.value;
                        if (respuesta_correta === rpta) {
                            puntos_totales = puntos_totales + 50;
                            Swal.fire({
                                icon: 'success',
                                title: '¡May Bien!',
                                text: 'Respondiste correctamente la pregunta'
                            }).then((result) => {
                                Swal.fire({
                                    position: 'top-end',
                                    icon: 'info',
                                    title: 'Aviso',
                                    text: 'Ganaste 50 puntos y ya cuentas con ' + puntos_totales + ' puntos.',
                                    showConfirmButton: false,
                                    timer: 1800
                                });
                                jQuery.ajax({
                                    url: 'admin/controlador/usuario.php',
                                    data: 'puntos_totales=' + puntos_totales + '&id_usuario=' + <?php echo $_SESSION['idusuario']; ?> + '&accion=ActualizarPuntos',
                                    cache: false,
                                    dataType: 'html',
                                    type: "POST"
                                });
                            });
                            for (var i = 0, max = valor_dado; i < max; i++) {
                                acumulador_valor_dados++;
                                if (acumulador_valor_dados <= 6) {
                                    total_avance_arriba = paso_ancho - 14.5;
                                    posicion_ficha_arriba += total_avance_arriba;
                                    $(".area_ficha").css("left", posicion_ficha_arriba);
                                } else if (acumulador_valor_dados >= 7 && acumulador_valor_dados <= 12) {
                                    total_avance_derecha = paso_alto - 14.5;
                                    posicion_ficha_derecha += total_avance_derecha;
                                    $(".area_ficha").css("top", posicion_ficha_derecha);
                                } else if (acumulador_valor_dados >= 13 && acumulador_valor_dados <= 18) {
                                    total_avance_abajo = paso_ancho - 14.5;
                                    posicion_ficha_abajo += total_avance_abajo;
                                    $(".area_ficha").css("left", "");
                                    $(".area_ficha").css("right", posicion_ficha_abajo);
                                } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 24) {
                                    total_avance_izquierda = paso_alto - 14.5;
                                    posicion_ficha_izquierda += total_avance_izquierda;
                                    $(".area_ficha").css("top", "");
                                    $(".area_ficha").css("bottom", posicion_ficha_izquierda);
                                    if (acumulador_valor_dados >= 24) {
                                        $(".jugar").attr('onclick', '');
                                        if (nivel_basico === true) {
                                            $(".img_ficha").attr('src', 'img/fichaRojaIntermedio.png');
                                            $('.mostasa').addClass('crema_i').removeClass('mostasa');
                                            $('.crema').addClass('ladrillo_i').removeClass('crema');
                                            $('.ladrillo').addClass('petroleo_i').removeClass('ladrillo');
                                            $('.petroleo').addClass('naranja_i').removeClass('petroleo');
                                            $('.naranja').addClass('mostasa_i').removeClass('naranja');
                                            nivel_basico = false;
                                            nivel_intermedio = true;
                                        } else if (nivel_intermedio === true) {
                                            $(".img_ficha").attr('src', 'img/fichaAzulAvanzado.png');
                                            $('.mostasa_i').addClass('crema_a').removeClass('mostasa_i');
                                            $('.crema_i').addClass('ladrillo_a').removeClass('crema_i');
                                            $('.ladrillo_i').addClass('petroleo_a').removeClass('ladrillo_i');
                                            $('.petroleo_i').addClass('naranja_a').removeClass('petroleo_i');
                                            $('.naranja_i').addClass('mostasa_a').removeClass('naranja_i');
                                            nivel_intermedio = false;
                                            nivel_avanzado = true;
                                        } else if (nivel_avanzado === true) {
                                            nivel_avanzado = false;
                                        }
                                    }
                                }
                            }
                        } else {
                            puntos_totales = puntos_totales - 20;
                            Swal.fire({
                                icon: 'error',
                                title: '¡Ay!',
                                text: 'No respondiste correctamente la pregunta'
                            }).then((result) => {
                                Swal.fire({
                                    position: 'top-end',
                                    icon: 'info',
                                    title: 'Aviso',
                                    text: 'Perdiste 20 puntos, ahora tiene ' + puntos_totales + ' puntos.',
                                    showConfirmButton: false,
                                    timer: 1800
                                })
                                jQuery.ajax({
                                    url: 'admin/controlador/usuario.php',
                                    data: 'puntos_totales=' + puntos_totales + '&id_usuario=' + <?php echo $_SESSION['idusuario']; ?> + '&accion=ActualizarPuntos',
                                    cache: false,
                                    dataType: 'html',
                                    type: "POST"
                                });
                            });
                        }
                    }
                })
                break;

            }
        }
    })
}

function salir() {
    Swal.fire({
      title: 'Advertencia',
      text: "¿Estás seguro que deseas abandonar la partida?",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      cancelButtonText: 'No',
      confirmButtonText: 'Si'
    }).then((result) => {
      if (result.isConfirmed) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'id_usuario=' + <?php echo $_SESSION['idusuario']; ?> + '&accion=RepeticionNivel1',
            cache: false,
            dataType: 'html',
            type: "POST",
            success: function (datos) {
                location.href = "index.php";
            }
        });
      }
    })
}

function countTimer() {
    ++totalSeconds;
    localStorage.setItem("totalSeconds", totalSeconds);
    var hour = Math.floor(totalSeconds / 3600);
    var minute = Math.floor((totalSeconds - hour * 3600) / 60);
    var seconds = totalSeconds - (hour * 3600 + minute * 60);
    if (hour < 10)
        hour = "0" + hour;
    if (minute < 10)
        minute = "0" + minute;
    if (seconds < 10)
        seconds = "0" + seconds;
    var tiempo = hour + ":" + minute + ":" + seconds;
    jQuery.ajax({
        url: 'admin/controlador/usuario.php',
        data: 'tiempo=' + tiempo + '&id_usuario=' + <?php echo $_SESSION['idusuario']; ?> + '&accion=ActualizarTiempoNivel1',
        cache: false,
        dataType: 'html',
        type: "POST"
    });
}

$(document).ready(function () {
    Swal.fire({
        title: 'Bienvenido',
        text: '¡Usted cuenta con '+ puntos_totales +' puntos!',
        confirmButtonText: 'Entendido'
    });
    setInterval(function () {
        countTimer()
    }, 1000);
});