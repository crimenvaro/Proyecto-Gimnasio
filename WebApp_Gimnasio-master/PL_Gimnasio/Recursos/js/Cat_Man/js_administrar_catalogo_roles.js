
$(document).ready(function () {
    ListarFiltrarRoles();
});

function ListarFiltrarRoles() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Rol = $("#inpRol").val();
    let Descripcion = $("#inpDescripcionRoles").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Rol": Rol,
        "Descripcion": Descripcion

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarRoles", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_roles = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_roles.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaRoles(this);" idRol="' + lista_roles[i].bIdRol + '" idEstado="' + lista_roles[i].bIdEstado + '" rol="' + lista_roles[i].sRol + '" descripcion="' + lista_roles[i].sDescripcion + '">' +
                    '<td>' + lista_roles[i].bIdRol + '</td>' +
                    '<td>' + lista_roles[i].bIdEstado + '</td>' +
                    '<td>' + lista_roles[i].sRol + '</td>' +
                    '<td>' + lista_roles[i].sDescripcion + '</td>' +
                    '<td onclick="EliminarRoles(' + lista_roles[i].bIdRol + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaRoles").html(tabla);

            //$('#dataTable-departamentos').dataTable();
        }
    });
}

function SeleccionaRoles(objSeleccionado) {
    let idRol = $(objSeleccionado).attr("idRol");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let rol = $(objSeleccionado).attr("rol");
    let descripcion = $(objSeleccionado).attr("descripcion");

    $("#inpIdRoles").val(idRol);
    $("#selEstadosRoles").val(idEstado);
    $("#inpRol").val(rol);
    $("#inpDescripcionRoles").val(descripcion);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarRoles() {

    let IdRol = $("#inpIdRoles").val();
    let IdEstado = $("#selEstadosRoles").val();
    let Rol = $("#inpRol").val();
    let Descripcion = $("#inpDescripcionRoles").val();
    let Accion = (IdRol != "" && IdRol > 0) ? "A" : "I";

    let parametros = {
        "IdRol": IdRol,
        "IdEstado": IdEstado,
        "Rol": Rol,
        "Descripcion": Descripcion,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarRoles", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdRoles").val("");
            $("#selEstadosRoles").val(1);
            $("#inpRol").val("");
            $("#inpDescripcionRoles").val("");

            ListarFiltrarRoles();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarRoles(IdRol) {

    let parametros = {
        "IdRol": IdRol,
        "IdEstado": 0,
        "Rol": "",
        "Descripcion": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/GuardarEliminarRoles", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdRoles").val("");
            $("#selEstadosRoles").val(1);
            $("#inpRol").val("");
            $("#inpDescripcionRoles").val("");

            ListarFiltrarRoles();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}