<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Empleado_Cuenta.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Empleado_Cuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Mi cuenta</title>


    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet" />


    <link rel="stylesheet" href="Recursos/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/flaticon.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/owl.carousel.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/barfiller.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/slicknav.min.css" type="text/css" />
    <link rel="stylesheet" href="Recursos/css/style.css" type="text/css" />

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
                                    <li><a id="cuenta_usuario" class="active">Cuenta</a>
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
                        <h2>Mi cuenta</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    

    <!--PIE DE PAGINA-->
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

    <!--BUSCADOR-->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Buscar aquí....." />
            </form>
        </div>
    </div>

    <!-- Js Plugins -->
    <script src="Recursos/js/jquery-3.3.1.min.js"></script>
    <script src="Recursos/js/bootstrap.min.js"></script>
    <script src="Recursos/js/jquery.magnific-popup.min.js"></script>
    <script src="Recursos/js/masonry.pkgd.min.js"></script>
    <script src="Recursos/js/jquery.barfiller.js"></script>
    <script src="Recursos/js/jquery.slicknav.js"></script>
    <script src="Recursos/js/owl.carousel.min.js"></script>
    <script src="Recursos/js/main.js"></script>
    <script src="Recursos/js/js_general_sesion.js"></script>
    <script src="Recursos/js/js_recuperar_contrasenna.js"></script>
</body>
</html>
