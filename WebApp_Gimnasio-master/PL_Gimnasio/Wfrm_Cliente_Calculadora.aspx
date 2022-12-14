<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Cliente_Calculadora.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Cliente_Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Calculadora Cliente</title>


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
                            <li><a href="Wfrm_Cliente_Principal.aspx">Inicio</a></li>
                            <!--Submenu opciones Citas-->
                            <li><a href="./Wfrm_Cliente_Agenda.aspx">Citas</a>
                                <ul class="dropdown">
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Sesión Individual</a></li>
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Sesión Grupal</a></li>
                                    <li><a href="./Wfrm_Cliente_Agenda.aspx">Valoración</a></li>

                                </ul>
                            </li>
                            <!--Submenu opciones Expediente-->
                            <li class="active"><a href="./Wfrm_Cliente_Expediente.aspx">Expediente</a>
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
                        <h2>Información Personal</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--SECCION CALCULADORA-->
    <section class="bmi-calculator-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title chart-title">
                        <span>indicadores</span>
                        <h2>TABLA DE IMC</h2>
                    </div>
                    <div class="chart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>IMC</th>
                                    <th>ESTADO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="point">Menos de 18.5</td>
                                    <td>Peso Bajo</td>
                                </tr>
                                <tr>
                                    <td class="point">18.5 - 24.9</td>
                                    <td>Saludable</td>
                                </tr>
                                <tr>
                                    <td class="point">25.0 - 29.9</td>
                                    <td>Sobrepeso</td>
                                </tr>
                                <tr>
                                    <td class="point">30.0 y Más</td>
                                    <td>Obesidad</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-title chart-calculate-title">
                        <span>tu salud primero</span>
                        <h2>CALCULA TU IMC</h2>
                    </div>
                    <div class="chart-calculate-form">
                        <p>El índice de Masa Corporal (IMC) es una medida de asociación entre el peso y la talla de una persona. 
                            Es usado como uno de varios indicadores para evaluar el estado nutricional de cada persona.</p>
                        <form action="#">
                            <div class="row">
                                <div class="col-sm-6">
                                    <input type="text" placeholder="Altura / cm" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" placeholder="Peso / kg" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" placeholder="Edad" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" placeholder="Género" />
                                </div>
                                <div class="col-lg-12">
                                    <button type="submit">Calcular</button>
                                </div>
                            </div>
                        </form>
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
