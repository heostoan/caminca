var idusuario = $(".idusuario").val();
var puntos_totales = parseInt($(".puntaje").val());
var nivel = $(".nivel").val();
var nombre_nivel = "";
var nivel_basico = false;
var nivel_intermedio = false;
var nivel_avanzado = false;
if (nivel == 1) {
    nombre_nivel = "Básico";
    nivel_basico = true;
}
if (nivel == 2) {
    nombre_nivel = "Intermedio";
    nivel_intermedio = true;
}
if (nivel == 3) {
    nombre_nivel = "Avanzado";
    nivel_avanzado = true;
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
var data = [];
var totalSeconds = 0;

function disableF5(e) {
    if ((e.which || e.keyCode) == 116) {
        e.preventDefault();
    }
}

function readTextFile(file, callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", file, true);
    rawFile.onreadystatechange = function () {
        if (rawFile.readyState == 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    };
    rawFile.send(null);
}

function jugar() {
    readTextFile("./data_preguntas.json", function (text) {
        data = JSON.parse(text);
        for (var i = 0; i < data.length; i++) {
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
                        if (respuesta_correta == rpta) {
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
                            if (acumulador_valor_dados != 23) {
                                avanzarFicha(2);
                            } else {
                                avanzarFicha(1);
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
                                });
                                jQuery.ajax({
                                    url: 'admin/controlador/usuario.php',
                                    data: 'puntos_totales=' + puntos_totales + '&id_usuario=' + idusuario + '&accion=ActualizarPuntos',
                                    cache: false,
                                    dataType: 'html',
                                    type: "POST"
                                });
                                if (acumulador_valor_dados != 24) {
                                    avanzarFicha(1);
                                }
                            });
                        }
                    }
                });
                break;
            }
        }
    });
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
        confirmButtonText: 'Si',
        cancelButtonText: 'Cancelar'
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
    if (puntos_totales > 0) {
        for (var i = 0, max = valor_dado; i < max; i++) {
            acumulador_valor_dados_total++;
            acumulador_valor_dados++;
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
                if (acumulador_valor_dados >= 24) {
                    if (nivel_avanzado == true) {
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'acumulador_ficha=24&id_usuario=' + idusuario + '&accion=ActualizarAcumuladorPosicionFicha',
                            cache: false,
                            dataType: 'html',
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                Swal.fire({
                                    title: '¡Felicidades haz completado el juego, te agradecemos por tu participación!',
                                    width: 600,
                                    padding: '3em',
                                    color: '#716add',
                                    background: '#fff url(img/trees.png)',
                                    backdrop: `
    rgba(0,0,123,0.4)
    url("img/nyan-cat.gif")
    left top
    no-repeat
  `
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        location.href = "index.php";
                                    }
                                });
                            }
                        });
                    } else {
                        acumulador_valor_dados = 0;
                        posicion_ficha_abajo = 0;
                        posicion_ficha_arriba = 0;
                        posicion_ficha_derecha = 0;
                        posicion_ficha_izquierda = 0;
                    }
                    if (nivel_basico == true && nivel_intermedio == false && nivel_avanzado == false) {
                        nivel_basico = false;
                        nivel_intermedio = true;
                        nivel = 2;
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'nivel=2&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                            cache: false,
                            dataType: 'html',
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                setearValoresJuego();
                            }
                        });
                    } else if (nivel_intermedio == true && nivel_basico == false && nivel_avanzado == false) {
                        nivel_intermedio = false;
                        nivel_avanzado = true;
                        nivel = 3;
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'nivel=3&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                            cache: false,
                            dataType: 'html',
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                setearValoresJuego();
                            }
                        });
                    }
                }
            }
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'acumulador_ficha=' + acumulador_valor_dados + '&id_usuario=' + idusuario + '&accion=ActualizarAcumuladorPosicionFicha',
                cache: false,
                dataType: 'html',
                type: "POST"
            });
        }
    } else {
        Swal.fire({
            title: '¡Atención!',
            text: 'Usted ya no cuenta con puntos para poder jugar',
            showDenyButton: true,
            showCancelButton: false,
            confirmButtonText: 'Salir del juego',
            denyButtonText: 'Reiniciar juego',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                location.href = "index.php";
            } else if (result.isDenied) {
                jQuery.ajax({
                    url: 'admin/controlador/usuario.php',
                    data: 'nivel=1&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                    cache: false,
                    dataType: 'html',
                    type: "POST",
                    success: function (data, textStatus, jqXHR) {
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'puntos_totales=100&id_usuario=' + idusuario + '&accion=ActualizarPuntos',
                            cache: false,
                            dataType: 'html',
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                nivel = 1;
                                setearValoresJuego();
                            }
                        });
                    }
                });
            }
        });
    }
}

