$(document).ready(function () {
    CargaCombosInventario();
    ListarFiltrarEquipos();
});

function CargaCombosInventario() {
    comboCategorias('selCategoriaEquipo');
    comboSalas('selSalaEquipo');
    comboEstados(["selEstadoEquipo"], "G");
}

function ListarFiltrarEquipos() {
    LimpiarCamposModal();

    let parametros = {
        "ID_Estado": "0"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarEquipos",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";

            for (var i = 0; i < lista.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionarInventario(\'' + JSON.stringify(lista[i]).replace(/"/g, "¬") + '\');" >' +
                            '<td>' + lista[i].sNombreEquipo + '</td>' +
                            '<td>' + lista[i].sCategoriaDsc + '</td>' +
                            '<td>' + lista[i].sSalaDsc + '</td>' +                           
                            '<td>' + lista[i].sDescripEquipo + '</td>' +
                        '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaInventario").html(tabla);
        }
    });
}

function SeleccionarInventario(objSelect) {
    objSelect = objSelect.replace(/¬/g, '"');
    var objParse = JSON.parse(objSelect);

    $("#inpHidIdEquipo").val(objParse.sIdEquipo);
    $("#selCategoriaEquipo").val(objParse.bIdCatEquipos);
    $("#selSalaEquipo").val(objParse.bIdSalasGym);
    $("#inpNombreEquipo").val(objParse.sNombreEquipo);
    $("#inpDescripcionEquipo").val(objParse.sDescripEquipo);
    $("#selEstadoEquipo").val(objParse.bIdEstado);

    $("#ModalNuevoEquipo").modal("show");
}

function GuardarEliminarEquipo() {

    let parametros = {
        "ID_Equipo": $("#inpHidIdEquipo").val(),
        "ID_Cat_Equipos": $("#selCategoriaEquipo").val(),
        "ID_Salas": $("#selSalaEquipo").val(),
        "ID_Estado": $("#selEstadoEquipo").val(),
        "Nombre_Equipo": $("#inpNombreEquipo").val(),
        "Descrip_Equipo": $("#inpDescripcionEquipo").val(),
        "Accion": $("#inpHidIdEquipo").val() == "0" ? "I" : "A"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/GuardarEliminarEquipo",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            $("#ModalNuevoEquipo").modal("hide");
            mostrarMensaje("Información", "Se ha guardado el equipo exitosamente");

            ListarFiltrarEquipos();
        }
    });
}

function LimpiarCamposModal() {
    $("#inpHidIdEquipo").val(0)
    $("#selCategoriaEquipo").val("");
    $("#selSalaEquipo").val("");
    $("#inpNombreEquipo").val("");
    $("#inpDescripcionEquipo").val("");
    $("#selEstadoEquipo").val("");
}
