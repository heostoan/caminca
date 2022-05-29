/* 
 Author     : Henrry Torres
 */
var upd = jQuery.noConflict();
upd(document).ready(function () {
    upd("#icono_producto").on('change', function () {
        var formData = new FormData();
        var files = upd('#icono_producto')[0].files[0];
        formData.append('file', files);
        upd.ajax({
            url: 'upload.php',
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response != 0) {
                    upd(".card-img-top").attr("src", "../img/productos/" + response);
                    upd(".icono_menu").val(response);
                    upd(".card-img-top").show();
                } else {
                    alert('Atención: El formato de imagen que intenta subir es incorrecto.');
                }
            }
        });
        return false;
    });
    
    upd("#img_slider_modelo").on('change', function () {
        var formData = new FormData();
        var files = upd('#img_slider_modelo')[0].files[0];
        formData.append('file', files);
        upd.ajax({
            url: 'upload.php',
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response != 0) {
                    upd(".card-img-top").attr("src", "../img/productos/" + response);
                    upd(".img_banner").val(response);
                    upd(".card-img-top").show();
                } else {
                    alert('Atención: El formato de imagen que intenta subir es incorrecto.');
                }
            }
        });
        return false;
    });
    
    upd("#img_detalle_modelo").on('change', function () {
        var formData = new FormData();
        var files = upd('#img_detalle_modelo')[0].files[0];
        formData.append('file', files);
        upd.ajax({
            url: 'upload.php',
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response != 0) {
                    upd(".card-img-top2").attr("src", "../img/productos/" + response);
                    upd(".img_secundaria").val(response);
                    upd(".card-img-top2").show();
                } else {
                    alert('Atención: El formato de imagen que intenta subir es incorrecto.');
                }
            }
        });
        return false;
    });
});