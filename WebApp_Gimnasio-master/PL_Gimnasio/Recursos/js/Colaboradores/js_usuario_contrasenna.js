$(document).ready(function () {
    FiltrarClientesUsuarioContrasenna();
});

function CargaInformacionPantallaCliente() {
    FiltrarClientesUsuarioContrasenna();
}

function FiltrarClientesUsuarioContrasenna() {

    let parametros = {
        "IdEstado": 0,
        "Cedula": $("#inpIdentificacionCliente").val(),
        "Nombre": "",
        "Apellidos": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/ListarFiltrarClientes", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_clientes = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_clientes.length; i++) {

                tabla += '<tr class="' + estilo + '">' +
                    '<td>' + lista_clientes[i].sCedula + '</td>' +
                    '<td>' + lista_clientes[i].sNombre + ' ' + lista_clientes[i].sApellido1 + ' ' + lista_clientes[i].sApellido2 + '</td>' +
                    '<td>' + lista_clientes[i].sUsuario + '</td>' +
                    '<td><input type="button" value="Recordar contraseña" class="btn-table" onclick="RecordarContrasenna(' + lista_clientes[i].iIdCliente + ')" /></td>' +
                    '<td><input type="button" value="Recordar correo" class="btn-table" onclick="RecordarCorreo(' + lista_clientes[i].iIdCliente + ')" /></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaUsuarioContrasenna").html(tabla);
        }
    });
}

function RecordarContrasenna(idCliente) {
    let parametros = {
        "ID_Cliente": idCliente
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/RecordarContrasennaCliente",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            if (obj_retorno.d > 0)
                mostrarMensaje("Información", "Se le envió una contraseña temporal al correo registrado en el sistema");
            else
                mostrarMensaje("Información", "Ha ocurrido un error, por favor intentar nuevamente");
        }
    });
}

function RecordarCorreo(idCliente) {
    let parametros = {
        "ID_Cliente": idCliente
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/RecordarCorreoCliente",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            if (obj_retorno.d > 0)
                mostrarMensaje("Información", "Se le envió su correo principal al correo secundario registrado en el sistema");
            else
                mostrarMensaje("Información", "Ha ocurrido un error, por favor intentar nuevamente");
        }
    });
}