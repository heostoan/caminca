var idusuario = $(".idusuario").val();
var puntos_totales = parseInt($(".puntaje").val());
var nivel = $(".nivel").val();
var nombre_nivel = "";
if (nivel == 1) {
    nombre_nivel = "Básico";
}
if (nivel == 2) {
    nombre_nivel = "Intermedio";
}
if (nivel == 3) {
    nombre_nivel = "Avanzado";
}
var valor_dado = 2;
var paso_ancho = $(".paso").outerWidth();
var paso_alto = $(".paso").outerHeight();
var acumulador_valor_dados_total = $(".acumulador_ficha").val();
var acumulador_valor_dados = 1;
var posicion_ficha_abajo = parseInt($(".posicion_ficha_abajo").val());
var posicion_ficha_arriba = parseInt($(".posicion_ficha_arriba").val());
var posicion_ficha_derecha = parseInt($(".posicion_ficha_derecha").val());
var posicion_ficha_izquierda = parseInt($(".posicion_ficha_izquierda").val());
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
            //console.log(data[i]["id_alt"] + "==" + acumulador_valor_dados + "&&" + data[i]["nivel"] + "==" + nivel)
            if (parseInt(data[i]["id_alt"]) == parseInt(acumulador_valor_dados) && parseInt(data[i]["nivel"]) == parseInt(nivel)) {
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
                                    data: 'puntos_totales=' + puntos_totales + '&id_usuario=' + idusuario + '&accion=ActualizarPuntos',
                                    cache: false,
                                    dataType: 'html',
                                    type: "POST"
                                });
                            });
                            avanzarFicha(2);
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
                                });
                                jQuery.ajax({
                                    url: 'admin/controlador/usuario.php',
                                    data: 'puntos_totales=' + puntos_totales + '&id_usuario=' + idusuario + '&accion=ActualizarPuntos',
                                    cache: false,
                                    dataType: 'html',
                                    type: "POST"
                                });
                                //retrocederFicha(1);
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
            if (nivel == 1) {
                jQuery.ajax({
                    url: 'admin/controlador/usuario.php',
                    data: 'id_usuario=' + idusuario + '&accion=RepeticionNivel1',
                    cache: false,
                    dataType: 'html',
                    type: "POST",
                    success: function (datos) {
                        location.href = "index.php";
                    }
                });
            }
            if (nivel == 2) {
                jQuery.ajax({
                    url: 'admin/controlador/usuario.php',
                    data: 'id_usuario=' + idusuario + '&accion=RepeticionNivel2',
                    cache: false,
                    dataType: 'html',
                    type: "POST",
                    success: function (datos) {
                        location.href = "index.php";
                    }
                });
            }
            if (nivel == 3) {
                jQuery.ajax({
                    url: 'admin/controlador/usuario.php',
                    data: 'id_usuario=' + idusuario + '&accion=RepeticionNivel3',
                    cache: false,
                    dataType: 'html',
                    type: "POST",
                    success: function (datos) {
                        location.href = "index.php";
                    }
                });
            }
        }
    });
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
    if (nivel == 1) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'tiempo=' + tiempo + '&id_usuario=' + idusuario + '&accion=ActualizarTiempoNivel1',
            cache: false,
            dataType: 'html',
            type: "POST"
        });
    }
    if (nivel == 2) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'tiempo=' + tiempo + '&id_usuario=' + idusuario + '&accion=ActualizarTiempoNivel2',
            cache: false,
            dataType: 'html',
            type: "POST"
        });
    }
    if (nivel == 3) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'tiempo=' + tiempo + '&id_usuario=' + idusuario + '&accion=ActualizarTiempoNivel3',
            cache: false,
            dataType: 'html',
            type: "POST"
        });
    }
}

