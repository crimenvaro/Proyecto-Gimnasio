
$(document).ready(function () {
    ListarFiltrarSalas();
});

function ListarFiltrarSalas() {
    let IdEstado = 0;       //$("#selEstados").val();
    //let Sala = $("#inpSala").val();
    let Descripcion = $("#inpDescripcionSalas").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Descripcion": Descripcion

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/ListarFiltrarSalas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_salas = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_salas.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaSalas(this);" id="' + lista_salas[i].bIdSalasGym + '" idEstado="' + lista_salas[i].bIdEstado + '" descripcion="' + lista_salas[i].sDescripSalasGym + '">' +
                    '<td>' + lista_salas[i].bIdSalasGym + '</td>' +
                    '<td>' + lista_salas[i].bIdEstado + '</td>' +
                    '<td>' + lista_salas[i].sDescripSalasGym + '</td>' +
                    '<td onclick="EliminarSalas(' + lista_salas[i].bIdSalasGym + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaSalas").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaSalas(objSeleccionado) {
    let idSalas = $(objSeleccionado).attr("idSalas");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdSalas").val(idSalas);
    $("#selEstadosSalas").val(idEstado);
    $("#inpDescripcionSalas").val(descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarSalas() {

    let IdSala = $("#inpIdSalas").val();
    let IdEstado = $("#selEstadosSalas").val();
    let Descripcion = $("#inpDescripcionSalas").val();
    let Accion = (IdSala != "" && IdSala > 0) ? "A" : "I";

    let parametros = {
        "IdSala": IdSala,
        "IdEstado": IdEstado,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarSalas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdSalas").val("");
            $("#selEstadosSalas").val(1);
            $("#inpDescripcionSalas").val("");

            ListarFiltrarSalas();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarSalas(IdSala) {

    let parametros = {
        "IdSala": IdSala,
        "IdEstado": 0,
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarSalas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdSalas").val("");
            $("#selEstadosSalas").val(1);
            $("#inpDescripcionSalas").val("");

            ListarFiltrarSalas();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}