function setearValoresJuego() {
    jQuery.ajax({
        url: 'admin/controlador/usuario.php',
        data: 'acumulador_ficha=0&posicion_ficha_izquierda=0&posicion_ficha_derecha=0&posicion_ficha_arriba=0&posicion_ficha_abajo=0&id_usuario=' + idusuario + '&accion=RestablecerPosicionJuego',
        cache: false,
        dataType: 'html',
        type: "POST",
        success: function (data, textStatus, jqXHR) {
            if (nivel == 1) {
                location.href = "panaca.php";
            }
            if (nivel == 2) {
                location.href = "auqui.php";
            }
            if (nivel == 3) {
                location.href = "inca.php";
            }
        }
    });
}

function ordenMerito() {
    //LISTAR ORDEN MERITO AUTOMATICO
    jQuery.ajax({
        url: 'admin/controlador/usuario.php',
        data: 'nivel=' + nivel + '&id_usuario=' + idusuario + '&puntaje=' + puntos_totales + '&accion=ActualizarOrdenMerito',
        cache: false,
        dataType: 'html',
        type: "POST",
        success: function (data, textStatus, jqXHR) {
            data = JSON.parse(data);
            var html = "";
            for (var i = 0; i < data.length; i++) {
                if (data[i]['id_usuario'] == idusuario) {
                    html = html + '<tr style="font-weight:bold; color:red">\n\
<td><b style="padding-right: 5px">' + (i + 1) + '°</b></td>\n\
<td>' + data[i]['nombres'] + ' ' + data[i]['apellidos'] + '</td>\n\
<td><b style="padding-left: 5px">' + data[i]['puntaje'] + 'pts</b></td>\n\
</tr>';
                } else {
                    html = html + '<tr>\n\
<td><b style="padding-right: 5px">' + (i + 1) + '°</b></td>\n\
<td>' + data[i]['nombres'] + ' ' + data[i]['apellidos'] + '</td>\n\
<td><b style="padding-left: 5px">' + data[i]['puntaje'] + 'pts</b></td>\n\
</tr>';
                }
            }
            jQuery(".list_om").html(html);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
}

$(document).ready(function () {
    jQuery(document).on("keydown", disableF5);

    setInterval(function () {
        ordenMerito();
    }, 1000);

    if (puntos_totales > 0 && acumulador_valor_dados_total < 24) {
        Swal.fire({
            title: 'Bienvenido, usted se encuentra en el nivel ' + nombre_nivel,
            text: '¡Usted cuenta con ' + puntos_totales + ' puntos!',
            confirmButtonText: 'Comenzar a jugar'
        });
        setInterval(function () {
            countTimer();
        }, 1000);
    } else if (acumulador_valor_dados_total >= 24 && nivel == 3) {
        Swal.fire({
            title: '¡Felicidades haz completado el juego, te agradecemos por tu participación!',
            width: 600,
            padding: '3em',
            color: '#716add',
            background: '#fff url(img/trees.png)',
            backdrop: `
    rgba(0,0,123,0.4)
    url("img/nyan-cat.gif")
    left top
    no-repeat  `
        }).then((result) => {
            if (result.isConfirmed) {
                location.href = "index.php";
            }
        });
    } else if (puntos_totales == 0) {
        Swal.fire({
            title: '¡Atención!',
            text: 'Usted ya no cuenta con puntos para poder jugar',
            showDenyButton: true,
            showCancelButton: false,
            confirmButtonText: 'Salir del juego',
            denyButtonText: 'Reiniciar juego',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                location.href = "index.php";
            } else if (result.isDenied) {
                jQuery.ajax({
                    url: 'admin/controlador/usuario.php',
                    data: 'nivel=1&id_usuario=' + idusuario + '&accion=ActualizarNivel',
                    cache: false,
                    dataType: 'html',
                    type: "POST",
                    success: function (data, textStatus, jqXHR) {
                        jQuery.ajax({
                            url: 'admin/controlador/usuario.php',
                            data: 'puntos_totales=100&id_usuario=' + idusuario + '&accion=ActualizarPuntos',
                            cache: false,
                            dataType: 'html',
                            type: "POST",
                            success: function (data, textStatus, jqXHR) {
                                nivel = 1;
                                setearValoresJuego();
                            }
                        });
                    }
                });
            }
        });
    }

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
        nivel_basico = false;
        nivel_intermedio = true;
    }

    if (nivel == 3) {
        nivel_intermedio = false;
        nivel_avanzado = true;
    }

});