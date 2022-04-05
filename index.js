var posicion_ficha_arriba = 0;
var posicion_ficha_derecha = 0;
var posicion_ficha_izquierda = 0;
var posicion_ficha_abajo = 0;
var paso_ancho = $(".paso").outerWidth();
var paso_alto = $(".paso").outerHeight();
var total_avance_arriba = 0;
var total_avance_derecha = 0;
var total_avance_izquierda = 0;
var total_avance_abajo = 0;
var salida_juego = false;//pasar a false
var valor_dado = 0;
var acumulador_valor_dados = 0;

function lanzar_dado() {
    var resultado_dado = Math.floor(Math.random() * 6) + 1;
    //var resultado_dado = 1;
    if (resultado_dado === 1) {
        $(".jugar").css("background-image", "url(img/1.jpg)");
    }
    if (resultado_dado === 2) {
        $(".jugar").css("background-image", "url(img/2.jpg)");
    }
    if (resultado_dado === 3) {
        $(".jugar").css("background-image", "url(img/3.jpg)");
    }
    if (resultado_dado === 4) {
        $(".jugar").css("background-image", "url(img/4.jpg)");
    }
    if (resultado_dado === 5) {
        $(".jugar").css("background-image", "url(img/5.jpg)");
    }
    if (resultado_dado === 6) {
        $(".jugar").css("background-image", "url(img/6.jpg)");
    }
    return resultado_dado;
}

function avanzar() {
    if (acumulador_valor_dados >= 22) {
        $(".jugar").css("background-image", "url()");
        $(".msg").text('¡Felicidades culminaste el juego!');
        clearTimeout();
    } else {
        valor_dado = lanzar_dado();
        if (salida_juego === true) {
            for (var i = 0, max = valor_dado; i < max; i++) {
                acumulador_valor_dados++;
                if (acumulador_valor_dados <= 7) {
                    total_avance_arriba = paso_ancho - 14.5;
                    posicion_ficha_arriba += total_avance_arriba;
                    $(".area_ficha").css("left", posicion_ficha_arriba);
                    setTimeout(function () {
                        $(".jugar").css("background-image", "url(img/dice.gif)");
                        $(".msg").text("");
                    }, 1600);
                } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 11) {
                    total_avance_derecha = paso_alto - 14.5;
                    posicion_ficha_derecha += total_avance_derecha;
                    $(".area_ficha").css("top", posicion_ficha_derecha);
                    setTimeout(function () {
                        $(".jugar").css("background-image", "url(img/dice.gif)");
                        $(".msg").text("");
                    }, 1600);
                } else if (acumulador_valor_dados >= 12 && acumulador_valor_dados <= 18) {
                    total_avance_abajo = paso_ancho - 14.5;
                    posicion_ficha_abajo += total_avance_abajo;
                    $(".area_ficha").css("left", "");
                    $(".area_ficha").css("right", posicion_ficha_abajo);
                    setTimeout(function () {
                        $(".jugar").css("background-image", "url(img/dice.gif)");
                        $(".msg").text("");
                    }, 1600);
                } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 22) {
                    total_avance_izquierda = paso_alto - 14.5;
                    posicion_ficha_izquierda += total_avance_izquierda;
                    $(".area_ficha").css("top", "");
                    $(".area_ficha").css("bottom", posicion_ficha_izquierda);
                    if (acumulador_valor_dados >= 22) {
                        $(".jugar").css("background-image", "url()");
                        $(".msg").text('¡Felicidades culminaste el juego!');
                        clearTimeout();
                    } else {
                        setTimeout(function () {
                            $(".jugar").css("background-image", "url(img/dice.gif)");
                            $(".msg").text("");
                        }, 1000);
                    }
                }
            }
        } else {
            if (valor_dado === 6) {
                $(".msg").text('¡Bien, sacaste 6, lanza de nuevo para avanzar tu ficha!');
                salida_juego = true;
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".msg").text("");
                }, 1600);
            } else {
                $(".msg").text('¡Salió ' + valor_dado + ', reinta y saca 6 para iniciar la partida!');
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".msg").text("");
                }, 1600);
            }
        }
    }
}