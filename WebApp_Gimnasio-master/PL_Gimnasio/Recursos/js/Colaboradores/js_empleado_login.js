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
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/LoginColaborador", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                let respuestaLogin = JSON.parse(obj_retorno.d);

                /* 
                 * Lista con el estado en posición 0 y en posicion 1 Lista de roles
                * 1 todo correcto
                * 2 contraseña equivocada
                * 3 usuario inactivo
                * 4 usuario no existe
                * 5 usuario sin rol asignado
               */

                if (respuestaLogin.bEstadoLogin == 1) {
                    localStorage["username"] = username;
                    localStorage["tipo_usuario"] = "E";
                    localStorage["roles_usuario"] = respuestaLogin.lRoles;

                    window.location.href = "./Wfrm_Empleado_Principal.aspx";
                }
                else if (respuestaLogin.bEstadoLogin == 2) {
                    mostrarMensaje("Alerta", "Por favor, revise la contraseña");
                }
                else if (respuestaLogin.bEstadoLogin == 3) {
                    mostrarMensaje("Alerta", "Su usuario está inactivo, por favor, comuníquese con administración.");
                }
                else if (respuestaLogin.bEstadoLogin == 4) {
                    mostrarMensaje("Alerta", "Por favor, revise su usuario");
                }
                else if (respuestaLogin.bEstadoLogin == 5) {
                    mostrarMensaje("Alerta", "No tiene un rol de usuario asignado, por favor, comuníquese con administración.");
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
            "TipoUsuario": "E"
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