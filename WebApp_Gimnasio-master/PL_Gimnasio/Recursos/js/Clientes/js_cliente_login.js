$(document).ready(function (event) {

    $("#txtPassword").keypress(function (event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            ValidaPassword();
        }        
    });
});

function ValidaPassword() {
    localStorage.clear();

    let username = $("#txtUsuario").val();
    let password = $("#txtPassword").val();

    if (username.replace(/ /g, '') == "" || password.replace(/ /g, '') == "") {
        alert("Por favor, ingrese sus credenciales para iniciar sesión.");
    }
    else {

        let parametros = {
            "Usuario": username,
            "Contrasenna": password
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/LoginCliente", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                let respuestaLogin = parseInt(obj_retorno.d);

                /*
                * 1 todo correcto
                * 2 contraseña equivocada
                * 3 usuario inactivo
                * 4 usuario no existe
               */

                if (respuestaLogin > 0) {
                    localStorage["username"] = username;
                    localStorage["idCliente"] = respuestaLogin;
                    localStorage["tipo_usuario"] = "C";

                    window.location.href = "./Wfrm_Cliente_Principal.aspx";
                }
                else if (respuestaLogin == -1) {
                    mostrarMensaje("Alerta", "Por favor, revise la contraseña");
                }
                else if (respuestaLogin == -2) {
                    mostrarMensaje("Alerta", "Su usuario está inactivo, por favor, comuníquese con recepción.");
                }
                else if (respuestaLogin == -3) {
                    mostrarMensaje("Alerta", "Por favor, revise su usuario");
                }
            }
        });
    }
}

function RecordarContrasenna() {
    if ($("#inpCorreo").val() == "") {
        mostrarMensaje("Información", "Indique el correo por favor.");
    }
    else {
        let parametros = {
            "Correo": $("#inpCorreo").val(),
            "TipoUsuario": "C"
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/RecordarContrasenna",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                if (obj_retorno.d > 0)
                    mostrarMensaje("Información", "Se le envió una contraseña temporal al correo indicado");
                else
                    mostrarMensaje("Información", "Ha ocurrido un error, por favor intentar nuevamente");
            }
        });        
    }
}