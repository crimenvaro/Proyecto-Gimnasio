
$(document).ready(function () {
    ListarFiltrarDepartamentos();
});

function ListarFiltrarDepartamentos() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Departamento = $("#inpDepartamento").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Departamento": Departamento

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarDepartamentos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_departamentos = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_departamentos.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaDepartamento(this);" idDepartamento="' + lista_departamentos[i].bIdDepartamento + '" idEstado="' + lista_departamentos[i].bIdEstado + '" departamento="' + lista_departamentos[i].sDepartamento + '">' +
                    '<td>' + lista_departamentos[i].bIdDepartamento + '</td>' +
                    '<td>' + lista_departamentos[i].bIdEstado + '</td>' +
                    '<td>' + lista_departamentos[i].sDepartamento + '</td>' +
                    '<td onclick="EliminarDepartamento(' + lista_departamentos[i].bIdDepartamento + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaDepartamentos").html(tabla);
            comboDepartamento("selEstadosColaboradoresDepartamento");
            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaDepartamento(objSeleccionado) {
    let idDepartamento = $(objSeleccionado).attr("idDepartamento");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let departamento = $(objSeleccionado).attr("departamento");

    $("#inpIdDepartamento").val(idDepartamento);
    $("#selEstados").val(idEstado);
    $("#inpDepartamento").val(departamento);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarDepartamento() {

    let IdDepartamento = $("#inpIdDepartamento").val();
    let IdEstado = $("#selEstados").val();
    let Departamento = $("#inpDepartamento").val();
    let Accion = (IdDepartamento != "" && IdDepartamento > 0) ? "A" : "I";

    let parametros = {
        "IdDepartamento": IdDepartamento,
        "IdEstado": IdEstado,
        "Departamento": Departamento,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDepartamentos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDepartamento").val("");
            $("#selEstados").val(1);
            $("#inpDepartamento").val("");

            ListarFiltrarDepartamentos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarDepartamento(IdDepartamento) {

    let parametros = {
        "IdDepartamento": IdDepartamento,
        "IdEstado": 0,
        "Departamento": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarDepartamentos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdDepartamento").val("");
            $("#selEstados").val(1);
            $("#inpDepartamento").val("");

            ListarFiltrarDepartamentos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}