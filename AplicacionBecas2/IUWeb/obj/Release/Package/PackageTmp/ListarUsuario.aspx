<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListarUsuario.aspx.vb" Inherits="IUWeb.ListarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Aplicación Gestión Becas</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-app.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<body class="page-header-fixed page-full-width">
    <form id="form1" runat="server">
  
        <asp:ScriptManager ID="ScriptManager1" runat="server">
             <services>
            <asp:servicereference Path="ServiceUsuarios.ServiceUsuario"/>
        </services>
        </asp:ScriptManager>
    
   

        <div class="header navbar navbar-fixed-top mega-menu">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="header-inner">
		<!-- BEGIN LOGO -->
		<a class="navbar-brand" href="index.html">
			<img src="assets/img/cenfotec.png" alt="" class="img-responsive"/>
		</a>
		<!-- END LOGO -->
		<!-- BEGIN HORIZANTAL MENU -->
		<div class="hor-menu hidden-sm hidden-xs">
			<ul class="nav navbar-nav">
				<li class="classic-menu-dropdown active">
					<a href="index.html">
						 Inicio
						<span class="selected">
						</span>
					</a>
				</li>
				<li class="mega-menu-dropdown">
					<a href="#" data-hover="dropdown" data-close-others="true" href="" class="dropdown-toggle">
						 Mantenimiento <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<!-- Content container to add padding -->
							<div class="mega-menu-content">
								<div class="row">
									<ul class="col-md-4 mega-menu-submenu">
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Usuarios
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Roles
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Tipos de Beca
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Requisitos
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Beneficios
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Cursos
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Carreras
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Configuracíon de Email
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li class="mega-menu-dropdown">
					<a href="#" data-hover="dropdown" data-close-others="true" href="" class="dropdown-toggle">
						 Becas <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<!-- Content container to add padding -->
							<div class="mega-menu-content ">
								<div class="row">
									<div class="col-md-7">
										<ul class="col-md-4 mega-menu-submenu">
											<li>
												<a href="#">
													<i class="fa fa-angle-right"></i> Becas
												</a>
											</li>
											<li>
												<a href="#">
													<i class="fa fa-angle-right"></i> Solicitudes
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li class="mega-menu-dropdown">
					<a href="#" data-hover="dropdown" data-close-others="true" href="" class="dropdown-toggle">
						 Académico <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<!-- Content container to add padding -->
							<div class="mega-menu-content">
								<div class="row">
									<ul class="col-md-4 mega-menu-submenu">
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Estudiantes
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Calificaciones
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li>
				<li class="mega-menu-dropdown">
					<a href="#" data-hover="dropdown" data-close-others="true" href="" class="dropdown-toggle">
						 Reportes <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<!-- Content container to add padding -->
							<div class="mega-menu-content">
								<div class="row">
									<ul class="col-md-4 mega-menu-submenu">
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Proformas
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Historiales Académicos
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Bitácora de Acciones
											</a>
										</li>
										<li>
											<a href="#">
												<i class="fa fa-angle-right"></i> Bitácora de Errores
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li>
					<span class="hor-menu-search-form-toggler">
						 &nbsp;
					</span>
					<div class="search-form">
						<form class="form-search">
							<div class="input-group">
								<input type="text" placeholder="Buscar..." class="form-control">
								<div class="input-group-btn">
									<button type="button" class="btn"></button>
								</div>
							</div>
						</form>
					</div>
				</li>
			</ul>
		</div>
		<!-- END HORIZANTAL MENU -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<img src="assets/img/menu-toggler.png" alt=""/>
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<ul class="nav navbar-nav pull-right">
			<!-- BEGIN NOTIFICATION DROPDOWN -->
			<li class="dropdown" id="header_notification_bar">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<i class="fa fa-warning"></i>
					<span class="badge">
						 1
					</span>
				</a>
				<ul class="dropdown-menu extended notification">
					<li>
						<p>
							 Tiene 14 notificacíones.
						</p>
					</li>
					<li>
						<ul class="dropdown-menu-list scroller" style="height: 150px;">
							<li>
								<a href="#">
									<span class="label label-icon label-success">
										<i class="fa fa-plus"></i>
									</span>
									 Nueva solicitud.
									<span class="time">
										 Justo ahora
									</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">
						<a href="#">
							 Ver todas la notificaciones <i class="m-icon-swapright"></i>
						</a>
					</li>
				</ul>
			</li>
			<!-- END NOTIFICATION DROPDOWN -->
			<!-- BEGIN INBOX DROPDOWN -->
			<li class="dropdown" id="header_inbox_bar">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<i class="fa fa-envelope"></i>
					<span class="badge">
						 1
					</span>
				</a>
				<ul class="dropdown-menu extended inbox">
					<li>
						<p>
							 Tiene 3 nuevos mensajes
						</p>
					</li>
					<li>
						<ul class="dropdown-menu-list scroller" style="height: 150px;">
							<li>
								<a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar2.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Alvaro Artavia
										</span>
										<span class="time">
											 Justo ahora
										</span>
									</span>
									<span class="message">
										 Se le informa que el usuario ha sido registrado
									</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">
						<a href="inbox.html">
							 Ver todos los mensajes <i class="m-icon-swapright"></i>
						</a>
					</li>
				</ul>
			</li>
			<!-- END INBOX DROPDOWN -->
			<!-- BEGIN TODO DROPDOWN -->
			
			<li class="dropdown user">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="assets/img/avatar1_small.jpg"/>
					<span class="username hidden-1024">
						 Alvaro Artavia
					</span>
					<i class="fa fa-angle-down"></i>
				</a>
				<ul class="dropdown-menu">
					<li>
						<a href="#">
							<i class="fa fa-user"></i> Ver Mi Perfil
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-key"></i> Cerrar Sesión
						</a>
					</li>
				</ul>
			</li>
			<!-- END USER LOGIN DROPDOWN -->
		</ul>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->

