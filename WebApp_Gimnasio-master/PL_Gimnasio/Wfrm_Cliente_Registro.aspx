<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Cliente_Registro.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Cliente_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Registro Cliente</title>      <!--CAMBIAR NOMBRE-->


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
                <li><a href="./Wfrm_Principal.aspx">Inicio</a></li>
                <li><a href="./Wfrm_Clases.aspx">Clases</a></li>
                <li><a href="./Wfrm_Servicios.aspx">Servicios</a></li>
                <li><a href="./Wfrm_Entrenadores.aspx">Entrenadores</a></li>
                <li><a href="./Wfrm_Metricas.aspx">Métricas</a></li>
                <li><a href="./Wfrm_Nosotros.aspx">Nosotros</a></li>
                <li><a href="./Wfrm_Cliente_Login.aspx">Login</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
    </div>


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
                        <ul>                                                       <!--REVISAR NAVBAR-->
                            <li><a href="./Wfrm_Principal.aspx">Inicio</a></li>
                            <li><a href="./Wfrm_Clases.aspx">Clases</a></li>
                            <li><a href="./Wfrm_Servicios.aspx">Servicios</a></li>
                            <li><a href="./Wfrm_Entrenadores.aspx">Entrenadores</a></li>
                            <li><a href="./Wfrm_Metricas.aspx">Métricas</a></li>
                            <li class="active"><a href="./Wfrm_Nosotros.aspx">Nosotros</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
                    <div class="top-option">
                        <div class="to-social">
                            <a href="./Wfrm_Cliente_Login.aspx">Login</a>    <!--REVISAR LOGIN-->
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>

    <section class="breadcrumb-section set-bg" data-setbg="Recursos/img/breadcrumb-bg.jpg"> <!--CAMBIAR IMAGEN-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">     
                       <h2>Registro Cliente</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="formularios-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-title chart-calculate-title">
                        <span>formulario de</span>
                        <h2>REGISTRO</h2>
                    </div>
                    <div class="chart-calculate-form">
                        <p>Ingrese la siguiente infomación para inscribirse en Platinum Gym.</p>
                        <form action="#">
                            <div class="row">
                                <div class="col-sm-6">
                                    <input id="txt_nombre" type="text" placeholder="Nombre" />
                                </div>
                                <div class="col-sm-6">
                                    <input id="txt_apellido1" type="text" placeholder="Primer Apellido" />
                                </div>
                                <div class="col-sm-6">
                                    <input id="txt_apellido2" type="text" placeholder="Segundo Apellido" />
                                </div>
                                <div class="col-sm-6">
                                    <input id="txt_cedula" type="text" placeholder="Cédula" />
                                </div>
                                <div class="col-sm-6">
                                    <input id="txt_telefono" type="tel" placeholder="Teléfono" />
                                </div>
                                <div class="col-sm-6">
                                    <input id="txt_correo" type="email" placeholder="Correo" />
                                </div>
                                <div class="col-lg-3">
                                </div>
                                <div class="col-lg-6">
                                    <button type="submit">Crear Cuenta</button>
                                </div>
                                <div class="col-lg-3">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="section-title contact-title">
                        <span>Desde tu nueva cuenta</span>
                        <h2>tendrá acceso a</h2>
                    </div>
                    <div class="login-widget">
                        <div class="cw-text">
                            <i class="flaticon flaticon-045-boxing-gloves"></i>
                            <p>Agendar clases grupales</p>
                        </div>
                        <div class="cw-text">
                            <i class="flaticon flaticon-034-stationary-bike"></i>
                            <p>Reservar en el área de máquinas</p>
                        </div>
                        <div class="cw-text">
                            <i class="flaticon flaticon-004-measuring-tape"></i>
                            <p>Control de medidas</p>
                        </div>
                        <div class="cw-text">
                            <i class="flaticon flaticon-005-clipboard"></i>
                            <p>Expediente digital</p>
                        </div>
                        <div class="cw-text">
                            <i class="flaticon flaticon-009-smartwatch"></i>
                            <p>Ver tu rutinas personalizadas</p>
                        </div>
                        <div class="cw-text">
                            <i class="flaticon flaticon-036-timer"></i>
                            <p>Consultar tu historial de facturación</p>
                        </div>  
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


    <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="fs-about">
                        <div class="fa-logo">
                            <a href="./Wfrm_Principal.aspx">
                                <img src="Recursos/img/logo.png" alt=""/></a>
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
                            <li><a href="#">Clases</a></li>
                            <li><a href="#">Planes</a></li>
                            <li><a href="#">Servicios</a></li>
                            <li><a href="#">Entrenadores</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="fs-widget">
                        <h4>Soporte</h4>
                        <ul>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Mi cuenta</a></li>
                            <li><a href="#">Contáctenos</a></li>
                            <li><a href="#">Preguntas y Respuestas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6"> <!--REVISAR SI SE DEJA O NO INGRESO A PORTAL COLABORADORES-->
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
    <script src="Recursos/js/js_recuperar_contrasenna.js"></script>
</body>

</html>
