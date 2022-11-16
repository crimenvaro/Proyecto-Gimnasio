$(document).ready(function () {
    var modalCambiarContrasenna = '<div class="modal" tabindex="-1" role="dialog" id="ModalCambiarContrasenna">' +
        '<div class="modal-dialog modal-dialog-centered" role="document"> ' +
        '<div class="modal-content">' +
        '<div class="modal-header">' +
        '<h5 class="modal-title">Cambiar Contraseña</h5>' +
        '<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
        '<span aria-hidden="true">&times;</span>' +
        '</button>' +
        '</div>' +
        '<div class="modal-body">' +
        '<div class="col-lg-12 col-md-12">' +
        ' <label class="col-lg-12 col-md-12">Contraseña actual:</label>' +
        '<input id="inpCambiaContrasennaActual" class="col-lg-12 col-md-12" type="password" placeholder="Actual" maxlength="15" />' +
        '</div>' +
        '<div class="col-lg-12 col-md-12">' +
        '<label class="col-lg-12 col-md-12">Nueva contraseña:</label>' +
        ' <input id="inpCambiaContrasennaNueva1" class="col-lg-12 col-md-12" type="password" placeholder="Nueva" maxlength="15" />' +
        '</div>' +
        ' <div class="col-lg-12 col-md-12">' +
        '<label class="col-lg-12 col-md-12">Repetir contraseña:</label>' +
        ' <input id="inpCambiaContrasennaNueva2" class="col-lg-12 col-md-12" type="password" placeholder="Repetir" maxlength="15" />' +
        '</div>' +
        '</div>' +
        '<div class="modal-footer">' +        
        '<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>' +
        '<button type="button" class="btn btn-primary" onclick="ActualizarContrasenna();">Actualizar</button>' +
        '</div>' +
        '</div>' +
        '</div>' +
        '</div>';
    $("body").prepend(modalCambiarContrasenna);

    $("#ModalCambiarContrasenna").on('hidden.bs.modal', function (e) {
        location.reload();
    });
});


function CambiarContrasenna() {
    $("#ModalCambiarContrasenna").modal("show");
}

function ActualizarContrasenna() {
    let username = localStorage["username"];
    let tipoUsuario = localStorage["tipo_usuario"];

    let contrasennaActual = $("#inpCambiaContrasennaActual").val();
    let contrasennaNueva1 = $("#inpCambiaContrasennaNueva1").val();
    let contrasennaNueva2 = $("#inpCambiaContrasennaNueva2").val();

    if (contrasennaNueva1 != contrasennaNueva2) {
        alert( "Las contraseñas no coinciden");
    }
    else if (contrasennaActual == contrasennaNueva1) {
        alert("La nueva contraseña debe ser diferente a la contraseña actual.");
    }
    else if (contrasennaNueva1.length < 8) {
        alert("La nueva contraseña debe contar al menos con 8 caracteres.");
    }
    else {

        let parametros = {
            "Username": username,
            "TipoUsuario": tipoUsuario,
            "ContrasennaActual": contrasennaActual,
            "ContrasennaNueva": contrasennaNueva1
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ActualizarContrasennaUsuario", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                if (obj_retorno.d == "1") {
                    $("#ModalCambiarContrasenna").modal("hide");
                    localStorage.removeItem("username");                    
                    alert("La contraseña ha sido modificada, por favor, ingrese con la nueva contraseña");
                }
                else {
                    alert("Contraseña actual incorrecta, por favor, verifique");
                }
            }
        });
    }
}
