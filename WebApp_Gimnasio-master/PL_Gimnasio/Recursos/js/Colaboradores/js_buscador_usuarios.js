var IdColaborador = 0;

function FiltrarColaboradores() {

    let parametros = {
        "IdEstado": 1,
        "Cedula": $("#inpBuscarIdentificacion").val(),
        "Nombre": $("#inpBuscarNombre").val(),
        "Apellidos": $("#inpBuscarApellidos").val()
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloColaboradores.aspx/ListarFiltrarColaboradores", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_colaborador = JSON.parse(obj_retorno.d);

            let tabla = '';
            let estilo = "odd";
            for (var i = 0; i < lista_colaborador.length; i++) {

                tabla += '<tr class="' + estilo + '" onclick="SeleccionaColaboradorBuscador(this);" idColaborador="' + lista_colaborador[i].iIdColaborador + '" cedula="' + lista_colaborador[i].sCedula + '" nombreApellidos="' + lista_colaborador[i].sNombre + ' ' + lista_colaborador[i].sApellido1 + ' ' + lista_colaborador[i].sApellido2 + '" telefono="' + lista_colaborador[i].iTelefono + '" correo="' + lista_colaborador[i].sCorreo + '">' +
                    '<td>' + lista_colaborador[i].sCedula + '</td>' +
                    '<td>' + lista_colaborador[i].sNombre + '</td>' +
                    '<td>' + lista_colaborador[i].sApellido1 + '</td>' +
                    '<td>' + lista_colaborador[i].sApellido2 + '</td>' +
                    '<td>' + lista_colaborador[i].sUsuario + '</td>' +
                    '</tr>';

                estilo = (estilo == "odd" ? "even" : "odd"); //cambiar estilo de la linea alternando clase
            }

            $("#lista_buscador_colaborador").html(tabla);
        }
    });
}


function SeleccionaColaboradorBuscador(objColaborador) {
    IdColaborador = $(objColaborador).attr("idColaborador");
    let cedula = $(objColaborador).attr("cedula");
    let nombreApellidos = $(objColaborador).attr("nombreApellidos");
    let telefono = $(objColaborador).attr("telefono");
    let correo = $(objColaborador).attr("correo");
    $("#usuarioSeleccionado").html("<b>Usuario seleccionado:</b> " + cedula + ' - ' + nombreApellidos);
    $("#inpIdentificacionCliente").val(cedula);
    $("#inpTelefonoCliente").val(telefono);
    $("#inpCorreoCliente").val(correo);

    $("#ModalBuscador").modal("hide");

    CargaInformacionPantallaColaborador();
}