function avanzarFicha(valor_dado) {
    for (var i = 0, max = valor_dado; i < max; i++) {
        acumulador_valor_dados_total++;
        acumulador_valor_dados++;
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'acumulador_ficha=' + acumulador_valor_dados + '&id_usuario=' + idusuario + '&accion=ActualizarAcumuladorPosicionFicha',
            cache: false,
            dataType: 'html',
            type: "POST"
        });
        if (acumulador_valor_dados <= 7) {
            total_avance_arriba = paso_ancho - 14.5;
            posicion_ficha_arriba = posicion_ficha_arriba + total_avance_arriba;
            $(".area_ficha").css("left", posicion_ficha_arriba);
            $(".area_ficha").css("top", "0");
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'posicion_ficha_arriba=' + posicion_ficha_arriba + '&id_usuario=' + idusuario + '&accion=ActualizarPosicionArriba',
                cache: false,
                dataType: 'html',
                type: "POST"
            });
        } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 13) {
            total_avance_derecha = paso_alto - 14.5;
            posicion_ficha_derecha = posicion_ficha_derecha + total_avance_derecha;
            $(".area_ficha").css("top", posicion_ficha_derecha);
            $(".area_ficha").css("right", "0");
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'posicion_ficha_derecha=' + posicion_ficha_derecha + '&id_usuario=' + idusuario + '&accion=ActualizarPosicionDerecha',
                cache: false,
                dataType: 'html',
                type: "POST"
            });
        } else if (acumulador_valor_dados >= 14 && acumulador_valor_dados <= 19) {
            total_avance_abajo = paso_ancho - 14.5;
            posicion_ficha_abajo = posicion_ficha_abajo + total_avance_abajo;
            $(".area_ficha").css("left", "");
            $(".area_ficha").css("right", posicion_ficha_abajo);
            $(".area_ficha").css("bottom", "0");
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'posicion_ficha_abajo=' + posicion_ficha_abajo + '&id_usuario=' + idusuario + '&accion=ActualizarPosicionAbajo',
                cache: false,
                dataType: 'html',
                type: "POST"
            });
        } else if (acumulador_valor_dados >= 20 && acumulador_valor_dados <= 25) {
            total_avance_izquierda = paso_alto - 14.5;
            posicion_ficha_izquierda = total_avance_izquierda + posicion_ficha_izquierda;
            $(".area_ficha").css("top", "");
            $(".area_ficha").css("bottom", posicion_ficha_izquierda);
            $(".area_ficha").css("left", "0");
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'posicion_ficha_izquierda=' + posicion_ficha_izquierda + '&id_usuario=' + idusuario + '&accion=ActualizarPosicionIzquierda',
                cache: false,
                dataType: 'html',
                type: "POST"
            });
            if (acumulador_valor_dados == 24) {
                posicion_ficha_abajo = 0;
                posicion_ficha_arriba = 0;
                posicion_ficha_derecha = 0;
                posicion_ficha_izquierda = 0;
                $('.area_ficha').removeAttr('style');
            }
            if (acumulador_valor_dados >= 24) {
                console.log(acumulador_valor_dados_total)
                if (acumulador_valor_dados_total != 72) {
                    acumulador_valor_dados = 0;
                } else {
                    acumulador_valor_dados = 73;
                }
                if (nivel_basico === true && nivel_intermedio === false && nivel_avanzado === false) {
                    $(".img_ficha").attr('src', 'img/fichaRojaIntermedio.png');
                    $('.mostasa').addClass('crema_i').removeClass('mostasa');
                    $('.crema').addClass('ladrillo_i').removeClass('crema');
                    $('.ladrillo').addClass('petroleo_i').removeClass('ladrillo');
                    $('.petroleo').addClass('naranja_i').removeClass('petroleo');
                    $('.naranja').addClass('mostasa_i').removeClass('naranja');
                    nivel_basico = false;
                    nivel_intermedio = true;
                    nivel = 2;
                    jQuery.ajax({
                        url: 'admin/controlador/usuario.php',
                        data: 'nivel=2&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                        cache: false,
                        dataType: 'html',
                        type: "POST"
                    });
                } else if (nivel_intermedio === true && nivel_basico === false && nivel_avanzado === false) {
                    $(".img_ficha").attr('src', 'img/fichaAzulAvanzado.png');
                    $('.mostasa_i').addClass('crema_a').removeClass('mostasa_i');
                    $('.crema_i').addClass('ladrillo_a').removeClass('crema_i');
                    $('.ladrillo_i').addClass('petroleo_a').removeClass('ladrillo_i');
                    $('.petroleo_i').addClass('naranja_a').removeClass('petroleo_i');
                    $('.naranja_i').addClass('mostasa_a').removeClass('naranja_i');
                    nivel_intermedio = false;
                    nivel_avanzado = true;
                    nivel = 3;
                    jQuery.ajax({
                        url: 'admin/controlador/usuario.php',
                        data: 'nivel=3&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                        cache: false,
                        dataType: 'html',
                        type: "POST"
                    });
                } else if (nivel_basico === false && nivel_intermedio === false && nivel_avanzado === true) {
                    nivel_avanzado = false;
                }
            }
        }
    }
}

