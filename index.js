var posicion_ficha = 0;
var paso = $(".paso").outerWidth();
var total_avance = 0;
var salida_juego = false;
function lanzar_dado() {
    return Math.floor(Math.random() * 6) + 1;
    //return 1;
}

function avanzar() {
    var valor_dado = lanzar_dado();
    if (salida_juego === true) {
        for (var i = 0, max = valor_dado; i < max; i++) {
            total_avance = paso - 2;
            posicion_ficha += total_avance;
        }
        $(".area_ficha").css("left", posicion_ficha);
    } else {
        if (valor_dado === 6) {
            alert('Usted sacó 6, puede lanzar para iniciar el juego');
            salida_juego = true;
        } else {
            alert('Usted sacó ' + valor_dado + ', tiene que sacar 6 para iniciar el juego');
        }
    }
}