
$(document).ready(function () {
    ListarFiltrarTiposMedidas();
});

function ListarFiltrarTiposMedidas() {
    let IdEstado = 0;
    let IdUnidadMedida = $("#selUnidadMedida").val();
    let Descripcion = $("#inpDescripcionTiposMedidas").val();
    

    let parametros = {
        "IdEstado": IdEstado,
        "IdUnidadMedida": IdUnidadMedida,
        "Descripcion": Descripcion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/ListarFiltrarTiposMedidas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_tiposmedidas = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_tiposmedidas.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaTiposMedidas(this);" idTipoMedida="' + lista_tiposmedidas[i].bIdTipoMedida + '" idEstado="' + lista_tiposmedidas[i].bIdEstado + '" idUnidadMedida="' + lista_tiposmedidas[i].sIdUnidadMedida + '" descripcion="' + lista_tiposmedidas[i].sDescripcion + '">' +
                    '<td>' + lista_tiposmedidas[i].bIdTipoMedida + '</td>' +
                    '<td>' + lista_tiposmedidas[i].bIdEstado + '</td>' +
                    '<td>' + lista_tiposmedidas[i].sIdUnidadMedida + '</td>' +
                    '<td>' + lista_tiposmedidas[i].sDescripcion + '</td>' +
                    
                    '<td onclick="EliminarTiposMedidas(' + lista_tiposmedidas[i].bIdTipoMedida + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaTiposMedidas").html(tabla);

        }
    });
}

function SeleccionaTiposMedidas(objSeleccionado) {
    let idTipoMedida = $(objSeleccionado).attr("idTipoMedida");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let idUnidadMedida = $(objSeleccionado).attr("idUnidadMedida");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdTiposMedidas").val(idTipoMedida);
    $("#selEstadoTiposMedidas").val(idEstado);
    $("#selUnidadMedida").val(idUnidadMedida);
    $("#inpDescripcionTiposMedidas").val(descripcion);
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarTiposMedidas() {

    let IdTipoMedida = $("#inpIdTiposMedidas").val();
    let IdEstado = $("#selEstadoTiposMedidas").val();
    let Descripcion = $("#inpDescripcionTiposMedidas").val();
    let IdUnidadMedida = $("#selUnidadMedida").val();
    let Accion = (IdTipoMedida != "" && IdTipoMedida > 0) ? "A" : "I";

    let parametros = {
        "IdTipoMedida": IdTipoMedida,
        "IdEstado": IdEstado,
        "IdUnidadMedida": IdUnidadMedida,
        "Descripcion": Descripcion,        
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarTiposMedidas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTiposMedidas").val("");
            $("#selEstadoTiposMedidas").val(1);
            $("#inpDescripcionTiposMedidas").val("");
            $("#selUnidadMedida").val("");

            ListarFiltrarTiposMedidas();
          
            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarTiposMedidas(IdTipoMedida) {

    let parametros = {
        
        "IdTipoMedida": IdTipoMedida,
        "IdEstado": 0,
        "IdUnidadMedida": "",
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/GuardarEliminarTiposMedidas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTiposMedidas").val("");
            $("#selEstadoTiposMedidas").val(1);
            $("#inpDescripcionTiposMedidas").val("");
            $("#selUnidadMedida").val("");

            ListarFiltrarTiposMedidas();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}