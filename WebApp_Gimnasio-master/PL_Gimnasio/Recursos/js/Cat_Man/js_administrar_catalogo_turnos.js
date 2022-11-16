
$(document).ready(function () {
    ListarFiltrarTurnos();
});

function ListarFiltrarTurnos() {
    let IdEstado = 0;       //$("#selEstados").val();
    let Turno = $("#inpTurno").val();
    let HoraEntrada = $("#inpHoraEntrada").val();
    let HoraSalida = $("#inpHoraSalida").val();

    let parametros = {
        "IdEstado": IdEstado,
        "Turno": Turno,
        "HoraEntrada": HoraEntrada,
        "HoraSalida": HoraSalida

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/ListarFiltrarTurnos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_turnos = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_turnos.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaTurno(this);" idTurno="' + lista_turnos[i].sIdTurno + '" idEstado="' + lista_turnos[i].bIdEstado + '" Turno="' + lista_turnos[i].sTurno + '" HoraEntrada="' + lista_turnos[i].tHoraEntrada + '" HoraSalida="' + lista_turnos[i].tHoraSalida + '">' +
                    '<td>' + lista_turnos[i].sIdTurno + '</td>' +
                    '<td>' + lista_turnos[i].bIdEstado + '</td>' +
                    '<td>' + lista_turnos[i].sTurno + '</td>' +
                    '<td>' + lista_turnos[i].tHoraEntrada + '</td>' +
                    '<td>' + lista_turnos[i].tHoraSalida + '</td>' +
                    '<td onclick="EliminarTurnos(' + lista_turnos[i].sIdTurno + ');"><span class="table-icon fa fa-trash"></span></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaTurnos").html(tabla);

            //$('#dataTable-turnos').dataTable();
        }
    });
}

function SeleccionaTurno(objSeleccionado) {
    let IdTurno = $(objSeleccionado).attr("IdTurno");
    let idEstado = $(objSeleccionado).attr("idEstado");
    let Turno = $(objSeleccionado).attr("Turno");
    let HoraEntrada = $(objSeleccionado).attr("HoraEntrada");
    let HoraSalida = $(objSeleccionado).attr("HoraSalida");

    $("#inpIdTurnos").val(IdTurno);
    $("#selEstados").val(idEstado);
    $("#inpTurno").val(Turno);
    $("#inpHoraEntrada").val(HoraEntrada);
    $("#inpHoraSalida").val(HoraSalida);

}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function GuardarTurno() {

    let IdTurno = $("#inpIdTurnos").val();
    let IdEstado = $("#selEstados").val();
    let Turno = $("#inpTurno").val();
    let HoraEntrada = $("#inpHoraEntrada").val();
    let HoraSalida = $("#inpHoraSalida").val();
    let Accion = (IdTurno != "" && IdTurno > 0) ? "A" : "I";

    let parametros = {
        "IdTurno": IdTurno,
        "IdEstado": IdEstado,
        "Turno": Turno,
        "HoraEntrada": HoraEntrada,
        "HoraSalida": HoraSalida,
        "Accion": Accion
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarTurnos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTurnos").val("");
            $("#selEstados").val(1);
            $("#inpTurno").val("");
            $("#inpHoraEntrada").val("");
            $("#inpHoraSalida").val("");

            ListarFiltrarTurnos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha realizado " + ((Accion == "I") ? "la inserción" : "la actualización") + " con éxito");
        }
    });
}

//Acción I:Insertar, A:Actualizar, E:Eliminar
function EliminarTurnos(IdTurno) {

    let parametros = {
        "IdTurno": IdTurno,
        "IdEstado": 0,
        "Turno": "",
        "HoraEntrada": "",
        "HoraSalida": "",
        "Accion": "E"
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/GuardarEliminarTurnos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let respuesta = obj_retorno.d;

            $("#inpIdTurnos").val("");
            $("#selEstados").val(1);
            $("#inpTurno").val("");
            $("#inpHoraEntrada").val("");
            $("#inpHoraSalida").val("");

            ListarFiltrarTurnos();

            alert(respuesta <= 0 ? "No se ha podido realizar la acción" : "Se ha inactivado con éxito");
        }
    });
}