$(document).ready(function () {
    
});

function CargaInformacionPantallaCliente() {
    if (IdCliente == 0) {
        mostrarMensaje("Por favor, seleccione el cliente para cargar la factura");
    }
    else {
        ListarFiltrarFacturas();
    }
}

var descuento = 0;
var condonacion = false;
var pagoTarjeta = true;
var IdFactura = 0;
var IdDetalle = 0;

function ListarFiltrarFacturas() {
    let IdEstado = 3;
    let FechaInicio = "";
    let FechaFinal = "";

    let parametros = {
        "IdCliente": IdCliente,
        "IdEstado": IdEstado,
        "FechaInicio": FechaInicio,
        "FechaFinal": FechaFinal
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarFacturas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_factura = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            let subtotal = 0;
            let descuentos = 0;
            let iva = 0;
            let total = 0;

            for (var i = 0; i < lista_factura.length; i++) {
                tabla += '<tr class="' + estilo + '">' +
                    '<td><input type="button" class="btn-table" value="Aplicar" onclick="AbrirDescuento(' + lista_factura[i].lIdFactura + ',' + lista_factura[i].lIdDetalleFactura + ');"/></td>' +
                    '<td><input type="button" class="btn-table" value="Aplicar" onclick="AbrirCondonacion(' + lista_factura[i].lIdFactura + ',' + lista_factura[i].lIdDetalleFactura + ');"/></td>' +
                    '<td>' + lista_factura[i].sNombre + '</td>' +
                    '<td class="align-right">' + lista_factura[i].dSubTotal + '</td>' +
                    '<td class="align-right">' + lista_factura[i].dDescuento + '</td>' +
                    '<td class="center">' + lista_factura[i].dImpuesto + '</td>' +
                    '<td class="w170 align-right">' + lista_factura[i].dTotal + '</td>' +
                    '<td><input type="button" class="btn-table" value="Pagar" onclick="AbrirPago(' + lista_factura[i].lIdFactura + ',' + lista_factura[i].lIdDetalleFactura + ');" /></td>' +
                    '</tr>';

                subtotal += parseFloat(lista_factura[i].dSubTotal);
                descuentos += parseFloat(lista_factura[i].dDescuento);
                iva += parseFloat(lista_factura[i].dImpuesto);
                total += parseFloat(lista_factura[i].dTotal);

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#idSubtotal").html(subtotal);
            $("#idDescuento").html(descuentos);
            $("#idIVA").html(iva);
            $("#idTotal").html(total);

            $("#tablaFactura").html(tabla);
        }
    });
}


function AbrirDescuento(idF, idDF) {
    IdFactura = idF;
    IdDetalle = idDF;
    $("#inpComentarioDescuento").val("");
    $("#selDescuento").val("0");
    $("#ModalDescuento").modal("show");
}

function GuardarDescuento() {
    if ($("#inpComentarioDescuento").val().replace(/ /g, '') == "") {
        mostrarMensaje("Información", "Por favor, ingrese un comentario para aplicar el descuento");
    }
    else {
        $("#ModalDescuento").modal("hide");
        descuento = true;

        let parametros = {
            "IdFactura": IdFactura,
            "IdDetalleFactura": IdDetalle,
            "Comentario": $("#inpComentarioCondonacion").val(),
            "Usuario": localStorage["username"],
            "Porcentaje": $("#selDescuento").val()
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/DescuentoPagoFactura",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                mostrarMensaje("Información", "Se ha aplicado el descuento");
                ListarFiltrarFacturas();
            }
        });
    }
}



function AbrirCondonacion(idF, idDF) {
    IdFactura = idF;
    IdDetalle = idDF;
    $("#inpComentarioCondonacion").val("");
    $("#ModalCondonacion").modal("show");
}

function GuardarCondonacion() {
    if ($("#inpComentarioCondonacion").val().replace(/ /g, '') == "") {
        mostrarMensaje("Información","Por favor, ingrese un comentario para aplicar la condonación");
    }
    else {
        $("#ModalCondonacion").modal("hide");
        condonacion = true;

        let parametros = {
            "IdFactura": IdFactura,
            "IdDetalleFactura": IdDetalle,
            "Comentario": $("#inpComentarioCondonacion").val(),
            "Usuario": localStorage["username"]
        };

        jQuery.ajax({
            type: "POST",
            method: "POST",
            url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/CondonarPagoFactura",
            data: JSON.stringify(parametros),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (obj_retorno) {
                mostrarMensaje("Información", "Se ha aplicado la condonación");
                ListarFiltrarFacturas();
            }
        });
    }
}

function AbrirPago(idF, idDF) {
    IdFactura = idF;
    IdDetalle = idDF;
    $("#selTipoPago").change(function () {
        if ($(this).val() == 1) {
            $("#btnAplicarPago").html("Aplicar pago");
            pagoTarjeta = true;
        }
        else {
            $("#btnAplicarPago").html("Notificar transferencia");
            pagoTarjeta = false;
        }
    });
    $("#ModalPagar").modal("show");
}

function AplicarPago() {
    $("#ModalPagar").modal("hide");

    let parametros = {
        "IdFactura": IdFactura,
        "IdDetalleFactura": IdDetalle,
        "Usuario": localStorage["username"],
        "TipoPago": pagoTarjeta ? "E" : "T" //E efectivo T transferencia
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/SP_AplicarPagoFactura", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            ListarFiltrarFacturas();
            if (pagoTarjeta)
                mostrarMensaje("Información","Se ha enviado un correo con la información del pago");
            else
                mostrarMensaje("Información","Se ha notificado al administrativo sobre la transferencia pendiente de aprobación");
        },
        error: function () {
            mostrarMensaje("Información","Ha ocurrido un error al enviar el correo.");
        }
    });
}
