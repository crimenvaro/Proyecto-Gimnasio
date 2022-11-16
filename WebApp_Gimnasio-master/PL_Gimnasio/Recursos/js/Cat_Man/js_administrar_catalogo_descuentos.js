
$(document).ready(function () {
    ListarFiltrarDescuento();
});

function ListarFiltrarDescuento() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Descripcion = $("#inpDescripcionDescuentos").val();
    let Porcentaje = $("#inpPorcentaje").val();

    let parametros = {
        "IdEstado": IdEstado,  
        "Descripcion": Descripcion,
        "Porcentaje": Porcentaje
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarDescuento", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_descuento = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_descuento.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaDescuento(this);" idDescuento="' + lista_descuento[i].bIdDescuento + '" idEstado="' + lista_descuento[i].bIdEstado + '" descripcion="' + lista_descuento[i].sDescripcion + '" porcentaje="' + lista_descuento[i].bPorcentaje + '">' +
                    '<td>' + lista_descuento[i].bIdDescuento + '</td>' +
                    '<td>' + lista_descuento[i].bIdEstado + '</td>' +
                    '<td>' + lista_descuento[i].sDescripcion + '</td>' +
                    '<td>' + lista_descuento[i].bPorcentaje + '</td>' +
                    '<td onclick="EliminarDescuento(' + lista_descuento[i].bIdDescuento + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaDescuentos").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaDescuento(objSeleccionado) {
    let idDescuento = $(objSeleccionado).attr("idDescuento");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let descripcion = $(objSeleccionado).attr("descripcion");
    let porcentaje = $(objSeleccionado).attr("porcentaje");

    $("#inpIdDescuento").val(idDescuento);
    $("#selEstadosDescuentos").val(idEstado);
    $("#inpDescripcionDescuentos").val(descripcion);
    $("#inpPorcentaje").val(porcentaje);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarDescuento() {

    let IdDescuento = $("#inpIdDescuento").val();
    let IdEstado = $("#selEstadosDescuentos").val();
    let Descripcion = $("#inpDescripcionDescuentos").val();
    let Porcentaje = $("#inpPorcentaje").val();
    let Accion = (IdDescuento != "" && IdDescuento > 0) ? "A" : "I";

    let parametros = {
        "IdDescuento": IdDescuento,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Porcentaje": Porcentaje,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDescuento", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDescuento").val("");
            $("#selEstadosDescuentos").val(1);
            $("#inpDescripcionDescuentos").val("");
            $("#inpPorcentaje").val("");

            ListarFiltrarDescuento();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarDescuento(IdDescuento) {

    let parametros = {
        "IdDescuento": IdDescuento,
        "IdEstado": 0,
        "Descripcion": "",
        "Porcentaje": 0,
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDescuento", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDescuento").val("");
            $("#selEstadosDescuentos").val(1);
            $("#inpDescripcionDescuentos").val("");
            $("#inpPorcentaje").val("");

            ListarFiltrarDescuento();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}