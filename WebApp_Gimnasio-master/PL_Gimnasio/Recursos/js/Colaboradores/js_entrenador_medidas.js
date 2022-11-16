$(document).ready(function () {
    CargaCombosEntrenadorMedidas();
});

function CargaInformacionPantallaCliente() {
    ListarFiltrarMedidas();
}

function CargaCombosEntrenadorMedidas() {
    comboEstados(["selEstado"], "G");
    comboTiposMedida("selTipoMedida");
}

function ListarFiltrarMedidas() {
    LimpiarCamposModal();

    let parametros = {
        "ID_Cliente": IdCliente
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarMedidas",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista = JSON.parse(obj_retorno.d);

            let tabla = '';

            for (var i = 0; i < lista.length; i++) {
                tabla += '<div class="col-md-3">' +
                    '<div class="cd-medidas-text" >' +
                    '<div class="trainer-title">' +
                    '<h4>' + lista[i].sFechaMedicion + '</h4>' +
                    '</div>' +
                    '<ul class="trainer-info">';

                var fechaActual = lista[i].sFechaMedicion;

                while (i < lista.length && lista[i].sFechaMedicion == fechaActual) {
                    tabla += '<li><span>' + lista[i].sTipoMedidaDsc + '</span>' + lista[i].sMedidaValor + '</li>'
                    i++;
                }
                i--;

                tabla += '</ul></div></div>';
            }

            $("#contenidoMedidas").html(tabla);
        }
    });
}


function GuardarMedidas() {
    
    if (IdCliente == undefined || IdCliente == 0) {
        mostrarMensaje("Alerta", "Por favor, seleccione antes el cliente al que va a adicionar las medidas");
    }
    else if ($("#inpMedidaValor").val() == "") {       
        mostrarMensaje("Alerta", "Por favor, indicar el valor de la medida.");
    }
    else if ($("#inpFechaMedida").val() == "") {
        mostrarMensaje("Alerta", "Por favor, indicar la fecha.");
    }
    else {
        let parametros = {
            "ID_Medicion": 0,
            "ID_Cliente": IdCliente,
            "ID_Estado": 1,
            "ID_Tipo_Medida": $("#selTipoMedida").val(),
            "Medida_Valor": $("#inpMedidaValor").val(),
            "Fecha_Medicion": $("#inpFechaMedida").val(),
            "Accion": "I"
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/GuardarMedida",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                if (obj_retorno.d > 0) {                    
                    mostrarMensaje("Información", "Se han guardado las medidas exitosamente");
                    ListarFiltrarMedidas();
                }
                else {
                    mostrarMensaje("Alerta", "La medida ya se ha ingresado para la misma fecha");
                }
            }
        });
    }
}

function LimpiarCamposModal() {
    $("#inpMedidaValor").val("");
}