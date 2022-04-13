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
var nivel_basico = true;
var nivel_intermedio = false;
var nivel_avanzado = false;
var resultado_dado = 0;
var nivel = 1;

function lanzar_dado() {
    if (salida_juego === false) {
        resultado_dado = Math.floor(Math.random() * 6) + 1;
    } else {
        resultado_dado = Math.floor(Math.random() * 4) + 1;
    }
    //var resultado_dado = 1;
    if (resultado_dado === 1) {
        $(".jugar").css("background-image", "url(img/01.png)");
    }
    if (resultado_dado === 2) {
        $(".jugar").css("background-image", "url(img/02.png)");
    }
    if (resultado_dado === 3) {
        $(".jugar").css("background-image", "url(img/03.png)");
    }
    if (resultado_dado === 4) {
        $(".jugar").css("background-image", "url(img/04.png)");
    }
    if (resultado_dado === 5) {
        $(".jugar").css("background-image", "url(img/05.png)");
    }
    if (resultado_dado === 6) {
        $(".jugar").css("background-image", "url(img/06.png)");
    }
    return resultado_dado;
}

function avanzar() {
    if (nivel_intermedio === true) {
        nivel = 2;
    } else if (nivel_avanzado === true) {
        nivel = 3;
    }

    valor_dado = lanzar_dado();
    if (salida_juego === true) {
        for (var i = 0, max = valor_dado; i < max; i++) {
            acumulador_valor_dados++;
            $(".cara").attr('src', 'img/HAPPY.png');
            if (acumulador_valor_dados <= 7) {
                total_avance_arriba = paso_ancho - 14.5;
                posicion_ficha_arriba += total_avance_arriba;
                $(".area_ficha").css("left", posicion_ficha_arriba);
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".cara").attr('src', '');
                }, 1600);
            } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 11) {
                total_avance_derecha = paso_alto - 14.5;
                posicion_ficha_derecha += total_avance_derecha;
                $(".area_ficha").css("top", posicion_ficha_derecha);
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".cara").attr('src', '');
                }, 1600);
            } else if (acumulador_valor_dados >= 12 && acumulador_valor_dados <= 18) {
                total_avance_abajo = paso_ancho - 14.5;
                posicion_ficha_abajo += total_avance_abajo;
                $(".area_ficha").css("left", "");
                $(".area_ficha").css("right", posicion_ficha_abajo);
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".cara").attr('src', '');
                }, 1600);
            } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 22) {
                total_avance_izquierda = paso_alto - 14.5;
                posicion_ficha_izquierda += total_avance_izquierda;
                $(".area_ficha").css("top", "");
                $(".area_ficha").css("bottom", posicion_ficha_izquierda);
                if (acumulador_valor_dados >= 22) {
                    clearTimeout();
                    $(".jugar").css("background-image", "url(img/copaFinal.png)");
                    $(".cara").attr('src', 'img/HAPPY.png');
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
                    setTimeout(function () {
                        resetearFicha();
                    }, 4000);
                } else {
                    setTimeout(function () {
                        $(".jugar").css("background-image", "url(img/dice.gif)");
                        $(".cara").attr('src', '');
                    }, 1600);
                }
            }
            //console.log("max: " + max + ", valor dado: " + valor_dado + ", i= " + i + ", acumulador_valor_dados: " + acumulador_valor_dados)
            if ((i + 1) === max) {
                //console.log("termine");
                buscarPregunta((acumulador_valor_dados), nivel);
            }
        }
    } else {
        if (valor_dado === 6) {
            $(".cara").attr('src', 'img/HAPPY.png');
            salida_juego = true;
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
        } else {
            $(".cara").attr('src', 'img/SAD.png');
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
        }
    }
}

function resetearFicha() {
    if (nivel_avanzado === true || nivel_intermedio === true || nivel_basico === true) {
        $(".jugar").css("background-image", "url(img/dice.gif)");
        $(".cara").attr('src', '');
        $(".jugar").attr('onclick', 'avanzar()');
    } else {
        $(".jugar").css("background-image", "url(img/copaFinal.png)");
        $(".cara").attr('src', 'img/HAPPY.png');
        $(".jugar").attr('onclick', '');
    }
    salida_juego = false;
    acumulador_valor_dados = 0;
    posicion_ficha_arriba = 0;
    posicion_ficha_derecha = 0;
    posicion_ficha_izquierda = 0;
    posicion_ficha_abajo = 0;
    total_avance_arriba = 0;
    total_avance_derecha = 0;
    total_avance_izquierda = 0;
    total_avance_abajo = 0;
    $(".area_ficha").css("left", "0");
    $(".area_ficha").css("bottom", "0");
    $(".area_ficha").css("right", "0");
    $(".area_ficha").css("top", "0");
}

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