function retrocederFicha(valor_dado) {
    if (acumulador_valor_dados != 1) {
        for (var i = 0, max = valor_dado; i < max; i++) {
            if (acumulador_valor_dados <= 7) {
                total_avance_arriba = paso_ancho - 14.5;
                posicion_ficha_arriba = posicion_ficha_arriba - total_avance_arriba;
                $(".area_ficha").css("left", posicion_ficha_arriba);
            } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 11) {
                total_avance_derecha = paso_alto - 14.5;
                posicion_ficha_derecha -= total_avance_derecha;
                $(".area_ficha").css("top", posicion_ficha_derecha);
            } else if (acumulador_valor_dados >= 12 && acumulador_valor_dados <= 18) {
                total_avance_abajo = paso_ancho - 14.5;
                posicion_ficha_abajo = posicion_ficha_abajo - total_avance_abajo;
                $(".area_ficha").css("left", "");
                $(".area_ficha").css("right", posicion_ficha_abajo);
            } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 22) {
                total_avance_izquierda = paso_alto - 14.5;
                posicion_ficha_izquierda = posicion_ficha_izquierda - total_avance_izquierda;
                $(".area_ficha").css("top", "");
                $(".area_ficha").css("bottom", posicion_ficha_izquierda);
                if (acumulador_valor_dados >= 24) {
                    acumulador_valor_dados = 1;
                    posicion_ficha_abajo = 0;
                    posicion_ficha_arriba = 0;
                    posicion_ficha_derecha = 0;
                    posicion_ficha_izquierda = 0;
                    if (nivel_basico === true && nivel_intermedio === false && nivel_avanzado === false) {
                        $(".img_ficha").attr('src', 'img/fichaRojaIntermedio.png');
                        $('.mostasa').addClass('crema_i').removeClass('mostasa');
                        $('.crema').addClass('ladrillo_i').removeClass('crema');
                        $('.ladrillo').addClass('petroleo_i').removeClass('ladrillo');
                        $('.petroleo').addClass('naranja_i').removeClass('petroleo');
                        $('.naranja').addClass('mostasa_i').removeClass('naranja');
                        nivel_basico = false;
                        nivel_intermedio = true;
                        nivel = 2;
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'nivel=2&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                            cache: false,
                            dataType: 'html',
                            type: "POST"
                        });
                    } else if (nivel_intermedio === true && nivel_basico === false && nivel_avanzado === false) {
                        $(".img_ficha").attr('src', 'img/fichaAzulAvanzado.png');
                        $('.mostasa_i').addClass('crema_a').removeClass('mostasa_i');
                        $('.crema_i').addClass('ladrillo_a').removeClass('crema_i');
                        $('.ladrillo_i').addClass('petroleo_a').removeClass('ladrillo_i');
                        $('.petroleo_i').addClass('naranja_a').removeClass('petroleo_i');
                        $('.naranja_i').addClass('mostasa_a').removeClass('naranja_i');
                        nivel_intermedio = false;
                        nivel_avanzado = true;
                        nivel = 3;
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'nivel=3&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                            cache: false,
                            dataType: 'html',
                            type: "POST"
                        });
                    } else if (nivel_basico === false && nivel_intermedio === false && nivel_avanzado === true) {
                        nivel_avanzado = false;
                    }
                }
            }
            acumulador_valor_dados--;
            acumulador_valor_dados_total--;
        }
    }
}

$(document).ready(function () {
    Swal.fire({
        title: 'Bienvenido, usted se encuentra en el nivel ' + nombre_nivel,
        text: '¡Usted cuenta con ' + puntos_totales + ' puntos!',
        confirmButtonText: 'Comenzar a jugar'
    });
    setInterval(function () {
        countTimer()
    }, 1000);

    //SETEAR POSICION FICHA AL CARGAR PAGINA
    if (acumulador_valor_dados <= 7) {
        $(".area_ficha").css("left", posicion_ficha_arriba);
    }
    if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 13) {
        $(".area_ficha").css("left", posicion_ficha_arriba);
        $(".area_ficha").css("top", posicion_ficha_derecha);
    }
    if (acumulador_valor_dados >= 14 && acumulador_valor_dados <= 19) {
        $(".area_ficha").css("top", posicion_ficha_derecha);
        $(".area_ficha").css("right", posicion_ficha_abajo);
        $(".area_ficha").css("left", "");
    }
    if (acumulador_valor_dados >= 20 && acumulador_valor_dados <= 25) {
        $(".area_ficha").css("top", "");
        $(".area_ficha").css("right", posicion_ficha_abajo);
        $(".area_ficha").css("left", "");
        $(".area_ficha").css("bottom", posicion_ficha_izquierda);
    }

    //SETEAR EL NIVEL DEL JUGADOR -->
    if (nivel == 2) {
        $(".img_ficha").attr('src', 'img/fichaRojaIntermedio.png');
        $('.mostasa').addClass('crema_i').removeClass('mostasa');
        $('.crema').addClass('ladrillo_i').removeClass('crema');
        $('.ladrillo').addClass('petroleo_i').removeClass('ladrillo');
        $('.petroleo').addClass('naranja_i').removeClass('petroleo');
        $('.naranja').addClass('mostasa_i').removeClass('naranja');
        nivel_basico = false;
        nivel_intermedio = true;
    }

    if (nivel == 3) {
        $(".img_ficha").attr('src', 'img/fichaAzulAvanzado.png');
        $('.mostasa_i').addClass('crema_a').removeClass('mostasa_i');
        $('.crema_i').addClass('ladrillo_a').removeClass('crema_i');
        $('.ladrillo_i').addClass('petroleo_a').removeClass('ladrillo_i');
        $('.petroleo_i').addClass('naranja_a').removeClass('petroleo_i');
        $('.naranja_i').addClass('mostasa_a').removeClass('naranja_i');
        nivel_intermedio = false;
        nivel_avanzado = true;
    }

});