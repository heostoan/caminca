/* 
 Author     : Henrry Torres
 */
var act = jQuery.noConflict();

act('.btn_guardar_usuario').click(function () {
    var nombres = jQuery(".nombres").val();
    var apellidos = jQuery(".apellidos").val();
    var edad = jQuery(".edad").val();
    var celular = jQuery(".celular").val();
    var usuario = jQuery(".usuario").val();
    var clave = jQuery(".clave").val();
    var correo = jQuery(".correo").val();
    var fecha_nacimiento = jQuery(".fecha_nacimiento").val();
    var sexo = jQuery(".sexo").val();
    var nivel_estudios = jQuery(".nivel_estudios").val();
    var tipo_colegio = jQuery(".tipo_colegio").val();

    var action = "registrarUsuario";

    if (nombres != '' && apellidos != '' && edad != '' && celular != '' && usuario != '' && clave != '' && correo != '' && fecha_nacimiento != '' && sexo != '' && nivel_estudios != '' && tipo_colegio != '' && validarEmail(correo) != 1) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'nombres=' + nombres + '&apellidos=' + apellidos + '&edad=' + edad + '&celular=' + celular + '&usuario=' + usuario + '&clave=' + clave + '&fecha_nacimiento=' + fecha_nacimiento + '&sexo=' + sexo + '&nivel_estudios=' + nivel_estudios + '&tipo_colegio=' + tipo_colegio + '&correo=' + correo + '&accion=' + action,
            cache: false,
            dataType: 'html',
            type: "POST",
            error: function (objeto, quepaso, otroobj) {
                swal({
                    title: "¡Oh!",
                    text: "¡Ha ocurrido un error interno, por favor comuníquese con el administrador de la página!",
                    icon: "info",
                    button: "Entendido"
                });
            },
            success: function (datos) {
                swal({
                    title: "¡Bien!",
                    text: datos,
                    icon: "success",
                    button: "Entendido"
                }).then(function () {
                    location.href = "index.php";
                });
            }
        });
    } else {
        swal({
            title: "¡Atención!",
            text: "¡Valide todos los campos ingresados!",
            icon: "info",
            button: "Entendido"
        });
    }
});

act('.btn_recuperar_usuario').click(function () {
    var celular = jQuery(".celular").val();
    var correo = jQuery(".correo").val();

    var action = "recuperarUsuario";

    if (celular != '' && correo != '' && validarEmail(correo) != 1) {
        jQuery.ajax({
            url: 'admin/controlador/usuario.php',
            data: 'celular=' + celular + '&correo=' + correo + '&accion=' + action,
            cache: false,
            dataType: 'html',
            type: "POST",
            error: function (objeto, quepaso, otroobj) {
                swal({
                    title: "¡Oh!",
                    text: "¡Ha ocurrido un error interno, por favor comuníquese con el administrador de la página!",
                    icon: "info",
                    button: "Entendido"
                });
            },
            success: function (datos) {
                swal({
                    title: "¡Atencion!",
                    text: datos,
                    icon: "success",
                    button: "Entendido"
                }).then(function () {
                    location.href = "index.php";
                });
            }
        });
    } else {
        swal({
            title: "¡Atención!",
            text: "¡Valide todos los campos ingresados!",
            icon: "info",
            button: "Entendido"
        });
    }
});

act('.btn_cambiar_clave').click(function () {
    var usuario = jQuery(".usuario").val();
    var correo = jQuery(".correo").val();
    var clave = jQuery(".clave").val();
    var claven = jQuery(".claven").val();
    var clavecn = jQuery(".clavecn").val();

    var action = "cambiarClave";

    if (usuario != '' && clave != '' && clavecn != '' && claven != '' && correo != '' && validarEmail(correo) != 1) {
        if (clave === claven || clave === clavecn) {
            swal({
                title: "¡Atención!",
                text: "¡Valide que las claves no sean iguales!",
                icon: "info",
                button: "Entendido"
            });
        } else if (claven !== clavecn) {
            swal({
                title: "¡Atención!",
                text: "¡Valide que su nueva clave y confírmela correctamente!",
                icon: "info",
                button: "Entendido"
            });
        } else {
            jQuery.ajax({
                url: 'admin/controlador/usuario.php',
                data: 'correo=' + correo + '&clave=' + claven + '&usuario=' + usuario + '&accion=' + action,
                cache: false,
                dataType: 'html',
                type: "POST",
                error: function (objeto, quepaso, otroobj) {
                    swal({
                        title: "¡Oh!",
                        text: "¡Ha ocurrido un error interno, por favor comuníquese con el administrador de la página!",
                        icon: "info",
                        button: "Entendido"
                    });
                },
                success: function (datos) {
                    swal({
                        title: "¡Atencion!",
                        text: datos,
                        icon: "success",
                        button: "Entendido"
                    }).then(function () {
                        location.href = "index.php";
                    });
                }
            });
        }
    } else {
        swal({
            title: "¡Atención!",
            text: "¡Valide todos los campos ingresados!",
            icon: "info",
            button: "Entendido"
        });
    }
});