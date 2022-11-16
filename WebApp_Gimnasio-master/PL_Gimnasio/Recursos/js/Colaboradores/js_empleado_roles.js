$(document).ready(function () {
    CargaCombosRoles();
});

function CargaInformacionPantallaColaborador() {
    ListarFiltrarRolesUsuario();
}

function CargaCombosRoles() {
    comboRoles("selRoles");
}

function ListarFiltrarRolesUsuario() {

    let parametros = {
        "IdColaborador": IdColaborador
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarRolesUsuario",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista = JSON.parse(obj_retorno.d);

            let tabla = '';

            for (var i = 0; i < lista.length; i++) {
                var checked = lista[i].bIdEstado == 1 ? 'checked="checked"' : "";
                tabla += '<tr class="odd">' +
                    '<td>' + lista[i].sRol + '</td>' +
                    '<td>' + lista[i].sDescripcion + '</td>' +
                    '<td><input type="checkbox" ' + checked + ' onclick="EliminarRol(' + lista[i].bIdRol + ')"/></td>' +
                    '</tr>'
            }

            $("#tablaRolesUsuario").html(tabla);
        }
    });
}


function GuardarRol() {

    if (IdColaborador == undefined || IdColaborador == 0) {
        mostrarMensaje("Alerta", "Por favor, seleccione antes el colaborador al que va a adicionar el rol");
    }
    else {
        let parametros = {
            "ID_Colaborador": IdColaborador,
            "ID_Rol": $("#selRoles").val(),
            "ID_Estado": 1,
            "Accion": "I"
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/GuardarEliminarRolesUsuario",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                if (obj_retorno.d > 0) {
                    mostrarMensaje("Información", "Se ha guardado el rol exitosamente");
                    ListarFiltrarRolesUsuario();
                }
                else {
                    mostrarMensaje("Alerta", "El rol ya está asignado al colaborador");
                }
            }
        });
    }
}

function EliminarRol(IdRol) {

    let parametros = {
        "ID_Colaborador": IdColaborador,
        "ID_Rol": IdRol,
        "ID_Estado": "0",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/GuardarEliminarRolesUsuario",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            if (obj_retorno.d > 0) {
                ListarFiltrarRolesUsuario();
            }
            else if (obj_retorno.d == -1) {
                mostrarMensaje("Alerta", "El rol no se puede modificar");
            }
        }
    });
}