
$(document).ready(function () {
    ListarFiltrarEjercicios();
});

function ListarFiltrarEjercicios() {
    let IdEstado = 0;       //$("#selEstados").val();
    let NombreEjercicio = $("#inpNombreEjercicio").val();
    let GrupoMuscular = $("#inpGrupoMuscular").val();
    let Descripcion = $("#inpDescripcionEjercicios").val();

    let parametros = {
        "IdEstado": IdEstado,
        "NombreEjercicio": NombreEjercicio,
        "GrupoMuscular": GrupoMuscular,
        "Descripcion": Descripcion

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarEjercicios", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_ejercicios = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_ejercicios.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaEjercicios(this);" idEjercicio="' + lista_ejercicios[i].idEjercicio + '" idEstado="' + lista_ejercicios[i].bIdEstado + '" nombreEjercicio="' + lista_ejercicios[i].sNombreEjercicio + '" grupoMuscular="' + lista_ejercicios[i].sGrupoMuscular + '" descripcion="' + lista_ejercicios[i].sDescripcion + '">' +
                    '<td>' + lista_ejercicios[i].iIdEjercicio + '</td>' +
                    '<td>' + lista_ejercicios[i].bIdEstado + '</td>' +
                    '<td>' + lista_ejercicios[i].sNombreEjercicio + '</td>' +
                    '<td>' + lista_ejercicios[i].sGrupoMuscular + '</td>' +
                    '<td>' + lista_ejercicios[i].sDescripcion + '</td>' +
                    '<td onclick="EliminarEjercicios(' + lista_ejercicios[i].iIdEjercicio + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaEjercicios").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaEjercicios(objSeleccionado) {
    let idEjercicio = $(objSeleccionado).attr("idEjercicio");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let nombreEjercicio = $(objSeleccionado).attr("nombreEjercicio");
    let grupoMuscular = $(objSeleccionado).attr("grupoMuscular");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdEjercicio").val(idEjercicio);
    $("#selEstadosEjercicios").val(idEstado);
    $("#inpNombreEjercicio").val(nombreEjercicio);
    $("#inpGrupoMuscular").val(grupoMuscular);
    $("#inpDescripcionEjercicios").val(descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarEjercicios() {

    let IdEjercicio = $("#inpIdEjercicio").val();
    let IdEstado = $("#selEstadosEjercicios").val();
    let NombreEjercicio = $("#inpNombreEjercicio").val();
    let GrupoMuscular = $("#inpGrupoMuscular").val();
    let Descripcion = $("#inpDescripcionEjercicios").val();
    let Accion = (IdEjercicio != "" && IdEjercicio > 0) ? "A" : "I";

    let parametros = {
        "IdEjercicios": IdEjercicio,
        "IdEstado": IdEstado,
        "NombreEjercicio": NombreEjercicio,
        "GrupoMuscular": GrupoMuscular,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarEjercicios", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdEjercicio").val("");
            $("#selEstadosEjercicios").val(1);
            $("#inpNombreEjercicio").val("");
            $("#inpGrupoMuscular").val("");
            $("#inpDescripcionEjercicios").val("");

            ListarFiltrarEjercicios();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarEjercicios(IdEjercicios) {

    let parametros = {
        "IdEjercicios": IdEjercicios,
        "IdEstado": 0,
        "NombreEjercicio": "",
        "GrupoMuscular": "",
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarEjercicios", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdEjercicio").val("");
            $("#selEstadosEjercicios").val(1);
            $("#inpNombreEjercicio").val("");
            $("#inpGrupoMuscular").val("");
            $("#inpDescripcionEjercicios").val("");

            ListarFiltrarEjercicios();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}