var data = [];
function buscarPregunta(pregunta, nivel) {
    //console.log("pregunta: " + pregunta + ", nivel: " + nivel)
    pregunta = pregunta - 1;
    readTextFile("./data_preguntas.json", function (text) {
        data = JSON.parse(text);
        //console.log(data)
        for (var i = 0; i < data.length; i++) {
            if (parseInt(i) === parseInt(pregunta) && parseInt(data[i]["nivel"]) === parseInt(nivel)) {
                //alert("Resuelve: " + data[i]["pregunta"]);
                var rpta = prompt("Resuelve: " + data[i]["pregunta"]);
                switch (rpta) {
                    case data[i]["alternativa_1"]:
                        alert("Bien, avanza " + data[i]["acierto"] + " pasos.");
                        premio(data[i]["acierto"]);
                        break;
                    case data[i]["alternativa_2"]:
                        alert("Bien, avanza " + data[i]["acierto"] + " pasos.");
                        premio(data[i]["acierto"]);
                        break;
                    case data[i]["alternativa_3"]:
                        alert("Bien, avanza " + data[i]["acierto"] + " pasos.");
                        premio(data[i]["acierto"]);
                        break;
                    case data[i]["alternativa_4"]:
                        alert("Bien, avanza " + data[i]["acierto"] + " pasos.");
                        premio(data[i]["acierto"]);
                        break;
                    case data[i]["alternativa_5"]:
                        alert("Bien, avanza " + data[i]["acierto"] + " pasos.");
                        premio(data[i]["acierto"]);
                        break;
                    default:
                        alert("Fallaste, retrocede " + data[i]["fallo"] + " pasos.");
                        castigo(data[i]["fallo"]);
                        break;
                }
                break;
            } else {
                //console.log('No existe pregunta')
            }
        }
    });
}

function premio(pasos) {
    valor_dado = pasos;
    for (var i = 0, max = valor_dado; i < max; i++) {
        acumulador_valor_dados++;
        $(".cara").attr('src', 'img/HAPPY.png');
        if (acumulador_valor_dados <= 7) {
            total_avance_arriba = paso_ancho - 14.5;
            posicion_ficha_arriba += total_avance_arriba;
            $(".area_ficha").css("left", posicion_ficha_arriba);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
        } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 11) {
            total_avance_derecha = paso_alto - 14.5;
            posicion_ficha_derecha += total_avance_derecha;
            $(".area_ficha").css("top", posicion_ficha_derecha);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
        } else if (acumulador_valor_dados >= 12 && acumulador_valor_dados <= 18) {
            total_avance_abajo = paso_ancho - 14.5;
            posicion_ficha_abajo += total_avance_abajo;
            $(".area_ficha").css("left", "");
            $(".area_ficha").css("right", posicion_ficha_abajo);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
        } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 22) {
            total_avance_izquierda = paso_alto - 14.5;
            posicion_ficha_izquierda += total_avance_izquierda;
            $(".area_ficha").css("top", "");
            $(".area_ficha").css("bottom", posicion_ficha_izquierda);
            if (acumulador_valor_dados >= 22) {
                clearTimeout();
                $(".jugar").css("background-image", "url(img/copaFinal.png)");
                $(".cara").attr('src', 'img/HAPPY.png');
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
                setTimeout(function () {
                    resetearFicha();
                }, 4000);
            } else {
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".cara").attr('src', '');
                }, 1600);
            }
        }
    }
}

function castigo(pasos) {
    valor_dado = pasos;
    for (var i = 0, max = valor_dado; i < max; i++) {
        $(".cara").attr('src', 'img/HAPPY.png');
        if (acumulador_valor_dados <= 7) {
            total_avance_arriba = paso_ancho - 14.5;
            posicion_ficha_arriba -= total_avance_arriba;
            $(".area_ficha").css("left", posicion_ficha_arriba);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
            //console.log(posicion_ficha_arriba + "px " + posicion_ficha_derecha + "px " + posicion_ficha_abajo + "px " + posicion_ficha_izquierda + "px")
        } else if (acumulador_valor_dados >= 8 && acumulador_valor_dados <= 11) {
            total_avance_derecha = paso_alto - 14.5;
            posicion_ficha_derecha -= total_avance_derecha;
            $(".area_ficha").css("top", posicion_ficha_derecha);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
            //console.log(posicion_ficha_arriba + "px " + posicion_ficha_derecha + "px " + posicion_ficha_abajo + "px " + posicion_ficha_izquierda + "px")
        } else if (acumulador_valor_dados >= 12 && acumulador_valor_dados <= 18) {
            total_avance_abajo = paso_ancho - 14.5;
            posicion_ficha_abajo -= total_avance_abajo;
            $(".area_ficha").css("left", "");
            $(".area_ficha").css("right", posicion_ficha_abajo);
            setTimeout(function () {
                $(".jugar").css("background-image", "url(img/dice.gif)");
                $(".cara").attr('src', '');
            }, 1600);
            //console.log(posicion_ficha_arriba + "px " + posicion_ficha_derecha + "px " + posicion_ficha_abajo + "px " + posicion_ficha_izquierda + "px")
        } else if (acumulador_valor_dados >= 19 && acumulador_valor_dados <= 22) {
            total_avance_izquierda = paso_alto - 14.5;
            posicion_ficha_izquierda -= total_avance_izquierda;
            $(".area_ficha").css("top", "");
            $(".area_ficha").css("bottom", posicion_ficha_izquierda);
            //console.log(posicion_ficha_arriba + "px " + posicion_ficha_derecha + "px " + posicion_ficha_abajo + "px " + posicion_ficha_izquierda + "px")
            if (acumulador_valor_dados >= 22) {
                clearTimeout();
                $(".jugar").css("background-image", "url(img/copaFinal.png)");
                $(".cara").attr('src', 'img/HAPPY.png');
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
                setTimeout(function () {
                    resetearFicha();
                }, 4000);
            } else {
                setTimeout(function () {
                    $(".jugar").css("background-image", "url(img/dice.gif)");
                    $(".cara").attr('src', '');
                }, 1600);
            }
        }
        acumulador_valor_dados--;
    }
}