<!-- BEGIN contenedor de la pagína -->
<div class="page-container">
	<div class="page-sidebar navbar-collapse collapse">
		<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
			<li>
				<!-- BEGIN busqueda rapida responsive-->
				<form class="sidebar-search" action="extra_search.html" method="POST">
					<div class="form-container">
						<div class="input-box">
							<a href="javascript:;" class="remove">
							</a>
							<input type="text" placeholder="Buscar..."/>
							<input type="button" class="submit" value=" "/>
						</div>
					</div>
				</form>
				<!-- END busqueda rapida responsive -->
			</li>
			<li class="active">
				<a href="index.html">
					 Inicio
					<span class="selected">
					</span>
				</a>
			</li>
			<li>
				<a href="#">
					 Mantenimiento
					<span class="arrow">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="#">
							 Usuarios
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Roles
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Tipos de Beca
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Requisitos
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Beneficios
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Cursos
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Carreras
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Configuracíon de Email
							<span class="arrow">
							</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">
					 Becas
					<span class="arrow">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="#">
							 Becas
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Solicitudes
							<span class="arrow">
							</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">
					 Académico
					<span class="arrow">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="#">
							 Estudiantes
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Calificaciones
							<span class="arrow">
							</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">
					 Reportes
					<span class="arrow">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="#">
							 Proformas
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Historiales Académicos
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Bitácora de Acciones
							<span class="arrow">
							</span>
						</a>
					</li>
					<li>
						<a href="#">
							 Bitácora de Errores
							<span class="arrow">
							</span>
						</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- BEGIN contenido -->
	<div class="page-content-wrapper">
		<div class="page-content">

			<!-- BEGIN contenido de pagína-->
			<div class="row">
				<div class="col-md-3 sidebar-content ">
					<ul class="ver-inline-menu tabbable margin-bottom-25">
						<li class="active">
							<a href="#tab_1" data-toggle="tab">
								<i class="fa fa-briefcase"></i> Mantenimiento
							</a>
							<span class="after">
							</span>
						</li>
						<li>
							<a href="#tab_2" data-toggle="tab">
								<i class="fa fa-group"></i> Becas
							</a>
						</li>
						<li>
							<a href="#tab_3" data-toggle="tab">
								<i class="fa fa-leaf"></i> Académico
							</a>
						</li>
						<li>
							<a href="#tab_4" data-toggle="tab">
								<i class="fa fa-file"></i> Reportes
							</a>
						</li>
					</ul>
					<!-- BEGIN Mensaje Instataneo-->
					<div class="portlet box green">
						<div class="portlet-title line">
							<div class="caption">
								<i class="fa fa-comments"></i>Mensaje Instataneo.
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
							</div>
						</div>
						<div class="portlet-body">
							<form action="#">
								<div class="form-group">
									<div class="input-icon">
										<i class="fa fa-envelope"></i>
										<input type="text" class="form-control" placeholder="Titulo"/>
									</div>
								</div>
								<div class="form-group">
									<div class="input-icon">
										<i class="fa fa-envelope"></i>
										<input type="password" class="form-control" placeholder="Email"/>
									</div>
								</div>
								<div class="form-group">
									<div class="input-icon">
										<i class="fa fa-lock"></i>
										<input type="password" class="form-control" placeholder="Contraseña"/>
									</div>
								</div>
								<button type="submit" class="btn purple">Enviar</button>
							</form>
						</div>
					</div>
					<!-- END Mensaje Instataneo-->
				</div>
				<div class="col-md-9">
					<!-- BEGIN Header de la pagína-->
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN titulo de la pagína y breadcrumb-->
							<h3 class="page-title">
							Cenfotec <small>Administración de becas</small>
							</h3>
							<ul class="page-breadcrumb breadcrumb">
								
								<li>
									<i class="fa fa-home"></i>
									<a href="index.html">
										Inicio
									</a>
									<i class="fa fa-angle-right"></i>
								</li>							
							</ul>
							<!-- END titulo de la pagína y breadcrumb-->
						</div>
					</div>				
				</div>
                 <input id="btnConsultaUsuarios" type="button" value="button" />
                <div id="divMostrarUsuarios">
            <table id="tblMostrarUsuarios">
                <thead>
                    <tr>
                        <th>Identificación</th>
                        <th>Nombre</th>
                        <th>Rol</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
			</div>
		</div>				
	</div>
</div>
<!-- END contenedor de la pagína-->
<!-- BEGIN FOOTER -->
<div class="footer">
	<div class="footer-inner">
		 2014 &copy; Universidad Cenfotec
	</div>
	<div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
	</div>
</div>
    </form>

 <script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="LogicUsuarios.js">
    </script>
<!-- END CORE PLUGINS -->
<script src="assets/scripts/core/app.js"></script>
<script>
jQuery(document).ready(function() {    
   App.init();
});
</script>
</body>
</html>
