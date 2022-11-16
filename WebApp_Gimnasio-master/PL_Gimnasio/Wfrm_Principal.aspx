<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Principal.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Inicio</title>


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
                            <li class="active"><a href="./Wfrm_Principal.aspx">Inicio</a></li>
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

    <section id="home" class="video-section js-height-full hero-section">
        <div class="overlay"></div>
        <div class="home-text-wrapper relative">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-6">
                        <div class="hi-text">
                            <span>Eres mucho</span>
                            <h1>Más <strong>fuerte</strong> de lo que pensás</h1>
                            <a href="./Wfrm_Cliente_Login.aspx" class="primary-btn">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="choseus-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>¿Por qué escogernos?</span>
                        <h2>TE LLEVAMOS AL SIGUIENTE NIVEL</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <span class="flaticon-034-stationary-bike"></span>
                        <h4>Equipos Modernos</h4>
                        <p>
                            En Platinum Gym puedes encontrar los más modernos y tecnológicos: banco de pesa, bicicletas estáticas, cinta de correr, máquinas de tren superior.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <span class="flaticon-033-juice"></span>
                        <h4>Clases grupales</h4>
                        <p>
                            Si estás iniciando una vida saludable y te aburres de las rutinas, lo tuyo son las clases grupales: Pilates, Zumba, Boxing, Yoga.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <span class="flaticon-002-dumbell"></span>
                        <h4>Entrenamiento profesional</h4>
                        <p>
                            Cualificado en actividad física, prescribe ejercicios, motiva y fija metas de forma individualizada, teniendo en cuenta las condiciones físicas y los objetivos de cada uno de sus clientes.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="cs-item">
                        <span class="flaticon-014-heart-beat"></span>
                        <h4>Adaptado a sus necesidades</h4>
                        <p>
                            Se adapta la rutina a las necesidades del cliente según el horario en que pueda realizar su entrenamiento y las implicaciones de salud que imposibilite algún ejercicio.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="classes-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Nuestras clases</span>
                        <h2>LO QUE OFRECEMOS</h2>
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
                            <span>FUERZA</span>
                            <h5>Levantamiento de pesas</h5>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-2.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>CARDIO</span>
                            <h5>Bicicletas</h5>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-3.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>FUERZA</span>
                            <h5>Pilates</h5>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-1.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>BAILE</span>
                            <h4>Zumba</h4>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="class-item">
                        <div class="ci-pic">
                            <img src="Recursos/img/classes/class-5.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>DEPORTE</span>
                            <h4>Boxeo</h4>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="banner-section set-bg" data-setbg="Recursos/img/banner-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="bs-text">
                        <h2>Regístrese para obtener todos los beneficios</h2>
                        <div class="bt-tips">Donde la salud y el fitness se dan la mano.</div>
                        <a href="#" class="primary-btn  btn-normal">Ver planes</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="pricing-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Nuestros planes</span>
                        <h2>Seleccione el plan de su preferencia</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>Acceso 1 día</h3>
                        <div class="pi-price">
                            <h2>$ 25.0</h2>
                            <span>CLASE</span>
                        </div>
                        <ul>
                            <li>Uso de Equipos</li>
                            <li>Entrenador Personal</li>
                            <li>Clases grupales</li>
                            <li>2 horas</li>
                            <li>1 clase</li>
                        </ul>
                        <a href="#" class="primary-btn pricing-btn">Aplicar ahora</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-tag"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>Mes ilimitado</h3>
                        <div class="pi-price">
                            <h2>$ 80.0</h2>
                            <span>PLAN MENSUAL</span>
                        </div>
                        <ul>
                            <li>Uso de Equipos</li>
                            <li>Entrenador Personal</li>
                            <li>Seguimiento medidas</li>
                            <li>Clases grupales</li>
                            <li>2 horas / día</li>
                            <li>1 clase / día</li>
                        </ul>
                        <a href="#" class="primary-btn pricing-btn">Aplicar ahora</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-tag"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                        <h3>Año completo</h3>
                        <div class="pi-price">
                            <h2>$ 65.0</h2>
                            <span>PLAN ANUAL</span>
                            <span><small>precio por mes</small></span>
                        </div>
                        <ul>
                            <li>Uso de Equipos</li>
                            <li>Entrenador Personal</li>
                            <li>Seguimiento medidas</li>
                            <li>Clases grupales</li>
                            <li>2 horas / día</li>
                            <li>1 clase / día</li>
                        </ul>
                        <a href="#" class="primary-btn pricing-btn">Aplicar ahora</a>
                        <a href="#" class="thumb-icon"><i class="fa fa-tag"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="gallery-section">
        <div class="gallery">
            <div class="grid-sizer"></div>
            <div class="gs-item grid-wide set-bg" data-setbg="Recursos/img/gallery/gallery-1.jpg">
                <a href="Recursos/img/gallery/gallery-1.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="Recursos/img/gallery/gallery-2.jpg">
                <a href="Recursos/img/gallery/gallery-2.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="Recursos/img/gallery/gallery-3.jpg">
                <a href="Recursos/img/gallery/gallery-3.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="Recursos/img/gallery/gallery-4.jpg">
                <a href="Recursos/img/gallery/gallery-4.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item set-bg" data-setbg="Recursos/img/gallery/gallery-5.jpg">
                <a href="Recursos/img/gallery/gallery-5.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
            <div class="gs-item grid-wide set-bg" data-setbg="Recursos/img/gallery/gallery-6.jpg">
                <a href="Recursos/img/gallery/gallery-6.jpg" class="thumb-icon image-popup"><i class="fa fa-picture-o"></i></a>
            </div>
        </div>
    </div>


    <section class="team-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="team-title">
                        <div class="section-title">
                            <span>Nuestro equipo</span>
                            <h2>ENTRENE CON EXPERTOS</h2>
                        </div>
                        <a href="#" class="primary-btn btn-normal appoinment-btn">sacar cita</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="ts-slider owl-carousel">
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-1.jpg">
                            <div class="ts_text">
                                <h4>Anna Victoria</h4>
                                <span>Entrenadora</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-2.jpg">
                            <div class="ts_text">
                                <h4>Leandro Carvalho</h4>
                                <span>Entrenador</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-3.jpg">
                            <div class="ts_text">
                                <h4>Mario Peinado</h4>
                                <span>Entrenador</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-4.jpg">
                            <div class="ts_text">
                                <h4>Barry Jay</h4>
                                <span>Entrenador</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-5.jpg">
                            <div class="ts_text">
                                <h4>Maite Aguirre</h4>
                                <span>Entrenadora</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ts-item set-bg" data-setbg="Recursos/img/team/team-6.jpg">
                            <div class="ts_text">
                                <h4>Kayla Itsines</h4>
                                <span>Entrenadora</span>
                            </div>
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
    <script src="Recursos/js/videobg.js"></script>

</body>

</html>
