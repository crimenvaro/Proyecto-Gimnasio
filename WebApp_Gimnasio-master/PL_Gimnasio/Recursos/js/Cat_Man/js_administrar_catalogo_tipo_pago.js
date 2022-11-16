
$(document).ready(function () {
    ListarFiltrarTipoPago();
});

function ListarFiltrarTipoPago() {
    let IdEstado = 0;       //$("#selEstados").val();
    //let Sala = $("#inpSala").val();
    let Descripcion = $("#inpDescripcionTipoPago").val();
    let Aprobacion = 0;

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Aprobacion": Aprobacion

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/ListarFiltrarTipoPago", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_tipopago = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_tipopago.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaTipoPago(this);" idTipoPago="' + lista_tipopago[i].bIdTipoPago + '" idEstado="' + lista_tipopago[i].bIdEstado + '" descripcion="' + lista_tipopago[i].sDescripTipoPago + '" aprobacion="' + lista_tipopago[i].bRequiereAprobacion + '">' +
                    '<td>' + lista_tipopago[i].bIdTipoPago + '</td>' +
                    '<td>' + lista_tipopago[i].bIdEstado + '</td>' +
                    '<td>' + lista_tipopago[i].sDescripTipoPago + '</td>' +
                    '<td>' + lista_tipopago[i].bRequiereAprobacion + '</td>' +
                    '<td onclick="EliminarTipoPago(' + lista_tipopago[i].bIdTipoPago + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaTipoPago").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaTipoPago(objSeleccionado) {
    let idTipoPago = $(objSeleccionado).attr("idTipoPago");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let descripcion = $(objSeleccionado).attr("descripcion");
    let aprobacion = $(objSeleccionado).attr("aprobacion");

    $("#inpIdTipoPago").val(idTipoPago);
    $("#selEstadoTipoPago").val(idEstado);
    $("#inpDescripcionTipoPago").val(descripcion);
    $("#inpRequiereAprobacion").val(aprobacion);
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarTipoPago() {

    let IdTipoPago = $("#inpIdTipoPago").val();
    let IdEstado = $("#selEstadoTipoPago").val();
    let Descripcion = $("#inpDescripcionTipoPago").val();
    let Aprobacion = $("#inpRequiereAprobacion").val();
    let Accion = (IdTipoPago != "" && IdTipoPago > 0) ? "A" : "I";

    let parametros = {
        "IdTipoPago": IdTipoPago,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Aprobacion": Aprobacion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarTipoPago", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTipoPago").val("");
            $("#selEstadoTipoPago").val(1);
            $("#inpDescripcionTipoPago").val("");
            $("#inpRequiereAprobacion").val(1);

            ListarFiltrarTipoPago();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarTipoPago(IdTipoPago) {

    let parametros = {
        "IdTipoPago": IdTipoPago,
        "IdEstado": 0,
        "Descripcion": "",
        "Aprobacion": 0,
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarTipoPago", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTipoPago").val("");
            $("#selEstadoTipoPago").val(1);
            $("#inpDescripcionTipoPago").val("");
            $("#inpRequiereAprobacion").val("");

            ListarFiltrarTipoPago();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}