<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Cliente_Principal.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Cliente_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Inicio Cliente</title>


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
                <li><a href="./Wfrm_Cliente_Principal.aspx">Inicio</a></li>
                <li><a href="./Wfrm_Cliente_Agenda.aspx">Citas</a></li>
                <li><a href="./Wfrm_Cliente_Expediente.aspx">Expediente</a></li>
                <li><a href="./Wfrm_Cliente_Calculadora.aspx">Calculadora IMC</a></li>
                <li><a href="./Wfrm_Cliente_Mediciones.aspx">Mediciones</a></li>
                <li><a href="./Wfrm_Cliente_Progreso.aspx">Progreso</a></li>
                <li><a href="./Wfrm_Cliente_Rutinas.aspx">Rutinas</a></li>
                <li><a href="./Wfrm_Cliente_Membresia.aspx">Membresía</a></li>
                <li><a href="./Wfrm_Cliente_Plan.aspx">Tú Plan</a></li>
                <li><a href="./Wfrm_Cliente_Pagos.aspx">Pagos</a></li>
                <li><a href="./Wfrm_Cliente_Cuenta.aspx">Tu Cuenta</a></li>
                <li><a onclick="CerrarSesion();">Cerrar Sesión</a></li>                
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
    </div>

    <!--NAV BAR-->
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo">
                        <a href="./Wfrm_Principal.aspx">
                            <img src="Recursos/img/logo.png" alt="" />
                        </a>
                    </div>
                </div>
                <div class="col-lg-7">
                    <nav class="nav-menu">
                        <ul>
                            <!--Inicio del cliente-->
                            <li class="active"><a href="Wfrm_Cliente_Principal.aspx">Inicio</a></li>
                            <!--Submenu opciones Citas-->
                            <li><a href="./Wfrm_Cliente_Agenda.aspx">Citas</a>
                                <ul class="dropdown">
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Sesión Individual</a></li>
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Sesión Grupal</a></li>
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Valoración</a></li>

                                </ul>
                            </li>
                            <!--Submenu opciones Expediente-->
                            <li><a href="./Wfrm_Cliente_Expediente.aspx">Expediente</a>
                                <ul class="dropdown">
                                    <li><a href="./Wfrm_Cliente_Calculadora.aspx">Calculadora IMC</a></li>
                                    <li><a href="./Wfrm_Cliente_Mediciones.aspx">Mediciones</a></li>
                                    <li><a href="./Wfrm_Cliente_Progreso.aspx">Progreso</a></li>
                                    <li><a href="./Wfrm_Cliente_Rutinas.aspx">Rutinas</a></li>
                                </ul>
                            </li>
                            <!--Submenu opciones Membresia-->
                            <li><a href="./Wfrm_Cliente_Membresia.aspx">Membresía</a>
                                <ul class="dropdown">
                                    <li><a href="./Wfrm_Cliente_Plan.aspx">Tu Plan</a></li>
                                    <li><a href="./Wfrm_Cliente_Pagos.aspx">Pagos</a></li>
                                </ul>
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
                                            <li><a href="./Wfrm_Cliente_Cuenta.aspx">Tu Cuenta</a></li>
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
    <section class="breadcrumb-section set-bg" data-setbg="Recursos/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Bienvenid@ a tu espacio</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION CITAS-->
    <section class="classes-section spad" id="Citas">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bs-text">
                        <h2>PROGRAMÁ TU CITA</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-4.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <h5>Sesiones Individuales</h5>
                            <a href="./Wfrm_Cliente_Agenda.aspx"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-3.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <h5>Sesiones Grupales</h5>
                            <a href="./Wfrm_Cliente_Agenda.aspx"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-1.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <h5>Valoración</h5>
                            <a href="./Wfrm_Cliente_Agenda.aspx"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION EXPEDIENTE-->
    <section class="choseus-section spad" id="Expediente">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bs-text">
                        <%--<span>¿Por qué escogernos?</span>--%>
                        <h2>EXPEDIENTE</h2>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <a href="./Wfrm_Cliente_Calculadora.aspx"><span class="flaticon-018-scale"></span></a>
                        <h4>Calculadora IMC</h4>
                        <p>
                            El índice de Masa Corporal (IMC) es una medida de asociación entre el peso y la talla de una persona.
                            El IMC es usado como uno de varios indicadores para evaluar el estado nutricional de cada persona.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <a href="./Wfrm_Cliente_Mediciones.aspx"><span class="flaticon-004-measuring-tape"></span></a>
                        <h4>Mediciones</h4>
                        <p>
                            Las medidas antropométricas son la talla, el peso y los perímetros corporales. Estas medidas son imprescindibles para empezar con una rutina de ejercicio.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <a href="./Wfrm_Cliente_Progreso.aspx"><span class="flaticon-025-fitness-1"></span></a>
                        <h4>Progreso</h4>
                        <p>
                            ¿El entrenamiento te está dando sus frutos? ¿estás consiguiendo ponerte en forma o mejorar tu condición física?
                            Dentro de Platinium Gym puedes llevar un control del progreso que has tenido en tus entrenamientos.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <a href="./Wfrm_Cliente_Rutinas.aspx"><span class="flaticon-005-clipboard"></span></a>
                        <h4>Rutinas</h4>
                        <p>
                            Te brindamos una rutina de gimnasio en la que cada día trabajarás un grupo muscular distinto.
                            Las rutinas van enfocadas a tus necesidades.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION MEMBRESIA-->
    <section class="classes-section spad" id="Membresia">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bs-text">
                        <h2>MEMBRESÍA</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-8.png" alt="" />
                        </div>
                        <div class="ci-text">
                            <h4>Tú Plan</h4>
                            <a href="./Wfrm_Cliente_Plan.aspx"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-6.png" alt="" />
                        </div>
                        <div class="ci-text">
                            <h4>Pagos</h4>
                            <a href="./Wfrm_Cliente_Pagos.aspx"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--INFORMACION-->
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
