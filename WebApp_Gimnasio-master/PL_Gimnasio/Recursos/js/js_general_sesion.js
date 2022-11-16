var IdCliente;

$(window).on('load', function () {

    if (localStorage["username"] == undefined) {
        CerrarSesion();
    }
    else {
        $("#cuenta_usuario").html(localStorage["username"]);

        if (localStorage["tipo_usuario"] == "E") {
            ConfiguraMenuUsuario(localStorage["username"], localStorage["tipo_usuario"]);
        }
        else {
            IdCliente = localStorage["idCliente"];
        }
    }
});

function CerrarSesion() {
    let tipoUsuario = localStorage["tipo_usuario"];
    localStorage.clear();

    window.location.href = (tipoUsuario == "E") ? "./Wfrm_Empleado_Login.aspx" : "./Wfrm_Cliente_Login.aspx";
}

function ConfiguraMenuUsuario(usuario, rolIngreso) {
    if (rolIngreso == "C") {
        //toDo rol Cliente
    }
    else {
        //toDo Lista de roles de colaborador
        let listaRoles = localStorage["roles_usuario"];

        /*
         E: Entrenador
         R: Recepcionista
         A: Adminis
         P: Personal Administrativo
         */

        let listaPantallas = [];
        listaPantallas.push("Wfrm_Empleado_Principal".toLowerCase());
        listaPantallas.push("Wfrm_Empleado_Cuenta".toLowerCase());

        let pagina = document.location.pathname.replace("/", "").replace(".aspx", "").replace("./", "").toLowerCase();

        if (listaRoles.indexOf('A') > -1) {
            listaPantallas.push("Wfrm_Administracion_Informes".toLowerCase());
            listaPantallas.push("Wfrm_Configuraciones_Parametros".toLowerCase());
            listaPantallas.push("Wfrm_Confirmar_Pago".toLowerCase());
            listaPantallas.push("Wfrm_Empleado_Agenda_Cita".toLowerCase());
            listaPantallas.push("Wfrm_Empleado_Agenda_Clase".toLowerCase());
            listaPantallas.push("Wfrm_Empleado_Agenda_Sesion".toLowerCase());
            listaPantallas.push("Wfrm_Empleado_Cliente".toLowerCase());
            listaPantallas.push("Wfrm_Empleado_Roles".toLowerCase());
            listaPantallas.push("Wfrm_Entrenador_Clases".toLowerCase());
            listaPantallas.push("Wfrm_Entrenador_Expediente".toLowerCase());
            listaPantallas.push("Wfrm_Entrenador_Rutinas".toLowerCase());
            listaPantallas.push("Wfrm_Facturacion_Factura".toLowerCase());
            listaPantallas.push("Wfrm_Inventario".toLowerCase());
            listaPantallas.push("Wfrm_Usuario_Contrasenna".toLowerCase());

            $("#nvmInformes").removeClass("noDisplay");
            $("#nvmConfiguraciones").removeClass("noDisplay");
            $("#nvmConfirmarPago").removeClass("noDisplay");
            $("#nvmAgendaCita").removeClass("noDisplay");
            $("#nvmAgendaClase").removeClass("noDisplay");
            $("#nvmAgendaSesion").removeClass("noDisplay");
            $("#nvmClientes").removeClass("noDisplay");
            $("#nvmRolesUsuario").removeClass("noDisplay");
            $("#nvmEntrenadorClase").removeClass("noDisplay");
            $("#nvmEntrenadorExpediene").removeClass("noDisplay");
            $("#nvmEntrenadorRutinas").removeClass("noDisplay");
            $("#nvmFacturacion").removeClass("noDisplay");
            $("#nvmInventario").removeClass("noDisplay");
            $("#nvmUsuarioContrasenna").removeClass("noDisplay");

            $("#menuAdministracion").removeClass("noDisplay");
            $("#navItemInformes").removeClass("noDisplay");
            $("#navItemInventario").removeClass("noDisplay");
            $("#navItemFacturacion").removeClass("noDisplay");
            $("#navItemConfirmarPago").removeClass("noDisplay");

            $("#menuUsuarios").removeClass("noDisplay");
            $("#menuAgenda").removeClass("noDisplay");
            $("#menuEntrenador").removeClass("noDisplay");
            $("#menuSeguridad").removeClass("noDisplay");
            $("#menuCatalogo").removeClass("noDisplay");

            if (pagina == "Wfrm_Empleado_Principal".toLowerCase()) {
                $("#Administracion").removeClass("noDisplay");
                $("#principalMenuFacturacion").removeClass("noDisplay");
                $("#principalMenuInformes").removeClass("noDisplay");
                $("#principalMenuInventario").removeClass("noDisplay");
                $("#principalMenuConfirmacion").removeClass("noDisplay");
                $("#Gestion").removeClass("noDisplay");
                $("#Agenda").removeClass("noDisplay");
                $("#Trainer").removeClass("noDisplay");
                $("#Seguridad").removeClass("noDisplay");
                $("#Config").removeClass("noDisplay");
            }
        }
        else {
            if (listaRoles.indexOf('P') > -1) {
                if (!listaPantallas.includes("Wfrm_Administracion_Informes".toLowerCase())) {
                    listaPantallas.push("Wfrm_Administracion_Informes".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Inventario".toLowerCase())) {
                    listaPantallas.push("Wfrm_Inventario".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Facturacion_Factura".toLowerCase())) {
                    listaPantallas.push("Wfrm_Facturacion_Factura".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Administracion_Colaborador".toLowerCase())) {
                    listaPantallas.push("Wfrm_Administracion_Colaborador".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Horario".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Horario".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Usuario_Contrasenna".toLowerCase())) {
                    listaPantallas.push("Wfrm_Usuario_Contrasenna".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Roles".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Roles".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Configuraciones_Parametros".toLowerCase())) {
                    listaPantallas.push("Wfrm_Configuraciones_Parametros".toLowerCase());
                }

                $("#nvmInformes").removeClass("noDisplay");
                $("#nvmConfiguraciones").removeClass("noDisplay");
                $("#nvmConfirmarPago").removeClass("noDisplay");
                $("#nvmRolesUsuario").removeClass("noDisplay");
                $("#nvmEntrenadorClase").removeClass("noDisplay");
                $("#nvmEntrenadorExpediene").removeClass("noDisplay");
                $("#nvmEntrenadorRutinas").removeClass("noDisplay");
                $("#nvmFacturacion").removeClass("noDisplay");
                $("#nvmInventario").removeClass("noDisplay");
                $("#nvmUsuarioContrasenna").removeClass("noDisplay");

                $("#menuAdministracion").removeClass("noDisplay");
                $("#navItemInformes").removeClass("noDisplay");
                $("#navItemInventario").removeClass("noDisplay");
                $("#navItemFacturacion").removeClass("noDisplay");
                $("#navItemConfirmarPago").removeClass("noDisplay");

                $("#menuUsuarios").removeClass("noDisplay");
                $("#menuSeguridad").removeClass("noDisplay");
                $("#menuCatalogo").removeClass("noDisplay");

                if (pagina == "Wfrm_Empleado_Principal".toLowerCase()) {
                    $("#Administracion").removeClass("noDisplay");
                    $("#principalMenuFacturacion").removeClass("noDisplay");
                    $("#principalMenuInformes").removeClass("noDisplay");
                    $("#principalMenuInventario").removeClass("noDisplay");
                    $("#principalMenuConfirmacion").removeClass("noDisplay");
                    $("#Gestion").removeClass("noDisplay");
                    $("#Seguridad").removeClass("noDisplay");
                    $("#Config").removeClass("noDisplay");
                }
            }
            if (listaRoles.indexOf('R') > -1) {
                if (!listaPantallas.includes("Wfrm_Facturacion_Factura".toLowerCase())) {
                    listaPantallas.push("Wfrm_Facturacion_Factura".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Preregistro_Cliente".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Preregistro_Cliente".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Agenda_Sesion".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Agenda_Sesion".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Agenda_Clase".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Agenda_Clase".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Empleado_Agenda_Cita".toLowerCase())) {
                    listaPantallas.push("Wfrm_Empleado_Agenda_Cita".toLowerCase());
                }

                $("#nvmAgendaCita").removeClass("noDisplay");
                $("#nvmAgendaClase").removeClass("noDisplay");
                $("#nvmAgendaSesion").removeClass("noDisplay");
                $("#nvmClientes").removeClass("noDisplay");
                $("#nvmFacturacion").removeClass("noDisplay");

                $("#menuAdministracion").removeClass("noDisplay");
                $("#navItemFacturacion").removeClass("noDisplay");

                $("#menuUsuarios").removeClass("noDisplay");
                $("#menuAgenda").removeClass("noDisplay");

                if (pagina == "Wfrm_Empleado_Principal".toLowerCase()) {
                    $("#Administracion").removeClass("noDisplay");
                    $("#principalMenuFacturacion").removeClass("noDisplay");

                    $("#Gestion").removeClass("noDisplay");
                    $("#Agenda").removeClass("noDisplay");
                }
            }
            if (listaRoles.indexOf('E') > -1) {
                if (!listaPantallas.includes("Wfrm_Entrenador_Clases".toLowerCase())) {
                    listaPantallas.push("Wfrm_Entrenador_Clases".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Entrenador_Expediente".toLowerCase())) {
                    listaPantallas.push("Wfrm_Entrenador_Expediente".toLowerCase());
                }
                if (!listaPantallas.includes("Wfrm_Entrenador_Rutinas".toLowerCase())) {
                    listaPantallas.push("Wfrm_Entrenador_Rutinas".toLowerCase());
                }

                $("#nvmEntrenadorClase").removeClass("noDisplay");
                $("#nvmEntrenadorExpediene").removeClass("noDisplay");
                $("#nvmEntrenadorRutinas").removeClass("noDisplay");

                $("#menuEntrenador").removeClass("noDisplay");

                if (pagina == "Wfrm_Empleado_Principal".toLowerCase()) {
                    $("#Trainer").removeClass("noDisplay");
                }
            }
        }



        if (!listaPantallas.includes(pagina)) {
            CerrarSesion();
        }
    }
}

function comboEstados(listaCombos, opcion) {
    let parametros = {
        "Descripcion": "",
        "Opcion": (opcion == undefined) ? "" : opcion
    };
    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarEstados", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_estados = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_estados.length; i++) {
                valoresOption += "<option value='" + lista_estados[i].bIdEstado + "'>" + lista_estados[i].sDescripcion + "</option>";
            }
            for (var i = 0; i < listaCombos.length; i++) {
                $("#" + listaCombos[i]).html(valoresOption);
            }
        }
    });
}

function comboDescuento(idCombo) {
    let parametros = {
        "IdEstado": 0,
        "IdDescuento": 0,
        "Nombre": "",
        "Descripcion": "",
        "Periodo": "",
        "Costo": 0,
        "NumDias": 0,
        "Plan": 0

    };
    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarProductos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_productos = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_productos.length; i++) {
                valoresOption += "<option value='" + lista_productos[i].bIdProducto + "'>" + lista_productos[i].sNombre + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboDepartamento(idCombo) {
    let parametros = {
        "IdEstado": 0,
        "Departamento": ""

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarDepartamentos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_departamentos = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_departamentos.length; i++) {
                valoresOption += "<option value='" + lista_departamentos[i].bIdDepartamento + "'>" + lista_departamentos[i].sDepartamento + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboColaboradores(idCombo, rol) {
    let parametros = {
        "Rol": rol == undefined ? "" : rol
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarColaboradores", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_colaboradores = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_colaboradores.length; i++) {
                valoresOption += "<option value='" + lista_colaboradores[i].iIdColaborador + "'>" + lista_colaboradores[i].sNombre + " " + lista_colaboradores[i].sApellido1 + " " + lista_colaboradores[i].sApellido2 + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboUnidadesMedida(idCombo) {
    let parametros = {
        "IdEstado": 1,
        "Descripcion": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_AG.aspx/ListarFiltrarUnidadesDeMedida", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].sIdUnidadMedida + "'>" + lista_combo[i].sDescripcion + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboTiposMedida(idCombo) {
    let parametros = {
        "IdEstado": 1,
        "IdUnidadMedida": 0,
        "Descripcion": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/ListarFiltrarTiposMedidas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].bIdTipoMedida + "'>" + lista_combo[i].sDescripcion + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboRoles(idCombo) {
    let parametros = {
        "IdEstado": 0,
        "Rol": "",
        "Descripcion": ""
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
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].bIdRol + "'>" + lista_combo[i].sDescripcion + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboCategorias(idCombo) {
    let parametros = {
        "IdEstado": "1",
        "Descripcion": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarCategoriaEquipos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].bIdCatEquipos + "'>" + lista_combo[i].sDescripcion + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboSalas(idCombo) {
    let parametros = {
        "IdEstado": "1",
        "Descripcion": ""
    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad_CV.aspx/ListarFiltrarSalas", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].bIdSalasGym + "'>" + lista_combo[i].sDescripSalasGym + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

function comboPlanes(idCombo) {
    let parametros = {
        "IdEstado": "1",
        "IdDescuento": "0",
        "Nombre": "",
        "Descripcion": "",
        "Periodo": "",
        "Costo": "0",
        "NumDias": "0",
        "Plan": "1"

    };

    jQuery.ajax({
        type: "POST",
        method: "POST",
        url: "ajax/WebMethods/WebMethods_ModuloSeguridad.aspx/ListarFiltrarProductos", //ruta hasta el aspx del webmethods y luego la funcion específica a ejecutar
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (obj_retorno) {
            let lista_combo = JSON.parse(obj_retorno.d);
            let valoresOption = "";
            for (var i = 0; i < lista_combo.length; i++) {
                valoresOption += "<option value='" + lista_combo[i].bIdProducto + "'>" + lista_combo[i].sNombre + "</option>";
            }
            $("#" + idCombo).html(valoresOption);
        }
    });
}

