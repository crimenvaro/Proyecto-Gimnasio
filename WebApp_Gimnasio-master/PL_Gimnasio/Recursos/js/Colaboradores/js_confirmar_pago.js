$(document).ready(function () {
    ListarConsultarPendientes();
});

function CargaInformacionPantallaCliente() {
    if (IdCliente == 0) {
        mostrarMensaje("Por favor, seleccione el cliente para cargar los pendientes");
    }
    else {
        ListarConsultarPendientes();
    }
}

function ListarConsultarPendientes() {
    let parametros = {
        "IdCliente": IdCliente
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFacturasPendienteAprobacion", 
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_factura = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
           
            for (var i = 0; i < lista_factura.length; i++) {
                tabla += '<tr class="' + estilo + '">' +
                    '<td>' + lista_factura[i].sCedula + '</td>' +
                    '<td>' + lista_factura[i].sNombreCliente + '</td>' +
                    '<td>' + lista_factura[i].sNombreFactura + '</td>' +
                    '<td class="align-right">' + lista_factura[i].dSubTotal + '</td>' +
                    '<td class="align-right">' + lista_factura[i].dDescuento + '</td>' +
                    '<td class="center">' + lista_factura[i].dImpuesto + '</td>' +
                    '<td class="w170 align-right">' + lista_factura[i].dTotal + '</td>' +
                    '<td><input type="button" class="btn-table" value="Confirmar" onclick="ConfirmarPago(' + lista_factura[i].lIdEstadoPendiente + ');" /></td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#tablaFactura").html(tabla);
        }
    });
}

function ConfirmarPago(IdEstadoPendiente) {
    if (confirm("Se va a aplicar el pago de la transferencia seleccionada, está seguro de continuar el proceso?")) {
        let parametros = {
            "IdEstadoPendiente": IdEstadoPendiente
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/AprobarFacturaPendiente",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                mostrarMensaje("Información","Se ha aprobado exitosamente, se le envía un correo con el detalle de la factura al cliente");
                ListarConsultarPendientes();
            }
        });
    }
}