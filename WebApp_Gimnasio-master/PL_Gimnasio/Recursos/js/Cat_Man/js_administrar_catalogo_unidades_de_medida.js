
$(document).ready(function () {
    ListarFiltrarUnidadesDeMedida();
});

function ListarFiltrarUnidadesDeMedida() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Descripcion = $("#inpDescripcionUnidadesDeMedida").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": Descripcion

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/ListarFiltrarUnidadesDeMedida", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_unidadesdemedida = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_unidadesdemedida.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaUnidadDeMedida(this);" IdUnidadDeMedida="' + lista_unidadesdemedida[i].sIdUnidadMedida + '" IdEstado="' + lista_unidadesdemedida[i].bIdEstado + '" Descripcion="' + lista_unidadesdemedida[i].sDescripcion + '">' +
                    '<td>' + lista_unidadesdemedida[i].sIdUnidadMedida + '</td>' +
                    '<td>' + lista_unidadesdemedida[i].bIdEstado + '</td>' +
                    '<td>' + lista_unidadesdemedida[i].sDescripcion + '</td>' +
                    '<td onclick="EliminarUnidadesMedida(' + lista_unidadesdemedida[i].sIdUnidadMedida + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaUnidadesDeMedida").html(tabla);

            //$('#dataTable-unidadesdemedidas').dataTable();
        }
    });
}

function SeleccionaUnidadDeMedida(objSeleccionado) {
    let IdUnidadDeMedida = $(objSeleccionado).attr("IdUnidadDeMedida");
    let IdEstado = $(objSeleccionado).attr("IdEstado");
    let Descripcion = $(objSeleccionado).attr("Descripcion");

    $("#inpIdUnidadesDeMedida").val(IdUnidadDeMedida);
    $("#selEstadosUnidadesDeMedida").val(IdEstado);
    $("#inpDescripcionUnidadesDeMedida").val(Descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarUnidadDeMedida() {

    let IdUnidadDeMedida = $("#inpIdUnidadesDeMedida").val();
    let IdEstado = $("#selEstadosUnidadesDeMedida").val();
    let Descripcion = $("#inpDescripcionUnidadesDeMedida").val();
    let Accion = (IdUnidadDeMedida != "" && IdUnidadDeMedida > 0) ? "A" : "I";

    let parametros = {
        "IdUnidadDeMedida": IdUnidadDeMedida,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarUnidadesDeMedida", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdUnidadesDeMedida").val("");
            $("#selEstadosUnidadesDeMedida").val(1);
            $("#inpDescripcionUnidadesDeMedida").val("");

            ListarFiltrarUnidadesDeMedida();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarUnidadesMedida(IdUnidadDeMedida) {

    let parametros = {
        "IdUnidadDeMedida": IdUnidadDeMedida,
        "IdEstado": 0,
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarUnidadesDeMedida", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdUnidadesDeMedida").val("");
            $("#selEstadosUnidadesDeMedida").val(1);
            $("#inpDescripcionUnidadesDeMedida").val("");

            ListarFiltrarUnidadesDeMedida();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}