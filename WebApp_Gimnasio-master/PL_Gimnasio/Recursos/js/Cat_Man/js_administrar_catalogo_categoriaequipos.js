

$(document).ready(function () {
    ListarFiltrarCategoriaEquipos(); 
});

function ListarFiltrarCategoriaEquipos() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Descripcion = $("#inpDescripcionCategoriaEquipos").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": Descripcion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarCategoriaEquipos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_categoriaequipos = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_categoriaequipos.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaCategoriaEquipos(this);" idCategoriaEquipos="' + lista_categoriaequipos[i].bIdCatEquipos + '" idEstado="' + lista_categoriaequipos[i].bIdEstado + '" descripcion="' + lista_categoriaequipos[i].sDescripcion + '">' +
                    '<td>' + lista_categoriaequipos[i].bIdCatEquipos + '</td>' +
                    '<td>' + lista_categoriaequipos[i].bIdEstado + '</td>' +
                    '<td>' + lista_categoriaequipos[i].sDescripcion + '</td>' +
                    '<td onclick="EliminarCategoriaEquipos(' + lista_categoriaequipos[i].bIdCatEquipos + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaCategoriaEquipos").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaCategoriaEquipos(objSeleccionado) {
    let idCategoriaEquipos = $(objSeleccionado).attr("idCategoriaEquipos");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdCategoriaEquipos").val(idCategoriaEquipos);
    $("#selEstadosCategoriaEquipos").val(idEstado);
    $("#inpDescripcionCategoriaEquipos").val(descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarCategoriaEquipos() {

    let IdCategoriaEquipos = $("#inpIdCategoriaEquipos").val();
    let IdEstado = $("#selEstadosCategoriaEquipos").val();
    let Descripcion = $("#inpDescripcionCategoriaEquipos").val();
    let Accion = (IdCategoriaEquipos != "" && IdCategoriaEquipos > 0) ? "A" : "I";

    let parametros = {
        "IdCategoriaEquipos": IdCategoriaEquipos,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarCategoriaEquipos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdCategoriaEquipos").val("");
            $("#selEstadosCategoriaEquipos").val(1);
            $("#inpDescripcionCategoriaEquipos").val("");

            ListarFiltrarCategoriaEquipos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarCategoriaEquipos(IdCategoriaEquipos) {

    let parametros = {
        "IdCategoriaEquipos": IdCategoriaEquipos,
        "IdEstado": 0,
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarCategoriaEquipos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdCategoriaEquipos").val("");
            $("#selEstadosCategoriaEquipos").val(1);
            $("#inpDescripcionCategoriaEquipos").val("");

            ListarFiltrarCategoriaEquipos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}