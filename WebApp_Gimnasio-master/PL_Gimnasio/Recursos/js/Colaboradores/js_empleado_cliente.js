$(document).ready(function () {
    CargaCombosCliente();
    FiltrarEmpleadoCliente();
});

function CargaCombosCliente() {
    comboPlanes('selPlanCliente');
    comboEstados(["selEstadoCliente"], "G");
}

function CargaInformacionPantallaCliente() {
    FiltrarEmpleadoCliente();
}

function FiltrarEmpleadoCliente() {
    LimpiarCamposModal();

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

                tabla += '<tr class="' + estilo + '" onclick="SeleccionarCliente(\'' + JSON.stringify(lista_clientes[i]).replace(/"/g, "¬") + '\');" >' +
                    '<td>' + lista_clientes[i].sCedula + '</td>' +
                    '<td>' + lista_clientes[i].sNombre + ' ' + lista_clientes[i].sApellido1 + ' ' + lista_clientes[i].sApellido2 + '</td>' +
                    '<td><input type="button" value="Asistencia" class="btn-table" onclick="VerAsistenciaCliente(' + lista_clientes[i].iIdCliente + ')" /></td>' +
                    '<td><input type="button" value="Plan" class="btn-table" onclick="VerPlanCliente(' + lista_clientes[i].iIdCliente + ')" /></td>' +
                    '<td><input type="button" value="Expediente" class="btn-table" onclick="VerExpedienteCliente(' + lista_clientes[i].iIdCliente + ')" /></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaEmpleadoCliente").html(tabla);
        }
    });
}

function SeleccionarCliente(objSelect) {
    objSelect = objSelect.replace(/¬/g, '"');
    var objParse = JSON.parse(objSelect);

    $("#inpHidIdCliente").val(objParse.iIdCliente);
    $("#selEstadoCliente").val(objParse.bIdEstado);
    $("#inpHidIdPersona").val(objParse.iIdPersona);
    $("#selPlanCliente").val(objParse.bIdProducto);
    $("#inpNuevoIdentificacion").val(objParse.sCedula);
    $("#inpNuevoNombre").val(objParse.sNombre);
    $("#inpNuevoApellido1").val(objParse.sApellido1);
    $("#inpNuevoApellido2").val(objParse.sApellido2);
    $("#inpNuevoFechaNacimiento").val(objParse.dtFechaNacimiento);
    $("#inpNuevoTelefono").val(objParse.iTelefono);
    $("#inpNuevoCorreo1").val(objParse.sCorreo);
    $("#inpNuevoCorreo2").val(objParse.sSegundoCorreo);
    $("#inpNuevoUsuario").val(objParse.sUsuario);

    $("#ModalNuevoCliente").modal("show");
}

function GuardarEliminarCliente() {
    if ($("#inpHidIdCliente").val().trim() == "" ||
        $("#selEstadoCliente").val().trim() == "" ||
        $("#inpHidIdPersona").val().trim() == "" ||
        $("#selPlanCliente").val().trim() == "" ||
        $("#inpNuevoIdentificacion").val().trim() == "" ||
        $("#inpNuevoNombre").val().trim() == "" ||
        $("#inpNuevoApellido1").val().trim() == "" ||
        $("#inpNuevoApellido2").val().trim() == "" ||
        $("#inpNuevoFechaNacimiento").val().trim() == "" ||
        $("#inpNuevoTelefono").val().trim() == "" ||
        $("#inpNuevoCorreo1").val().trim() == "" ||
        $("#inpNuevoCorreo2").val().trim() == "" ||
        $("#inpNuevoUsuario").val().trim() == "") {

        mostrarMensaje("Información", "Por favor, complete la información solicitada");
    }
    else {

        let parametros = {
            "ID_Cliente": $("#inpHidIdCliente").val(),
            "ID_Estado": $("#selEstadoCliente").val(),
            "ID_Persona": $("#inpHidIdPersona").val(),
            "ID_Producto": $("#selPlanCliente").val(),
            "Cedula": $("#inpNuevoIdentificacion").val(),
            "Nombre": $("#inpNuevoNombre").val(),
            "Apellido1": $("#inpNuevoApellido1").val(),
            "Apellido2": $("#inpNuevoApellido2").val(),
            "FechaNacimiento": $("#inpNuevoFechaNacimiento").val(),
            "Telefono": $("#inpNuevoTelefono").val(),
            "Correo": $("#inpNuevoCorreo1").val(),
            "Segundo_Correo": $("#inpNuevoCorreo2").val(),
            "Usuario": $("#inpNuevoUsuario").val(),
            "Accion": $("#inpHidIdCliente").val() == "0" ? "I" : "A"
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/GuardarEliminarCliente",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                if (obj_retorno.d == -"-2") {
                    mostrarMensaje("Información", "El usuario ya existe, por favor indicar otro usuario");
                }
                else if (obj_retorno.d == "0") {
                    mostrarMensaje("Información", "El cliente ya existe, por favor revisar con el número de cédula");
                }
                else {
                    $("#ModalNuevoCliente").modal("hide");
                    mostrarMensaje("Información", "Se ha guardado el cliente exitosamente");

                    FiltrarEmpleadoCliente();
                }
            }
        });
    }
}

function LimpiarCamposModal() {
    $("#inpHidIdCliente").val(0);
    $("#inpHidIdPersona").val(0);
    $("#selEstadoCliente").val("");
    $("#selPlanCliente").val("");
    $("#inpNuevoIdentificacion").val("");
    $("#inpNuevoNombre").val("");
    $("#inpNuevoApellido1").val("");
    $("#inpNuevoApellido2").val("");
    $("#inpNuevoFechaNacimiento").val("");
    $("#inpNuevoTelefono").val("");
    $("#inpNuevoCorreo1").val("");
    $("#inpNuevoCorreo2").val("");
    $("#inpNuevoUsuario").val("");
}
