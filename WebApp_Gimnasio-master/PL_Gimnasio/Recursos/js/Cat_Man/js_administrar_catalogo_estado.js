$(document).ready(function () {
    ListarFiltrarEstados();
});

function ListarFiltrarEstados() {
    let Estado = $("#inpEstado").val();
    let Opcion = "";

    let parametros = {
        "Descripcion": Estado,
        "Opcion": Opcion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarEstados", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_estados = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_estados.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaEstado(this);" idEstado="' + lista_estados[i].bIdEstado + '" estado="' + lista_estados[i].sDescripcion + '" opcion="' + lista_estados[i].sOpcion + '">' +
                    '<td>' + lista_estados[i].bIdEstado + '</td>' +
                    '<td>' + lista_estados[i].sDescripcion + '</td>' +
                    '<td>' + lista_estados[i].sOpcion + '</td>' +
                    '<td onclick="EliminarEstado(' + lista_estados[i].bIdEstado + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaEstados").html(tabla);
            recargaComboEstados();
        }
    });
}

function SeleccionaEstado(objSeleccionado) {
    let idEstado = $(objSeleccionado).attr("idEstado");
    let Estado = $(objSeleccionado).attr("estado");
    let Opcion = $(objSeleccionado).attr("opcion");

    $("#inpIdEstado").val(idEstado);
    $("#inpEstado").val(Estado);
    $("#inpOpcion").val(Opcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarEstado() {

    let IdEstado = $("#inpIdEstado").val();
    let Estado = $("#inpEstado").val();
    let Opcion = $("#inpOpcion").val();
    let Accion = (IdEstado != "" && IdEstado > 0) ? "A" : "I";

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": Estado,
        "Opcion": Opcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarEstados", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdEstado").val("");
            $("#inpEstado").val("");
            $("#inpOpcion").val(1);

            ListarFiltrarEstados();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarEstado(IdEstado) {

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": "",
        "Opcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarEstados", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdEstado").val("");
            $("#inpEstado").val("");
            $("#inpOpcion").val(1);

            ListarFiltrarEstados();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}