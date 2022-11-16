<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Configuraciones_Parametros.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Configuraciones_Parametros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Catálogo</title>

    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="Recursos/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/flaticon.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/style.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/css_formulario.css" type="text/css" />
</head>
<body>

    <div id="preloder">
        <div class="loader"></div>
    </div>

    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="fa fa-close"></i>
        </div>
        <div class="canvas-search search-switch">
            <i class="fa fa-search"></i>
        </div>
        <nav class="canvas-menu mobile-menu">
            <ul>
                <li><a href="Wfrm_Empleado_Principal.aspx">Inicio</a></li>
                <li id="nvmAgendaCita" class="noDisplay"><a href="Wfrm_Empleado_Agenda_Cita.aspx">Cita de valoración</a></li>
                <li id="nvmAgendaClase" class="noDisplay"><a href="Wfrm_Empleado_Agenda_Clase.aspx">Clase Grupal</a></li>
                <li id="nvmAgendaSesion" class="noDisplay"><a href="Wfrm_Empleado_Agenda_Sesion.aspx">Sesión Individual</a></li>
                <li id="nvmClientes" class="noDisplay"><a href="Wfrm_Empleado_Cliente.aspx">Clientes</a></li>
                <li id="nvmRolesUsuario" class="noDisplay"><a href="Wfrm_Empleado_Roles.aspx">Roles Usuario</a></li>
                <li id="nvmEntrenadorClase" class="noDisplay"><a href="Wfrm_Entrenador_Clases.aspx">Gestión de clases</a></li>
                <li id="nvmEntrenadorExpediene" class="noDisplay"><a href="Wfrm_Entrenador_Expediente.aspx">Expediente de cliente</a></li>
                <li id="nvmEntrenadorRutinas" class="noDisplay"><a href="Wfrm_Entrenador_Rutinas.aspx">Rutinas de cliente</a></li>
                <li id="nvmFacturacion" class="noDisplay"><a href="Wfrm_Facturacion_Factura.aspx">Facturas</a></li>
                <li id="nvmConfirmarPago" class="noDisplay"><a href="Wfrm_Confirmar_Pago.aspx">Confirmar Pago</a></li>
                <li id="nvmInventario" class="noDisplay"><a href="Wfrm_Inventario.aspx">Inventario</a></li>
                <li id="nvmInformes" class="noDisplay"><a href="Wfrm_Administracion_Informes.aspx">Informes</a></li>
                <li id="nvmConfiguraciones" class="noDisplay"><a href="Wfrm_Configuraciones_Parametros.aspx">Parámetros</a></li>
                <li id="nvmUsuarioContrasenna" class="noDisplay"><a href="Wfrm_Usuario_Contrasenna.aspx">Usuario Contraseña</a></li>
                <li id="nvmMiCuenta"><a href="Wfrm_Empleado_Cuenta.aspx">Mi cuenta</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
    </div>

    <!--NAV BAR-->
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-0">
                    <div class="logo">
                        <a href="./Wfrm_Principal.aspx">
                            <img src="Recursos/img/logo.png" alt="" />
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <nav class="nav-menu">
                        <ul>
                            <li><a class="nav-item " href="Wfrm_Empleado_Principal.aspx">Inicio</a></li>

                            <!--Submenu opciones Administración-->
                            <li id="menuAdministracion" class="noDisplay nav-item dropdown">
                                <a class="droptown-toggle" id="navbaradmin">Administración</a>
                                <ul class="dropdown" aria-labelledby="navbaradmin">
                                    <li><a href="Wfrm_Administracion_Informes.aspx">Informes</a></li>
                                    <li><a href="Wfrm_Inventario.aspx">Inventario</a></li>
                                    <li><a href="Wfrm_Facturacion_Factura.aspx">Facturación</a></li>
                                    <li><a href="Wfrm_Confirmar_Pago.aspx">Confirmar Pago</a></li>
                                </ul>
                            </li>

                            <!--Submenu opciones Gestion de Cuentas-->
                            <li id="menuUsuarios" class="noDisplay nav-item dropdown">
                                <a class="droptown-toggle" id="navbarUsuario">Gestión de Usuarios</a>
                                <ul class="dropdown" aria-labelledby="navbarUsuario">
                                    <li><a href="Wfrm_Empleado_Cliente.aspx">Clientes</a></li>
                                </ul>
                            </li>

                            <!--Submenu opciones Agenda-->
                            <li id="menuAgenda" class="noDisplay nav-item dropdown">
                                <a class="droptown-toggle" id="navbarAgenda">Agenda</a>
                                <ul class="dropdown" aria-labelledby="navbarAgenda">
                                    <li><a href="Wfrm_Empleado_Agenda_Sesion.aspx">Sesión Individual</a></li>
                                    <li><a href="Wfrm_Empleado_Agenda_Clase.aspx">Clase Grupal</a></li>
                                    <li><a href="Wfrm_Empleado_Agenda_Cita.aspx">Cita de valoración</a></li>
                                </ul>
                            </li>

                            <!--Submenu opciones Entrenador -->
                            <li id="menuEntrenador" class="noDisplay nav-item dropdown">
                                <a class="droptown-toggle" id="navbarEntrenadores">Entrenadores</a>
                                <ul class="dropdown" aria-labelledby="navbarEntrenadores">
                                    <li><a href="Wfrm_Entrenador_Clases.aspx">Gestión de clases</a></li>
                                    <li><a href="Wfrm_Entrenador_Expediente.aspx">Expediente de cliente</a></li>
                                    <li><a href="Wfrm_Entrenador_Rutinas.aspx">Rutinas de cliente</a></li>
                                </ul>
                            </li>

                            <!--Submenu opciones Seguridad-->
                            <li id="menuSeguridad" class="noDisplay nav-item dropdown ">
                                <a class="droptown-toggle" id="navbarSeguridad">Seguridad</a>
                                <ul class="dropdown" aria-labelledby="navbarSeguridad">
                                    <li><a href="Wfrm_Usuario_Contrasenna.aspx">Usuario Contraseña</a></li>
                                    <li><a href="Wfrm_Empleado_Roles.aspx">Roles Usuario</a></li>
                                </ul>
                            </li>

                            <!--Submenu opciones Configuraciones-->
                            <li id="menuCatalogo" class="noDisplay nav-item active">
                                <a class="nav-item" href="Wfrm_Configuraciones_Parametros.aspx">Configuraciones</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!--Submenu opciones CUENTA-->
                <div class="col-lg-2">
                    <div class="top-option">
                        <div class="to-social">
                            <nav class="nav-menu">
                                <ul>
                                    <li><a id="cuenta_usuario">Cuenta</a>
                                        <ul class="dropdown">
                                            <li><a href="Wfrm_Empleado_Cuenta.aspx">Tu Cuenta</a></li>
                                            <li><a onclick="CambiarContrasenna();">Cambio Contraseña</a></li>
                                            <li><a onclick="CerrarSesion();">Cerrar Sesión</a></li>
                                        </ul>

                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="canvas-open">
            <i class="fa fa-bars"></i>
        </div>

    </header>



    <!--SECCION PRINCIPAL-->
    <section class="breadcrumb-section set-bg" data-setbg="Recursos/img/banner-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Catálogo y Mantenimiento</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="form-section spad">
        <div class="container">

            <div class="row section-tabla">
                <!--BOTONERIA   *******************  CAMBIAR EL DATA-TARGET DEL ID DEL MODAL   *************************-->
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalDepartamentos" value="Departamentos" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalEstados" value="Estados" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalCategoriaEquipos" value="Categoría Equipos" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalDescuentos" value="Descuentos" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalDia" value="Días" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalEjercicios" value="Ejercicios" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalColaboradores" value="Colaboradores" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalProductos" value="Productos" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalRoles" value="Roles" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalTurnos" value="Turnos" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalUnidadesDeMedida" value="Unidades de Medida" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalSalas" value="Salas" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalTipoPago" value="Tipo de Pago" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalTiposMedidas" value="Tipos de Medida" />
                </div>
                <div class="form-section col-lg-3 col-md-3">
                    <input type="button" class="pull-right btn-form" data-toggle="modal" data-target="#ModalInformacion" value="Información" />
                </div>


            </div>
        </div>
    </section>


    <!-- MODAL DEPARTAMENTOS -->
    <div class="modal fade" id="ModalDepartamentos" tabindex="-1" role="dialog" aria-labelledby="ModalDepartamentosCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalDepartamentosLongTitle">Mantenimiento Departamentos</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdDepartamento" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstados" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Departamento:</label>
                                    <input id="inpDepartamento" class="col-lg-6 col-md-6" type="text" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" placeholder="Departamento" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarDepartamento();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-departamentos">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdDepartamento</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Departamento</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaDepartamentos">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL ESTADOS -->
    <div class="modal fade" id="ModalEstados" tabindex="-1" role="dialog" aria-labelledby="ModalEstadosCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalEstadosLongTitle">Mantenimiento Estados</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <input id="inpIdEstado" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estado:</label>
                                    <input id="inpEstado" class="col-lg-6 col-md-6" type="text" placeholder="Estado" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                                <%--<div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Opción:</label>
                                    <input id="inpOpcion" class="col-lg-6 col-md-6" type="text" placeholder="Opción" />
                                </div>--%>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Opción:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="inpOpcion" class="col-lg-6 col-md-6">
                                        <%--<option value="F">Facturación</option>--%>
                                        <option value="F">Facturación</option>
                                        <option value="G">General</option>
                                    </select>
                                </div>

                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarEstado();">Guardar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-estados">
                                    <thead>
                                        <tr>
                                            <th>IdEstado</th>
                                            <th>Descripción</th>
                                            <th>Opción</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaEstados">
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL CATEGORIA EQUIPOS -->
    <div class="modal fade" id="ModalCategoriaEquipos" tabindex="-1" role="dialog" aria-labelledby="ModalCategoriaEquiposCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalCategoriaEquiposLongTitle">Mantenimiento Categoria Equipos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <input id="inpIdCategoriaEquipos" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosCategoriaEquipos" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionCategoriaEquipos" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarCategoriaEquipos();">Guardar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-categoriaequipos">
                                    <thead>
                                        <tr>
                                            <th>IdCategoríaEquipo</th>
                                            <th>Estado</th>
                                            <th>Descripción</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaCategoriaEquipos">
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL DESCUENTOS -->
    <div class="modal fade" id="ModalDescuentos" tabindex="-1" role="dialog" aria-labelledby="ModalDescuentosCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalDescuentosLongTitle">Mantenimiento Descuentos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <input id="inpIdDescuento" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosDescuentos" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionDescuentos" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Porcentaje:</label>
                                    <input id="inpPorcentaje" class="col-lg-6 col-md-6" type="text" placeholder="Porcentaje" onblur="return validarRango(this);" maxlength="3" onkeypress="SoloNumeros();" onpaste="return false" ondrop="return false" />

                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarDescuento();">Guardar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-descuentos">
                                    <thead>
                                        <tr>
                                            <th>IdDescuento</th>
                                            <th>Estado</th>
                                            <th>Descripción</th>
                                            <th>Porcentaje</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaDescuentos">
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL DIAS -->
    <div class="modal fade" id="ModalDia" tabindex="-1" role="dialog" aria-labelledby="ModalDiaCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalDiaLongTitle">Mantenimiento Días</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <input id="inpIdDia" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosDia" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <%--<div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionDia" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>--%>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="inpDescripcionDia" class="col-lg-6 col-md-6">
                                        <option value="LUNES">LUNES</option>
                                        <option value="MARTES">MARTES</option>
                                        <option value="MIERCOLES">MIÉRCOLES</option>
                                        <option value="JUEVES">JUEVES</option>
                                        <option value="VIERNES">VIERNES</option>
                                        <option value="SABADO">SABADO</option>
                                        <option value="DOMINGO">DOMINGO</option>
                                    </select>
                                </div>

                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarDia();">Guardar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-dia">
                                    <thead>
                                        <tr>
                                            <th>IdDia</th>
                                            <th>Estado</th>
                                            <th>Descripción</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaDia">
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL EJERCICIOS -->
    <div class="modal fade" id="ModalEjercicios" tabindex="-1" role="dialog" aria-labelledby="ModalEjerciciosCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalEjerciciosLongTitle">Mantenimiento Ejercicios</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <input id="inpIdEjercicio" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosEjercicios" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Nombre:</label>
                                    <input id="inpNombreEjercicio" class="col-lg-6 col-md-6" type="text" placeholder="Nombre Ejercicio" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Músculo:</label>
                                    <input id="inpGrupoMuscular" class="col-lg-6 col-md-6" type="text" placeholder="Grupo Muscular" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionEjercicios" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarEjercicios();">Guardar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-ejercicios">
                                    <thead>
                                        <tr>
                                            <th>IdEjercicio</th>
                                            <th>Estado</th>
                                            <th>Nombre Ejercicio</th>
                                            <th>Músculo</th>
                                            <th>Descripción</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablaEjercicios">
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL PRODUCTOS -->
    <div class="modal fade" id="ModalProductos" tabindex="-1" role="dialog" aria-labelledby="ModalProductosCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalProductosLongTitle">Mantenimiento Productos</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdProductos" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosProductos" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descuento:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selProductosDescuento" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Nombre:</label>
                                    <input id="inpNombreProducto" class="col-lg-6 col-md-6" type="text" placeholder="Nombre" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionProducto" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Periodo:</label>
                                    <input id="inpPeriodoProducto" class="col-lg-6 col-md-6" type="text" placeholder="Periodo" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Costo:</label>
                                    <input id="inpCostoProducto" class="col-lg-6 col-md-6" type="text" value="0" placeholder="Costo" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Días:</label>
                                    <input id="inpNumeroDiasProducto" class="col-lg-6 col-md-6" type="text" placeholder="Número de Días" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Plan:</label>
                                    <input id="inpPlanProducto" class="col-lg-6 col-md-6" type="text" placeholder="Plan" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarProductos();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-productos">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdProducto</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Descuento</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Periodo</th>
                                            <th>Costo</th>
                                            <th>Días</th>
                                            <th>Plan</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaProductos">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL ROLES -->
    <div class="modal fade" id="ModalRoles" tabindex="-1" role="dialog" aria-labelledby="ModalRolesCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalRolesLongTitle">Mantenimiento Roles</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdRoles" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosRoles" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Rol:</label>
                                    <input id="inpRol" class="col-lg-6 col-md-6" type="text" placeholder="Rol" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionRoles" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarRoles();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-roles">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdRol</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Rol</th>
                                            <th>Descripción</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaRoles">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL COLABORADORES -->
    <div class="modal fade" id="ModalColaboradores" tabindex="-1" role="dialog" aria-labelledby="ModalColaboradoresCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalColaboradoresLongTitle">Mantenimiento Colaboradores</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdColaboradores" class="col-lg-6 col-md-6" type="text" placeholder="Id Colaborador" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosColaboradores" class="col-lg-6 col-md-6">
                                    </select>
                                </div>

                                <div class="col-lg-4 col-md-4 noDisplay">
                                    <label class="col-lg-5 col-md-5">Id Persona:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdColaboradoresPersona" class="col-lg-6 col-md-6" type="text" placeholder="Id Persona" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Departamento:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosColaboradoresDepartamento" class="col-lg-6 col-md-6">

                                    </select>
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Cédula:</label>
                                    <input id="inpColaboradoresCedula" class="col-lg-6 col-md-6" type="text" placeholder="Cédula" maxlength="12" onkeypress="return SoloNumeros()" onpaste="return false" ondrop="return false" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Nombre:</label>
                                    <input id="inpColaboradoresNombre" class="col-lg-6 col-md-6" type="text" placeholder="Nombre" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Apellido 1:</label>
                                    <input id="inpColaboradoresApellido1" class="col-lg-6 col-md-6" type="text" placeholder="Apellido 1" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Apellido 2:</label>
                                    <input id="inpColaboradoresApellido2" class="col-lg-6 col-md-6" type="text" placeholder="Apellido 2" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">FecNac:</label>
                                    <input id="inpColaboradoresFechaNacimiento" class="col-lg-6 col-md-6" type="date" placeholder="AAAA-MM-DD" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Teléfono:</label>
                                    <input id="inpColaboradoresTelefono" class="col-lg-6 col-md-6" type="text" placeholder="Teléfono" maxlength="8" onkeypress="return SoloNumeros()" onpaste="return false" ondrop="return false" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Correo:</label>
                                    <input id="inpColaboradoresCorreo" class="col-lg-6 col-md-6" type="text" placeholder="Correo" onblur="validarEmail(this.value, this);" />
                                </div>

                                <div class="col-lg-4 col-md-4 noDisplay">
                                    <label class="col-lg-5 col-md-5">Correo 2:</label>
                                    <input id="inpColaboradoresCorreo2" class="col-lg-6 col-md-6" type="text" placeholder="Correo" />
                                </div>

                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Usuario:</label>
                                    <input id="inpColaboradoresUsuario" class="col-lg-6 col-md-6" type="text" placeholder="Usuario" onkeypress="return SoloLetras()" onpaste="return false" ondrop="return false" onkeyup="javascript: this.value = this.value.toUpperCase();" />
                                </div>


                            </div>
                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarColaboradores();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-colaboradores">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Est</th>
                                            <th>Cédula</th>
                                            <th>Nombre</th>
                                            <th>Apellido1</th>
                                            <th>Apellido2</th>
                                            <th>FecNac</th>
                                            <th>Teléfono</th>
                                            <th>Correo</th>
                                            <th>Usuario</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaColaboradores">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL TURNOS -->
    <div class="modal fade" id="ModalTurnos" tabindex="-1" role="dialog" aria-labelledby="ModalTurnosCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalTurnosLongTitle">Mantenimiento Turnos</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id del Turno:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdTurnos" class="col-lg-6 col-md-6" type="text" placeholder="Id del Turno" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosTurnos" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Turno:</label>
                                    <input id="inpTurno" class="col-lg-6 col-md-6" type="text" placeholder="Turno" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Entrada:</label>
                                    <input id="inpHoraEntrada" class="col-lg-6 col-md-6" type="time" min="05:00" max="20:00" placeholder="Hora de Entrada" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Salida:</label>
                                    <input id="inpHoraSalida" class="col-lg-6 col-md-6" type="time" placeholder="Hora de Salida" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarTurno();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-turnos">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdTurno</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Turno</th>
                                            <th>HoraEntrada</th>
                                            <th>HoraSalida</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaTurnos">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL UNIDADES DE MEDIDA -->
    <div class="modal fade" id="ModalUnidadesDeMedida" tabindex="-1" role="dialog" aria-labelledby="ModalUnidadesDeMedidaCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalUnidadesDeMedidaLongTitle">Mantenimiento Unidades de Medida</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdUnidadesDeMedida" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosUnidadesDeMedida" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionUnidadesDeMedida" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarUnidadDeMedida();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-unidadesdemedidas">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdUnidadDeMedida</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Descripcion</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaUnidadesDeMedida">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL SALAS -->
    <div class="modal fade" id="ModalSalas" tabindex="-1" role="dialog" aria-labelledby="ModalSalasCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalSalasLongTitle">Mantenimiento Salas</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdSalas" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosSalas" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionSalas" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarSalas();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-salas">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdSalas</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Descripción</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaSalas">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>


    <!-- MODAL TIPO PAGO -->
    <div class="modal fade" id="ModalTipoPago" tabindex="-1" role="dialog" aria-labelledby="ModalTipoPagoCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalTipoPagoLongTitle">Mantenimiento Tipo de Pago</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdTipoPago" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadoTipoPago" class="col-lg-6 col-md-6">
                                        <option value="1">Activo</option>
                                        <option value="2">Inactivo</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionTipoPago" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Aprobación:</label>
                                    <select id="inpRequiereAprobacion" class="col-lg-6 col-md-6">
                                        <option value="false">No</option>
                                        <option value="true">Sí</option>
                                    </select>
                                </div>
                            </div>
                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarTipoPago();">Guardar</span>
                        </div>

                        <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                    </div>
                    <div class="row">
                        <div class=" col-lg-12 col-md-12">
                            <table class="table table-striped table-bordered table-hover" id="dataTable-tipopago">
                                <!-- CAMBIAR ID -->
                                <thead>
                                    <tr>
                                        <th>IdTipoPago</th>
                                        <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                        <th>Estado</th>
                                        <th>Descripción</th>
                                        <th>Requiere aprobación</th>
                                        <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                        <th>Eliminar</th>
                                        <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                    </tr>
                                </thead>
                                <tbody id="tablaTipoPago">
                                    <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL TIPOS MEDIDAS -->
    <div class="modal fade" id="ModalTiposMedidas" tabindex="-1" role="dialog" aria-labelledby="ModalTiposMedidasCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalTiposMedidasLongTitle">Mantenimiento Tipos Medidas</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdTiposMedidas" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también ACORDARSE DE ESTADO NO ESTADOS--%>
                                    <select id="selEstadoTiposMedidas" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Unidad:</label>
                                    <select id="selUnidadMedida" class="col-lg-6 col-md-6">                                        
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Descripción:</label>
                                    <input id="inpDescripcionTiposMedidas" class="col-lg-6 col-md-6" type="text" placeholder="Descripción" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarTiposMedidas();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-tiposmedidas">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdTipoMedidas</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Unidad de Medida</th>
                                            <th>Descripción</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaTiposMedidas">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL INFORMACION -->
    <div class="modal fade" id="ModalInformacion" tabindex="-1" role="dialog" aria-labelledby="ModalInformacionCenterTitle" aria-hidden="true">
        <!-- CAMBIAR ID MODAL Y ARIA-LABELLEDBY -->
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalInformacionLongTitle">Mantenimiento Informacion</h5>
                    <!-- CAMBIAR ID -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Id:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpIdInformacion" class="col-lg-6 col-md-6" type="text" placeholder="Id" disabled="disabled" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">C. Juridica:</label>
                                    <!-- CAMBIAR LABEL -->
                                    <input id="inpCedulaJuridica" class="col-lg-6 col-md-6" type="text" placeholder="Cedula Juridica" />
                                    <!-- CAMBIAR ID Y TEXTO DEL PLACEHOLDER-->
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Estados:</label>

                                    <%-- esto lo llenamos luego también--%>
                                    <select id="selEstadosInformacion" class="col-lg-6 col-md-6">
                                    </select>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Nombre:</label>
                                    <input id="inpNombre" class="col-lg-6 col-md-6" type="text" placeholder="Nombre" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Ubicación:</label>
                                    <input id="inpUbicacion" class="col-lg-6 col-md-6" type="text" placeholder="Ubicación" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Teléfono:</label>
                                    <input id="inpTelefono" class="col-lg-6 col-md-6" type="text" placeholder="Teléfono" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Correo:</label>
                                    <input id="inpCorreo" class="col-lg-6 col-md-6" type="text" placeholder="Correo" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Aforo:</label>
                                    <input id="inpAforo" class="col-lg-6 col-md-6" type="text" placeholder="Aforo" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Dias:</label>
                                    <input id="inpDiasGracia" class="col-lg-6 col-md-6" type="text" placeholder="Dias de Gracia" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="GuardarInformacion();">Guardar</span>
                            <!-- CAMBIAR EL ONCLICK DE GUARDAR QUE SEA IGUAL AL JS -->
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-informacion">
                                    <!-- CAMBIAR ID -->
                                    <thead>
                                        <tr>
                                            <th>IdInformacion</th>
                                            <th>CedulaJuridica</th>
                                            <!-- CAMBIAR TH PORQUE SON LOS ENCABEZADOS DE LA TABLA -->
                                            <th>Estado</th>
                                            <th>Nombre</th>
                                            <th>Ubicación</th>
                                            <th>Teléfono</th>
                                            <th>Correo</th>
                                            <th>Aforo</th>
                                            <th>DiasGracia</th>
                                            <!-- SE AGREGAN TH DE ACUERDO CON LA CANTIDAD DE ATRIBUTOS DE LA TABLA -->
                                            <th>Eliminar</th>
                                            <!-- ESTE TH SIEMPRE SE MANTIENE AL FINAL -->
                                        </tr>
                                    </thead>
                                    <tbody id="tablaInformacion">
                                        <!-- CAMBIAR ID  OJO SE VA A UTILIZAR EN EL JS TAMBIEN-->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL INFORMATIVO -->
    <div class="modal" tabindex="-1" role="dialog" id="ModalInformativo">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="idTituloModalInformativo">Información</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="idMensajeModalInformativo">Mensaje</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary display-none">Confirmar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>



    <div class="gettouch-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-map-marker"></i>
                        <p>
                            San Pedro Montes de Oca,<br />
                            100m Oeste del Colegio Lincoln
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text">
                        <i class="fa fa-mobile"></i>
                        <ul>
                            <li>+(506) 2222-2222</li>
                            <li>+(506) 1234-5678</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gt-text email">
                        <i class="fa fa-envelope"></i>
                        <p>info@platinum-gym.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="fs-about">
                        <div class="fa-logo">
                            <a href="./Wfrm_Principal.aspx">
                                <img src="Recursos/img/logo.png" alt="" /></a>
                        </div>
                        <p>
                            Eres mucho más fuerte de lo que pensás
                        </p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="fs-widget">
                        <h4>Otros links</h4>
                        <ul>
                            <li><a href="./Wfrm_Clases.aspx">Clases</a></li>
                            <li><a href="./Wfrm_Planes.aspx">Planes</a></li>
                            <li><a href="./Wfrm_Servicios.aspx">Servicios</a></li>
                            <li><a href="./Wfrm_Entrenadores.aspx">Entrenadores</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="fs-widget">
                        <h4>Soporte</h4>
                        <ul>
                            <li><a href="./Wfrm_Cliente_Login.aspx">Login</a></li>
                            <li><a href="./Wfrm_Cliente_Cuenta.aspx">Mi cuenta</a></li>
                            <li><a href="./Wfrm_Nosotros.aspx">Contáctenos</a></li>
                            <li><a href="./Wfrm_PreguntasRespuestas.aspx">Preguntas y Respuestas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <!--REVISAR SI SE DEJA O NO INGRESO A PORTAL COLABORADORES-->
                    <div class="fs-widget">
                        <h4><a href="./Wfrm_Empleado_Login.aspx">Portal Colaboradores</a></h4>
                        <div class="fw-recent">
                            <h6><a href="./Wfrm_Empleado_Login.aspx">Inicie sesión aquí si es colaborador de Platinum Gym</a></h6>
                            <ul>
                                <li>Atención al cliente</li>
                                <li>Administrativos</li>
                                <li>Entrenadores</li>
                            </ul>
                        </div>
                        <div class="fw-recent">
                            <h6><a href="#">Si necesita más información, no dude en contactarnos</a></h6>
                            <ul>
                                <li>estamos para servirle</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="copyright-text">
                        <p>
                            Copyright &copy;
						 
                            <script>document.write(new Date().getFullYear());</script>
                            Todos los derechos reservados <i class="fa fa-heart" aria-hidden="true"></i>Platinum Gym
					
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!-- Js Plugins -->
    <script src="Recursos/js/jquery-3.3.1.min.js"></script>
    <script src="Recursos/js/bootstrap.min.js"></script>
    <script src="Recursos/js/jquery.magnific-popup.min.js"></script>
    <script src="Recursos/js/masonry.pkgd.min.js"></script>
    <script src="Recursos/js/jquery.barfiller.js"></script>
    <script src="Recursos/js/jquery.slicknav.js"></script>
    <script src="Recursos/js/owl.carousel.min.js"></script>
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
    <script src="Recursos/js/main.js"></script>
    <script src="Recursos/js/js_general_sesion.js"></script>
    <script src="Recursos/js/js_recuperar_contrasenna.js"></script>

    <!-- AGREGAR JS DE CATALOGOS QUE SE INCLUYAN -->
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_combos.js"></script>
    <script src="Recursos/js/Cat_Man/js_catalogo_validaciones.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_estado.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_departamento.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_categoriaequipos.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_descuentos.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_dia.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_ejercicio.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_productos.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_roles.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_colaboradores.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_salas.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_tipo_pago.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_tipos_medidas.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_turnos.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_unidades_de_medida.js"></script>
    <script src="Recursos/js/Cat_Man/js_administrar_catalogo_informacion.js"></script>


</body>

</html>

