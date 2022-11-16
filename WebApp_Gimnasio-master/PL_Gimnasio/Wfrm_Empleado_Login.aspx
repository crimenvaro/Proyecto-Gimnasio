<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Empleado_Login.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Empleado_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Login Colaborador</title>


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
                        <ul>
                            <li><a href="./Wfrm_Principal.aspx">Inicio</a></li>
                            <li><a href="./Wfrm_Clases.aspx">Clases</a></li>
                            <li><a href="./Wfrm_Servicios.aspx">Servicios</a></li>
                            <li><a href="./Wfrm_Entrenadores.aspx">Entrenadores</a></li>
                            <li><a href="./Wfrm_Metricas.aspx">Métricas</a></li>
                            <li><a href="./Wfrm_Nosotros.aspx">Nosotros</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-2">
                    <div class="top-option">
                        <div class="to-social">
                            <a href="./Wfrm_Cliente_Login.aspx">Login</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>


    <section class="login-section spad set-bg" data-setbg="Recursos/img/breadcrumb-bg.jpg">
        <div class="container top-login">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title contact-title">
                        <span>Accede a</span>
                        <h2>TU CUENTA COLABORADOR</h2>
                    </div>
                    <div class="login-widget">
                        <div class="cw-text">
                            <i class="fa fa-cog"></i>
                            <p>Administrar opciones disponibles</p>
                        </div>
                        <div class="cw-text">
                            <i class="fa fa-edit"></i>
                            <p>Gestionar en nombre del cliente</p>
                        </div>
                        <div class="cw-text">
                            <i class="fa fa-file"></i>
                            <p>Consultar y exportar informes</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login-form">
                        <form>
                            <input id="txtUsuario" type="text" placeholder="usuario" />
                            <input id="txtPassword" type="password" placeholder="contraseña" />
                            <a class="forget-pass" data-toggle="modal" data-target="#ModalContrasenna">¿Olvidó su contraseña?</a>
                            <button type="button" onclick="ValidaPassword();">Ingresar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                    <button id="btnConfirmarModal" type="button" class="btn btn-primary display-none">Confirmar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL Recordar contraseña -->
    <div class="modal" tabindex="-1" role="dialog" id="ModalContrasenna">
        <div class="modal-dialog sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="idTituloModalContrasenna">Recordar Contraseña</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <label class="col-lg-3 col-md-3">Correo:</label>
                            <input id="inpCorreo" class="col-lg-8 col-md-8" type="text" placeholder="Correo electrónico"/>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="RecordarContrasenna();">Recordar contraseña</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
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
    <script src="Recursos/js/Colaboradores/js_empleado_login.js"></script>

</body>

</html>
