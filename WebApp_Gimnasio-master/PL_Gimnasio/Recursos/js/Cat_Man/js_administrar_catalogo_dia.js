
$(document).ready(function () {
    ListarFiltrarDia();
});

function ListarFiltrarDia() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Descripcion = $("#inpDescripcionDia").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarDia", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_dia = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_dia.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaDia(this);" idDia="' + lista_dia[i].bIdDia + '" idEstado="' + lista_dia[i].bIdEstado + '" descripcion="' + lista_dia[i].sDescripcion + '">' +
                    '<td>' + lista_dia[i].bIdDia + '</td>' +
                    '<td>' + lista_dia[i].bIdEstado + '</td>' +
                    '<td>' + lista_dia[i].sDescripcion + '</td>' +
                    '<td onclick="EliminarDia(' + lista_dia[i].bIdDia + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaDia").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaDia(objSeleccionado) {
    let idDia = $(objSeleccionado).attr("idDia");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdDia").val(idDia);
    $("#selEstadosDia").val(idEstado);
    $("#inpDescripcionDia").val(descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarDia() {

    let IdDia = $("#inpIdDia").val();
    let IdEstado = $("#selEstadosDia").val();
    let Descripcion = $("#inpDescripcionDia").val();
    let Accion = (IdDia != "" && IdDia > 0) ? "A" : "I";

    let parametros = {
        "IdDia": IdDia,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDia", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDia").val("");
            $("#selEstadosDia").val(1);
            $("#inpDescripcionDia").val(1);

            ListarFiltrarDia();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarDia(IdDia) {

    let parametros = {
        "IdDia": IdDia,
        "IdEstado": 0,
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDia", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDia").val("");
            $("#selEstadosDia").val(1);
            $("#inpDescripcionDia").val(1);

            ListarFiltrarDia();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}