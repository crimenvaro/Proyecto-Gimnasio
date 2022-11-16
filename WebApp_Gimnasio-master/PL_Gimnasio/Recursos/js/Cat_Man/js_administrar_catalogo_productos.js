
$(document).ready(function () {
    ListarFiltrarProductos();
});

function ListarFiltrarProductos() {
    let IdEstado = 0;       //$("#selEstados").val();
    let IdDescuento = 0;
    let Nombre = $("#inpNombreProducto").val();
    let Descripcion = $("#inpDescripcionProducto").val();
    let Periodo = $("#inpPeriodoProducto").val();
    let Costo = 0;
    let NumDias = $("#inpNumeroDiasProducto").val();
    let Plan = $("#inpPlanProducto").val();

    let parametros = {
        "IdEstado": IdEstado,
        "IdDescuento": IdDescuento,
        "Nombre": Nombre,
        "Descripcion": Descripcion,
        "Periodo": Periodo,
        "Costo": Costo,
        "NumDias": NumDias,
        "Plan": Plan

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarProductos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_productos = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_productos.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaProductos(this);" idProducto="' + lista_productos[i].bIdProducto + '" idEstado="' + lista_productos[i].bIdEstado + '" idDescuento="' + lista_productos[i].bIdDescuento + '" nombre="' + lista_productos[i].sNombre + '" descripcion="' + lista_productos[i].sDescripcion + '" periodo="' + lista_productos[i].sPeriodo + '" costo="' + lista_productos[i].dCosto + '" numDias="' + lista_productos[i].iNumDias + '" plan="' + lista_productos[i].bPlan + '">' +
                    '<td>' + lista_productos[i].bIdProducto + '</td>' +
                    '<td>' + lista_productos[i].bIdEstado + '</td>' +
                    '<td>' + lista_productos[i].bIdDescuento + '</td>' +
                    '<td>' + lista_productos[i].sNombre + '</td>' +
                    '<td>' + lista_productos[i].sDescripcion + '</td>' +
                    '<td>' + lista_productos[i].sPeriodo + '</td>' +
                    '<td>' + lista_productos[i].dCosto + '</td>' +
                    '<td>' + lista_productos[i].iNumDias + '</td>' +
                    '<td>' + lista_productos[i].bPlan + '</td>' +
                    '<td onclick="EliminarProductos(' + lista_productos[i].bIdProducto + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaProductos").html(tabla);
            recargaComboEstados();
            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaProductos(objSeleccionado) {
    let idProducto = $(objSeleccionado).attr("idProducto");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let idDescuento = $(objSeleccionado).attr("idDescuento");
    let nombre = $(objSeleccionado).attr("nombre");
    let descripcion = $(objSeleccionado).attr("descripcion");
    let periodo = $(objSeleccionado).attr("periodo");
    let costo = $(objSeleccionado).attr("costo");
    let numDias = $(objSeleccionado).attr("numDias");
    let plan = $(objSeleccionado).attr("plan");

    $("#inpIdProductos").val(idProducto);
    $("#selEstadosProductos").val(idEstado);
    $("#selProductosDescuento").val(idDescuento);
    $("#inpNombreProducto").val(nombre);
    $("#inpDescripcionProducto").val(descripcion);
    $("#inpPeriodoProducto").val(periodo);
    $("#inpCostoProducto").val(costo);
    $("#inpNumeroDiasProducto").val(numDias);
    $("#inpPlanProducto").val(plan);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarProductos() {

    let IdProductos = $("#inpIdProductos").val();
    let IdEstado = $("#selEstadosProductos").val();
    let IdDescuento = $("#selProductosDescuento").val();
    let Nombre = $("#inpNombreProducto").val();
    let Descripcion = $("#inpDescripcionProducto").val();
    let Periodo = $("#inpPeriodoProducto").val();
    let Costo = $("#inpCostoProducto").val();
    let NumDias = $("#inpNumeroDiasProducto").val();
    let Plan = $("#inpPlanProducto").val();
    let Accion = (IdProductos != "" && IdProductos > 0) ? "A" : "I";

    let parametros = {
        "IdProducto": IdProductos,
        "IdEstado": IdEstado,
        "IdDescuento": IdDescuento,
        "Nombre": Nombre,
        "Descripcion": Descripcion,
        "Periodo": Periodo,
        "Costo": Costo,
        "NumDias": NumDias,
        "Plan": Plan,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarProductos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdProductos").val("");
            $("#selEstadosProductos").val(1);
            $("#selProductosDescuento").val(1);
            $("#inpNombreProducto").val("");
            $("#inpDescripcionProducto").val("");
            $("#inpPeriodoProducto").val("");
            $("#inpCostoProducto").val("");
            $("#inpNumeroDiasProducto").val("");
            $("#inpPlanProducto").val("");

            ListarFiltrarProductos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarProductos(IdProducto) {

    let parametros = {
        "IdProducto": IdProducto,
        "IdEstado": 0,
        "IdDescuento": 0,
        "Nombre": "",
        "Descripcion": "",
        "Periodo": "",
        "Costo": 0,
        "NumDias": 0,
        "Plan": 0,
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarProductos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdProductos").val("");
            $("#selEstadosProductos").val(1);
            $("#selProductosDescuento").val(1);
            $("#inpNombreProducto").val("");
            $("#inpDescripcionProducto").val("");
            $("#inpPeriodoProducto").val("");
            $("#inpCostoProducto").val("");
            $("#inpNumeroDiasProducto").val("");
            $("#inpPlanProducto").val("");

            ListarFiltrarProductos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}