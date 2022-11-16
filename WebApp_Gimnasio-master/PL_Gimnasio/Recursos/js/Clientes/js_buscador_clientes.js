var IdCliente = 0;

function FiltrarClientes() {
  
    let parametros = {
        "IdEstado": 1,
        "Cedula": $("#inpBuscarIdentificacion").val(),
        "Nombre": $("#inpBuscarNombre").val(),
        "Apellidos": $("#inpBuscarApellidos").val()
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloClientes.aspx/ListarFiltrarClientes", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_clientes = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_clientes.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaClienteBuscador(this);" idCliente="' + lista_clientes[i].iIdCliente + '" cedula="' + lista_clientes[i].sCedula + '" nombreApellidos="' + lista_clientes[i].sNombre + ' ' + lista_clientes[i].sApellido1 + ' ' + lista_clientes[i].sApellido2 + '" telefono="' + lista_clientes[i].iTelefono + '" correo="' + lista_clientes[i].sCorreo+'">' +
                    '<td>' + lista_clientes[i].sCedula + '</td>' +
                    '<td>' + lista_clientes[i].sNombre + '</td>' +
                    '<td>' + lista_clientes[i].sApellido1 + '</td>' +
                    '<td>' + lista_clientes[i].sApellido2 + '</td>' +
                    '<td>' + lista_clientes[i].sUsuario + '</td>' +                    
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#lista_buscador_clientes").html(tabla);
        }
    });
}


function SeleccionaClienteBuscador(objCliente) {
    IdCliente = $(objCliente).attr("idCliente");
    let cedula = $(objCliente).attr("cedula");
    let  nombreApellidos = $(objCliente).attr("nombreApellidos");
    let telefono = $(objCliente).attr("telefono");
    let correo = $(objCliente).attr("correo");
    $("#usuarioSeleccionado").html("<b>Usuario seleccionado:</b> " + cedula + ' - ' + nombreApellidos);
    $("#inpIdentificacionCliente").val(cedula);
    $("#inpTelefonoCliente").val(telefono);
    $("#inpCorreoCliente").val(correo);

    $("#ModalBuscador").modal("hide");

    CargaInformacionPantallaCliente();
}