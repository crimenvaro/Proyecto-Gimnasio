<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wfrm_Cliente_Agenda.aspx.cs" Inherits="PL_Gimnasio.Wfrm_Cliente_Agenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="Gym Template" />
    <meta name="keywords" content="Gym, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="Recursos/img/favicon.ico" type="image/x-icon" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Platinum Gym - Citas</title>


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
                            <li class="active"><a href="./Wfrm_Cliente_Agenda.aspx">Citas</a>
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
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>

    <section class="breadcrumb-section set-bg" data-setbg="Recursos/img/breadcrumb-bg.jpg">
        <!--CAMBIAR IMAGEN-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>Citas</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="citas-section spad">
        <div class="container">            
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="class-item" section="section-clases-grupales" onclick="seleccionarAgenda(this);">
                        <div class="ci-pic">
                            <img src="Recursos/img/clase.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>Apúntese en una</span>
                            <h5>SESIÓN GRUPAL</h5>
                            <a><i class="fa fa-angle-down"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item" section="section-rutinas" onclick="seleccionarAgenda(this);">
                        <div class="ci-pic">
                            <img src="Recursos/img/individual.jpg" alt="" />
                        </div>  
                        <div class="ci-text">
                            <span>Agende una</span>
                            <h5>SESIÓN INDIVIDUAL</h5>
                            <a><i class="fa fa-angle-down"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="class-item" section="section-valoracion" onclick="seleccionarAgenda(this);">
                        <div class="ci-pic">
                            <img src="Recursos/img/valoracion.jpg" alt="" />
                        </div>
                        <div class="ci-text">
                            <span>Cita de</span>
                            <h5>VALORACIÓN</h5>
                            <a><i class="fa fa-angle-down"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section id="section-clases-grupales" class="section-agenda class-timetable-section display-none">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <span>Encuentre su tiempo</span>
                        <h2>Clases grupales</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">Todos</li>
                            <li data-tsfilter="fitness">Fitness</li>
                            <li data-tsfilter="motivation">Deportivos</li>
                            <li data-tsfilter="workout">Entrenamiento</li>
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
                                    <td class="class-time">6.00am - 8.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Pérdida de peso</h5>
                                        <span>Maite Aguirre</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Cardio</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Boxing</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">10.00am - 12.00am</td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Pérdida de peso</h5>
                                        <span>Maite Aguirre</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="blank-td"></td>
                                </tr>
                                <tr>
                                    <td class="class-time">5.00pm - 7.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">7.00pm - 9.00pm</td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Pérdida de peso</h5>
                                        <span>Maite Aguirre</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="section-rutinas" class="section-agenda class-timetable-section display-none">
    <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <span>Encuentre su tiempo</span>
                        <h2>Entrenamiento de rutinas</h2>
                    </div>
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

    <section id="section-valoracion" class="section-agenda class-timetable-section display-none">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <span>Veamos juntos tu</span>
                        <h2>PROGRESO</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">Todos</li>
                            <li data-tsfilter="Maite Aguirre">Maite Aguirre</li>
                            <li data-tsfilter="Barry Jay">Barry Jay</li>
                            <li data-tsfilter="Kayla Itsines">Kayla Itsines</li>
                            <li data-tsfilter="Mario Peinado">Mario Peinado</li>
                            <li data-tsfilter="Anna Victoria">Anna Victoria</li>
                            <li data-tsfilter="Robert Cage">Robert Cage</li>
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
                                    <td class="class-time">6.00am - 8.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Maite Aguirre">
                                        <h5>4</h5>
                                        <span>Maite Aguirre</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Barry Jay">
                                        <h5>5</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Kayla Itsines">
                                        <h5>2</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Mario Peinado">
                                        <h5>3</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Anna Victoria">
                                        <h5>7</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Robert Cage">
                                        <h5>3</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">10.00am - 12.00am</td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Mario Peinado">
                                        <h5>2</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Maite Aguirre">
                                        <h5>6</h5>
                                        <span>Maite Aguirre</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Barry Jay">
                                        <h5>4</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Robert Cage">
                                        <h5>8</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Leandro Carvalho">
                                        <h5>9</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="blank-td"></td>
                                </tr>
                                <tr>
                                    <td class="class-time">5.00pm - 7.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Anna Victoria">
                                        <h5>1</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Leandro Carvalho">
                                        <h5>7</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>9</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Kayla Itsines">
                                        <h5>13</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Barry Jay">
                                        <h5>5</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Mario Peinado">
                                        <h5>3</h5>
                                        <span>Mario Peinado</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">7.00pm - 9.00pm</td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Barry Jay">
                                        <h5>6</h5>
                                        <span>Barry Jay</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Anna Victoria">
                                        <h5>7</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Kayla Itsines">
                                        <h5>8</h5>
                                        <span>Kayla Itsines</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Leandro Carvalho">
                                        <h5>4</h5>
                                        <span>Leandro Carvalho</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="Anna Victoria">
                                        <h5>3</h5>
                                        <span>Anna Victoria</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="Maite Aguirre">
                                        <h5>8</h5>
                                        <span>Maite Aguirre</span>
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
    <script src="Recursos/js/js_agenda.js"></script>
    <script src="Recursos/js/js_general_sesion.js"></script>
    <script src="Recursos/js/js_recuperar_contrasenna.js"></script>
</body>

</html>
