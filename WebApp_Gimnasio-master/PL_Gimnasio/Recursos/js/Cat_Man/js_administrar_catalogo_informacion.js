
$(document).ready(function () {
    ListarFiltrarInformacion();
});

function ListarFiltrarInformacion() {
    let IdCedulaJuridica = $("#inpCedulaJuridica").val();
    let IdEstado = 0;       //$("#selEstados").val();
    let Nombre = $("#inpNombre").val();
    let Ubicacion = $("#inpUbicacion").val();
    let Telefono = $("#inpTelefono").val();
    let Correo = $("#inpCorreo").val();
    let Aforo = $("#inpAforo").val();
    let DiasGracia = $("#inpDiasGracia").val();

    let parametros = {
        "IdCedulaJuridica": IdCedulaJuridica,
        "IdEstado": IdEstado,
        "Nombre": Nombre,
        "Ubicacion": Ubicacion,
        "Telefono": Telefono,
        "Correo": Correo,
        "Aforo": Aforo,
        "DiasGracia": DiasGracia

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/ListarFiltrarInformacion", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_informacion = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_informacion.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaInformacion(this);" idInformacion="' + lista_informacion[i].iIdInformacion + '" IdCedulaJuridica="' + lista_informacion[i].iIdCedulaJuridica + '" IdEstado="' + lista_informacion[i].bIdEstado + '" Nombre="' + lista_informacion[i].sNombre + '" Ubicacion="' + lista_informacion[i].sUbicacion + '" Telefono="' + lista_informacion[i].iTelefono + '" Correo="' + lista_informacion[i].sCorreo + '" Aforo="' + lista_informacion[i].iAforo + '" DiasGracia="' + lista_informacion[i].bDiasGracia + '">' +
                    '<td>' + lista_informacion[i].iIdInformacion + '</td>' +
                    '<td>' + lista_informacion[i].iIdCedulaJuridica + '</td>' +
                    '<td>' + lista_informacion[i].bIdEstado + '</td>' +
                    '<td>' + lista_informacion[i].sNombre + '</td>' +
                    '<td>' + lista_informacion[i].sUbicacion + '</td>' +
                    '<td>' + lista_informacion[i].iTelefono + '</td>' +
                    '<td>' + lista_informacion[i].sCorreo + '</td>' +
                    '<td>' + lista_informacion[i].iAforo + '</td>' +
                    '<td>' + lista_informacion[i].bDiasGracia + '</td>' +
                    '<td onclick="EliminarInformacion(' + lista_informacion[i].iIdInformacion + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaInformacion").html(tabla);

            //$('#dataTable-informacion').dataTable();
        }
    });
}

function SeleccionaInformacion(objSeleccionado) {
    let idInformacion = $(objSeleccionado).attr("idInformacion");
    let IdCedulaJuridica = $(objSeleccionado).attr("IdCedulaJuridica");
    let IdEstado = $(objSeleccionado).attr("IdEstado");
    let Nombre = $(objSeleccionado).attr("Nombre");
    let Ubicacion = $(objSeleccionado).attr("Ubicacion");
    let Telefono = $(objSeleccionado).attr("Telefono");
    let Correo = $(objSeleccionado).attr("Correo");
    let Aforo = $(objSeleccionado).attr("Aforo");
    let DiasGracia = $(objSeleccionado).attr("DiasGracia");

    $("#inpIdInformacion").val(idInformacion);
    $("#inpCedulaJuridica").val(IdCedulaJuridica);
    $("#selEstadosInformacion").val(IdEstado);
    $("#inpNombre").val(Nombre);
    $("#inpUbicacion").val(Ubicacion);
    $("#inpTelefono").val(Telefono);
    $("#inpCorreo").val(Correo);
    $("#inpAforo").val(Aforo);
    $("#inpDiasGracia").val(DiasGracia);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarInformacion() {

    let IdInformacion = $("#inpIdInformacion").val();
    let IdCedulaJuridica = $("#inpCedulaJuridica").val();
    let IdEstado = $("#selEstadosInformacion").val();
    let Nombre = $("#inpNombre").val();
    let Ubicacion = $("#inpUbicacion").val();
    let Telefono = $("#inpTelefono").val();
    let Correo = $("#inpCorreo").val();
    let Aforo = $("#inpAforo").val();
    let DiasGracia = $("#inpDiasGracia").val();
    let Accion = (IdInformacion != "" && IdInformacion > 0) ? "A" : "I";

    let parametros = {
        "IdInformacion": IdInformacion,
        "IdCedulaJuridica": IdCedulaJuridica,
        "IdEstado": IdEstado,
        "Nombre": Nombre,
        "Ubicacion": Ubicacion,
        "Telefono": Telefono,
        "Correo": Correo,
        "Aforo": Aforo,
        "DiasGracia": DiasGracia,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarInformacion", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdInformacion").val("");
            $("#inpCedulaJuridica").val("");
            $("#selEstadosInformacion").val(1);
            $("#inpNombre").val("");
            $("#inpUbicacion").val("");
            $("#inpTelefono").val("");
            $("#inpCorreo").val("");
            $("#inpAforo").val("");
            $("#inpDiasGracia").val("");

            ListarFiltrarInformacion();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarInformacion(IdInformacion) {

    let parametros = {
        "IdInformacion": IdInformacion,
        "IdCedulaJuridica": 0,
        "IdEstado": 0,
        "Nombre": "",
        "Ubicacion": "",
        "Telefono": 0,
        "Correo": "",
        "Aforo": 0,
        "DiasGracia": 0,
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarInformacion", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdInformacion").val("");
            $("#inpCedulaJuridica").val("");
            $("#selEstadosInformacion").val(1);
            $("#inpNombre").val("");
            $("#inpUbicacion").val("");
            $("#inpTelefono").val("");
            $("#inpCorreo").val("");
            $("#inpAforo").val("");
            $("#inpDiasGracia").val("");

            ListarFiltrarInformacion();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}