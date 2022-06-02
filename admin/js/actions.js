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

    var action = "registrarUsuario";

    jQuery.ajax({
        url: 'admin/controlador/usuario.php',
        data: 'nombres=' + nombres + '&apellidos=' + apellidos + '&edad=' + edad + '&celular=' + celular + '&usuario=' + usuario + '&clave=' + clave + '&accion=' + action,
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
});
/*
 act('.btn_editar_producto').click(function () {
 var nombre_menu = jQuery(".nombre_menu").val();
 var icono_menu = jQuery(".icono_menu").val();
 var tamanho = jQuery(".tamanho").val();
 var peso = jQuery(".peso").val();
 var previene = jQuery(".previene").val();
 var descripcion = jQuery(".descripcion").val();
 var beneficios = jQuery(".beneficios").val();
 var idproducto = jQuery(".idproducto").val();
 var aire = 0;
 if (jQuery(".aire").is(":checked")) {
 aire = 1;
 }
 var gel = 0;
 if (jQuery(".gel").is(":checked")) {
 gel = 1;
 }
 var espuma = 0;
 if (jQuery(".espuma").is(":checked")) {
 espuma = 1;
 }
 var titulo_pagina = jQuery(".titulo_pagina").val();
 var rotulo_medio = jQuery(".rotulo_medio").val();
 var contextura = 0;
 if (jQuery(".contextura").is(":checked")) {
 contextura = 1;
 }
 
 var action = "editarProducto";
 
 jQuery.ajax({
 url: 'controlador/producto.php',
 data: 'nombre_menu=' + nombre_menu + '&icono_menu=' + icono_menu + '&tamanho=' + tamanho + '&peso=' + peso + '&previene=' + previene + '&descripcion=' + descripcion + '&beneficios=' + beneficios + '&aire=' + aire + '&gel=' + gel + '&espuma=' + espuma + '&titulo_pagina=' + titulo_pagina + '&rotulo_medio=' + rotulo_medio + '&contextura=' + contextura + '&idproducto=' + idproducto + '&accion=' + action,
 cache: false,
 dataType: 'html',
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
 text: "Actualización satisfactoria",
 icon: "success",
 button: "Entendido"
 }).then(function () {
 location.href = "productos.php";
 });
 },
 type: "POST"
 });
 });
 
 function eliminarProducto(id) {
 
 var action = "eliminarProducto";
 
 jQuery.ajax({
 url: 'controlador/producto.php',
 data: 'idproducto=' + id + '&accion=' + action,
 cache: false,
 dataType: 'html',
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
 text: "Eliminación satisfactoria",
 icon: "success",
 button: "Entendido"
 }).then(function () {
 location.href = "productos.php";
 });
 },
 type: "POST"
 });
 }
 
 act('.btn_guardar_modelo').click(function () {
 var modelo = jQuery(".modelo").val();
 var color = jQuery(".color").val();
 var img_banner = jQuery(".img_banner").val();
 var img_secundaria = jQuery(".img_secundaria").val();
 var idproducto = jQuery(".idproducto").val();
 
 var action = "registrarModelo";
 
 jQuery.ajax({
 url: 'controlador/modelo.php',
 data: 'modelo=' + modelo + '&color=' + color + '&img_banner=' + img_banner + '&img_secundaria=' + img_secundaria + '&idproducto=' + idproducto + '&accion=' + action,
 cache: false,
 dataType: 'html',
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
 text: "Registro satisfactorio",
 icon: "success",
 button: "Entendido"
 }).then(function () {
 location.href = "modelos.php";
 });
 },
 type: "POST"
 });
 });
 
 act('.btn_editar_modelo').click(function () {
 var modelo = jQuery(".modelo").val();
 var color = jQuery(".color").val();
 var img_banner = jQuery(".img_banner").val();
 var img_secundaria = jQuery(".img_secundaria").val();
 var idproducto = jQuery(".idproducto").val();
 var idmodelo = jQuery(".idmodelo").val();
 
 var action = "editarModelo";
 
 jQuery.ajax({
 url: 'controlador/modelo.php',
 data: 'modelo=' + modelo + '&color=' + color + '&img_banner=' + img_banner + '&img_secundaria=' + img_secundaria + '&idproducto=' + idproducto + '&idmodelo=' + idmodelo + '&accion=' + action,
 cache: false,
 dataType: 'html',
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
 text: "Actualización satisfactoria",
 icon: "success",
 button: "Entendido"
 }).then(function () {
 location.href = "modelos.php";
 });
 },
 type: "POST"
 });
 });
 
 function eliminarModelo(id) {
 
 var action = "eliminarModelo";
 
 jQuery.ajax({
 url: 'controlador/modelo.php',
 data: 'idmodelo=' + id + '&accion=' + action,
 cache: false,
 dataType: 'html',
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
 text: "Eliminación satisfactoria",
 icon: "success",
 button: "Entendido"
 }).then(function () {
 location.href = "modelos.php";
 });
 },
 type: "POST"
 });
 }
 */