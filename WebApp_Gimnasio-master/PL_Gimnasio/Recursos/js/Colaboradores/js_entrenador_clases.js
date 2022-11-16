$(document).ready(function () {
    CargaCombosEntrenadorClase();
    ListarFiltrarClasesGrupales();
});

function CargaCombosEntrenadorClase() {
    comboColaboradores("selColaborador", "E");
    comboEstados(["selEstado"], "G");
}

function ListarFiltrarClasesGrupales() {
    LimpiarCamposModal();

    let parametros = {
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarClasesGrupales",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";

            for (var i = 0; i < lista.length; i++) {
                let checked = (lista[i].bIdEstado == 1) ? ' checked="checked" ' : "";

                tabla += '<tr class="' + estilo + '" onclick="SeleccionarClaseGrupal(\'' + JSON.stringify(lista[i]).replace(/"/g, "¬") + '\');" >' +
                    '<td>' + lista[i].sNombreClase + '</td>' +
                    '<td>' + lista[i].iIdColaborador + '</td>' +
                    '<td>' + lista[i].dtFechaInicio + '</td>' +
                    '<td>' + lista[i].dtFechaFin + '</td>' +
                    '<td>' + lista[i].tHoraClase + '</td>' +
                    '<td>' + lista[i].bFrecuencia + '</td>' +
                    '<td>' + lista[i].sCuposDisponibles + '</td>' +                    
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaClasGrupal").html(tabla);
        }
    });
}

function SeleccionarClaseGrupal(objClaseGrupal) {
    objClaseGrupal = objClaseGrupal.replace(/¬/g, '"');
    var claseGrupal = JSON.parse(objClaseGrupal);

    $("#inpHidIdClase").val(claseGrupal.iIdClaseGrupal);
    $("#selColaborador").val(claseGrupal.iIdColaborador);
    $("#inpClase").val(claseGrupal.sNombreClase);
    $("#inpDescripcion").val(claseGrupal.sDescripcion);
    $("#inpFrecuencia").val(claseGrupal.bFrecuencia);
    $("#inpFechaInicio").val(claseGrupal.dtFechaInicio);
    $("#inpFechaFinal").val(claseGrupal.dtFechaFin);
    $("#inpHora").val(claseGrupal.tHoraClase);
    $("#inpCupos").val(claseGrupal.sCuposDisponibles);
    $("#inpRequisitos").val(claseGrupal.sRequisitos);
    $("#selEstado").val(claseGrupal.bIdEstado);

    $("#ModalNuevaClase").modal("show");
}

function GuardarClaseGrupal() {

    let parametros = {
        "ID_Clase_Grupal": $("#inpHidIdClase").val(),
        "ID_Colaborador": $("#selColaborador").val(),
        "ID_Estado": $("#selEstado").val(),
        "Nombre_Clase": $("#inpClase").val(),
        "Descripcion": $("#inpDescripcion").val(),
        "Frecuencia": $("#inpFrecuencia").val(),
        "Fecha_Inicio": $("#inpFechaInicio").val(),
        "Fecha_Fin": $("#inpFechaFinal").val(),
        "Hora_Clase": $("#inpHora").val(),
        "Requisitos": $("#inpRequisitos").val(),
        "Cupos_Disponibles": $("#inpCupos").val(),
        "Accion": $("#inpHidIdClase").val() == "0" ? "I" : "A"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/GuardarClasesGrupales",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            $("#ModalNuevaClase").modal("hide");
            mostrarMensaje("Información", "Se ha guardado la clase exitosamente");
            
            ListarFiltrarClasesGrupales();
        }
    });
}

function LimpiarCamposModal() {
    $("#inpHidIdClase").val(0)
    $("#selColaborador").val();
    $("#inpClase").val("");
    $("#inpDescripcion").val("");
    $("#inpFrecuencia").val("");
    $("#inpFechaInicio").val(new Date());
    $("#inpFechaFinal").val(new Date());
    $("#inpHora").val("");
    $("#inpCupos").val("");
    $("#inpRequisitos").val("");
    $("#selEstado").val(1);
}
