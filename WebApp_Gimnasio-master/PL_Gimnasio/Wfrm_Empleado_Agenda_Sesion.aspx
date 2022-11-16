<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Empleado_Agenda_Sesion.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Empleado_Agenda_Sesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Sesión Individual</title>

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
                                    <li id="navItemInformes" class="noDisplay" ><a href="Wfrm_Administracion_Informes.aspx">Informes</a></li>
                                    <li id="navItemInventario" class="noDisplay" ><a href="Wfrm_Inventario.aspx">Inventario</a></li>
                                    <li id="navItemFacturacion" class="noDisplay" ><a href="Wfrm_Facturacion_Factura.aspx">Facturación</a></li>
                                    <li id="navItemConfirmarPago" class="noDisplay"><a href="Wfrm_Confirmar_Pago.aspx">Confirmar Pago</a></li>
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
                            <li id="menuAgenda" class="noDisplay nav-item dropdown active">
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
                            <li id="menuCatalogo" class="noDisplay nav-item">
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
                        <h2>Sesión Individual</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="form-section spad">
        <div class="container">
            <div class="row col-lg-12 col-md-12">
                <div class="col-lg-4 col-md-4">
                    <label class="col-lg-3 col-md-4">Cliente:</label>
                    <input id="inpIdentificacionCliente" class="col-lg-7 col-md-6" type="text" placeholder="Identificación" value="" disabled="disabled" />
                    <span class="btn-search fa fa-search" data-toggle="modal" data-target="#ModalBuscador"></span>
                </div>
                <div class="col-lg-4 col-md-4">
                    <label class="col-mlg-3 col-md-4">Teléfono:</label>
                    <input id="inpTelefonoCliente" class="col-lg-7 col-md-6" type="text" placeholder="Teléfono" disabled="disabled" value="" />
                </div>
                <div class="col-lg-4 col-md-4">
                    <label class="col-lg-3 col-md-4">Correo:</label>
                    <input id="inpCorreoCliente" class="col-lg-7 col-md-6" type="text" placeholder="Correo" disabled="disabled" value="" />
                </div>
            </div>

            <div id="usuarioSeleccionado">Por favor seleccione el cliente</div>


            <div class="row">
                <div class="col-lg-6">
                    
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">Todos</li>
                            <li data-tsfilter="Lunes">Lunes</li>
                            <li data-tsfilter="Martes">Martes</li>
                            <li data-tsfilter="Miércoles">Miércoles</li>
                            <li data-tsfilter="Jueves">Jueves</li>
                            <li data-tsfilter="Viernes">Viernes</li>
                            <li data-tsfilter="Sábados">Sábados</li>
                            <li data-tsfilter="Domingos">Domingos</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="class-timetable">
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Lunes</th>
                                    <th>Martes</th>
                                    <th>Miércoles</th>
                                    <th>Jueves</th>
                                    <th>Viernes</th>
                                    <th>Sábado</th>
                                    <th>Domingo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="class-time">06.00am - 7.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>5</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>3</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>3</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">07.00am - 8.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>2</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>4</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>5</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>13</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">08.00am - 09.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>13</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>16</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>4</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>17</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">09.00am - 10.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>17</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>16</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>17</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">10.00am - 11.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>6</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>4</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>3</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">11.00am - 12.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>13</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>12</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>18</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>6</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">12.00pm - 01.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>18</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>19</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>21</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>22</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">01.00pm - 02.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>12</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">02.00pm - 03.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>3</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">03.00pm - 04.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>13</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>18</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>24</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">04.00pm - 05.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>2</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>5</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>6</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">05.00pm - 06.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>15</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>2</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>13</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">06.00pm - 07.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>10</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>5</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>4</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>4</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="class-time">07.00pm - 08.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Lunes">
                                        <h5>7</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Martes">
                                        <h5>8</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Miércoles">
                                        <h5>9</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Jueves">
                                        <h5>12</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg ts-meta" data-tsmeta="Viernes">
                                        <h5>11</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Sábados">
                                        <h5>14</h5>
                                        <span>disponibles</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Domingos">
                                        <h5>17</h5>
                                        <span>disponibles</span>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>



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

   <!-- Modal -->
    <div class="modal fade" id="ModalBuscador" tabindex="-1" role="dialog" aria-labelledby="ModalBuscadorCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered  modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalBuscadorLongTitle">Buscar Cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="row col-lg-11 col-md-11">
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Identificación:</label>
                                    <input id="inpBuscarIdentificacion" class="col-lg-6 col-md-6" type="text" placeholder="Identificación" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Nombre:</label>
                                    <input id="inpBuscarNombre" class="col-lg-6 col-md-6" type="text" placeholder="Nombre" />
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <label class="col-lg-5 col-md-5">Apellidos:</label>
                                    <input id="inpBuscarApellidos" class="col-lg-6 col-md-6" type="text" placeholder="Apellidos" />
                                </div>
                            </div>

                            <span class="col-lg-1 col-md-1 modal-btn-search" onclick="FiltrarClientes();">Buscar</span>
                        </div>
                        <div class="row">
                            <div class=" col-lg-12 col-md-12">
                                <table class="table table-striped table-bordered table-hover" id="dataTable-clientes">
                                    <thead>
                                        <tr>
                                            <th>Identificación</th>
                                            <th>Nombre(s)</th>
                                            <th>Primer Apellido</th>
                                            <th>Segundo Apellido</th>
                                            <th>Usuario</th>
                                        </tr>
                                    </thead>
                                    <tbody id="lista_buscador_clientes">
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
    <script src="Recursos/js/js_agenda_sesion.js"></script>
    <script src="Recursos/js/Clientes/js_buscador_clientes.js"></script>
</body>

</html>

