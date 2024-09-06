﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>


<html>

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Typography | Bootstrap Based Admin Template - Material
	Design</title>

<!-- Favicon-->
<link rel="icon" href="../favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link href="../plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Waves Effect Css -->
<link href="../plugins/node-waves/waves.css" rel="stylesheet" />

<!-- Animation Css -->
<link href="../plugins/animate-css/animate.css" rel="stylesheet" />

<!-- Custom Css -->
<link href="../css/style.css" rel="stylesheet">

<!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="../css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-red">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="preloader">
				<div class="spinner-layer pl-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->
	<!-- Search Bar -->
	<div class="search-bar">
		<div class="search-icon">
			<i class="material-icons">search</i>
		</div>
		<input type="text" placeholder="START TYPING...">
		<div class="close-search">
			<i class="material-icons">close</i>
		</div>
	</div>
	<!-- #END# Search Bar -->
	<!-- Top Bar -->
	<nav class="navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="javascript:void(0);" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false"></a> <a href="javascript:void(0);"
					class="bars"></a> <a class="navbar-brand"
					href="widgets/../../index.html">ADMINBSB - MATERIAL DESIGN</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<!-- Call Search -->
					<li><a href="javascript:void(0);" class="js-search"
						data-close="true"><i class="material-icons">search</i></a></li>
					<!-- #END# Call Search -->
					<!-- Notifications -->
					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button">
							<i class="material-icons">notifications</i> <span
							class="label-count">7</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">NOTIFICATIONS</li>
							<li class="body">
								<ul class="menu">
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-light-green">
												<i class="material-icons">person_add</i>
											</div>
											<div class="menu-info">
												<h4>12 new members joined</h4>
												<p>
													<i class="material-icons">access_time</i> 14 mins ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-cyan">
												<i class="material-icons">add_shopping_cart</i>
											</div>
											<div class="menu-info">
												<h4>4 sales made</h4>
												<p>
													<i class="material-icons">access_time</i> 22 mins ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-red">
												<i class="material-icons">delete_forever</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>Nancy Doe</b> deleted account
												</h4>
												<p>
													<i class="material-icons">access_time</i> 3 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-orange">
												<i class="material-icons">mode_edit</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>Nancy</b> changed name
												</h4>
												<p>
													<i class="material-icons">access_time</i> 2 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-blue-grey">
												<i class="material-icons">comment</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>John</b> commented your post
												</h4>
												<p>
													<i class="material-icons">access_time</i> 4 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-light-green">
												<i class="material-icons">cached</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>John</b> updated status
												</h4>
												<p>
													<i class="material-icons">access_time</i> 3 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-purple">
												<i class="material-icons">settings</i>
											</div>
											<div class="menu-info">
												<h4>Settings updated</h4>
												<p>
													<i class="material-icons">access_time</i> Yesterday
												</p>
											</div>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="javascript:void(0);">View
									All Notifications</a></li>
						</ul></li>
					<!-- #END# Notifications -->
					<!-- Tasks -->
					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button">
							<i class="material-icons">flag</i> <span class="label-count">9</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">TASKS</li>
							<li class="body">
								<ul class="menu tasks">
									<li><a href="javascript:void(0);">
											<h4>
												Footer display issue <small>32%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-pink" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 32%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Make new buttons <small>45%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-cyan" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 45%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Create new dashboard <small>54%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-teal" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 54%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Solve transition issue <small>65%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-orange" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 65%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Answer GitHub questions <small>92%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-purple" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 92%"></div>
											</div>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="javascript:void(0);">View
									All Tasks</a></li>
						</ul></li>
					<!-- #END# Tasks -->
					<li class="pull-right"><a href="javascript:void(0);"
						class="js-right-sidebar" data-close="true"><i
							class="material-icons">more_vert</i></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- #Top Bar -->
	<section>
		<!-- Left Sidebar -->
		<aside id="leftsidebar" class="sidebar">
			<!-- User Info -->
			<div class="user-info">
				<div class="image">
					<img src="../images/user.png" width="48" height="48" alt="User" />
				</div>
				<div class="info-container">
					<div class="name" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">John Doe</div>
					<div class="email">john.doe@example.com</div>
					<div class="btn-group user-helper-dropdown">
						<i class="material-icons" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:void(0);"><i
									class="material-icons">person</i>Profile</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="javascript:void(0);"><i
									class="material-icons">group</i>Followers</a></li>
							<li><a href="javascript:void(0);"><i
									class="material-icons">shopping_cart</i>Sales</a></li>
							<li><a href="javascript:void(0);"><i
									class="material-icons">favorite</i>Likes</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="javascript:void(0);"><i
									class="material-icons">input</i>Sign Out</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- #User Info -->
			<!-- Menu -->
			<div class="menu">
				<ul class="list">
					<li class="header">MAIN NAVIGATION</li>
					<li><a href="../index.html"> <i class="material-icons">home</i>
							<span>Home</span>
					</a></li>
					<li class="active"><a href="../pages/typography.html"> <i
							class="material-icons">text_fields</i> <span>Typography</span>
					</a></li>
					<li><a href="../pages/helper-classes.html"> <i
							class="material-icons">layers</i> <span>Helper Classes</span>
					</a></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">widgets</i> <span>Widgets</span>
					</a>
						<ul class="ml-menu">
							<li><a href="javascript:void(0);" class="menu-toggle"> <span>Cards</span>
							</a>
								<ul class="ml-menu">
									<li><a href="../pages/widgets/cards/basic.html">Basic</a>
									</li>
									<li><a href="../pages/widgets/cards/colored.html">Colored</a>
									</li>
									<li><a href="../pages/widgets/cards/no-header.html">No
											Header</a></li>
								</ul></li>
							<li><a href="javascript:void(0);" class="menu-toggle"> <span>Infobox</span>
							</a>
								<ul class="ml-menu">
									<li><a href="../pages/widgets/infobox/infobox-1.html">Infobox-1</a>
									</li>
									<li><a href="../pages/widgets/infobox/infobox-2.html">Infobox-2</a>
									</li>
									<li><a href="../pages/widgets/infobox/infobox-3.html">Infobox-3</a>
									</li>
									<li><a href="../pages/widgets/infobox/infobox-4.html">Infobox-4</a>
									</li>
									<li><a href="../pages/widgets/infobox/infobox-5.html">Infobox-5</a>
									</li>
								</ul></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">swap_calls</i> <span>User Interface
								(UI)</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/ui/alerts.html">Alerts</a></li>
							<li><a href="../pages/ui/animations.html">Animations</a></li>
							<li><a href="../pages/ui/badges.html">Badges</a></li>

							<li><a href="../pages/ui/breadcrumbs.html">Breadcrumbs</a></li>
							<li><a href="../pages/ui/buttons.html">Buttons</a></li>
							<li><a href="../pages/ui/collapse.html">Collapse</a></li>
							<li><a href="../pages/ui/colors.html">Colors</a></li>
							<li><a href="../pages/ui/dialogs.html">Dialogs</a></li>
							<li><a href="../pages/ui/icons.html">Icons</a></li>
							<li><a href="../pages/ui/labels.html">Labels</a></li>
							<li><a href="../pages/ui/list-group.html">List Group</a></li>
							<li><a href="../pages/ui/media-object.html">Media Object</a>
							</li>
							<li><a href="../pages/ui/modals.html">Modals</a></li>
							<li><a href="../pages/ui/notifications.html">Notifications</a>
							</li>
							<li><a href="../pages/ui/pagination.html">Pagination</a></li>
							<li><a href="../pages/ui/preloaders.html">Preloaders</a></li>
							<li><a href="../pages/ui/progressbars.html">Progress
									Bars</a></li>
							<li><a href="../pages/ui/range-sliders.html">Range
									Sliders</a></li>
							<li><a href="../pages/ui/sortable-nestable.html">Sortable
									& Nestable</a></li>
							<li><a href="../pages/ui/tabs.html">Tabs</a></li>
							<li><a href="../pages/ui/thumbnails.html">Thumbnails</a></li>
							<li><a href="../pages/ui/tooltips-popovers.html">Tooltips
									& Popovers</a></li>
							<li><a href="../pages/ui/waves.html">Waves</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">assignment</i> <span>Forms</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/forms/basic-form-elements.html">Basic
									Form Elements</a></li>
							<li><a href="../pages/forms/advanced-form-elements.html">Advanced
									Form Elements</a></li>
							<li><a href="../pages/forms/form-examples.html">Form
									Examples</a></li>
							<li><a href="../pages/forms/form-validation.html">Form
									Validation</a></li>
							<li><a href="../pages/forms/form-wizard.html">Form
									Wizard</a></li>
							<li><a href="../pages/forms/editors.html">Editors</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">view_list</i> <span>Tables</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/tables/normal-tables.html">Normal
									Tables</a></li>
							<li><a href="../pages/tables/jquery-datatable.html">Jquery
									Datatables</a></li>
							<li><a href="../pages/tables/editable-table.html">Editable
									Tables</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">perm_media</i> <span>Medias</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/medias/image-gallery.html">Image
									Gallery</a></li>
							<li><a href="../pages/medias/carousel.html">Carousel</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">pie_chart</i> <span>Charts</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/charts/morris.html">Morris</a></li>
							<li><a href="../pages/charts/flot.html">Flot</a></li>
							<li><a href="../pages/charts/chartjs.html">ChartJS</a></li>
							<li><a href="../pages/charts/sparkline.html">Sparkline</a></li>
							<li><a href="../pages/charts/jquery-knob.html">Jquery
									Knob</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">content_copy</i> <span>Example
								Pages</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/examples/profile.html">Profile</a></li>
							<li><a href="../pages/examples/sign-in.html">Sign In</a></li>
							<li><a href="../pages/examples/sign-up.html">Sign Up</a></li>
							<li><a href="../pages/examples/forgot-password.html">Forgot
									Password</a></li>
							<li><a href="../pages/examples/blank.html">Blank Page</a></li>
							<li><a href="../pages/examples/404.html">404 - Not Found</a>
							</li>
							<li><a href="../pages/examples/500.html">500 - Server
									Error</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">map</i> <span>Maps</span>
					</a>
						<ul class="ml-menu">
							<li><a href="../pages/maps/google.html">Google Map</a></li>
							<li><a href="../pages/maps/yandex.html">YandexMap</a></li>
							<li><a href="../pages/maps/jvectormap.html">jVectorMap</a></li>
						</ul></li>
					<li><a href="javascript:void(0);" class="menu-toggle"> <i
							class="material-icons">trending_down</i> <span>Multi Level
								Menu</span>
					</a>
						<ul class="ml-menu">
							<li><a href="javascript:void(0);"> <span>Menu
										Item</span>
							</a></li>
							<li><a href="javascript:void(0);"> <span>Menu
										Item - 2</span>
							</a></li>
							<li><a href="javascript:void(0);" class="menu-toggle"> <span>Level
										- 2</span>
							</a>
								<ul class="ml-menu">
									<li><a href="javascript:void(0);"> <span>Menu
												Item</span>
									</a></li>
									<li><a href="javascript:void(0);" class="menu-toggle">
											<span>Level - 3</span>
									</a>
										<ul class="ml-menu">
											<li><a href="javascript:void(0);"> <span>Level
														- 4</span>
											</a></li>
										</ul></li>
								</ul></li>
						</ul></li>
					<li><a href="changelogs.html"> <i class="material-icons">update</i>
							<span>Changelogs</span>
					</a></li>
					<li class="header">LABELS</li>
					<li><a href="javascript:void(0);"> <i
							class="material-icons col-red">donut_large</i> <span>Important</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i
							class="material-icons col-amber">donut_large</i> <span>Warning</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i
							class="material-icons col-light-blue">donut_large</i> <span>Information</span>
					</a></li>
				</ul>
			</div>
			<!-- #Menu -->
			<!-- Footer -->
			<div class="legal">
				<div class="copyright">
					&copy; 2016 - 2017 <a href="javascript:void(0);">AdminBSB -
						Material Design</a>.
				</div>
				<div class="version">
					<b>Version: </b> 1.0.5
				</div>
			</div>
			<!-- #Footer -->
		</aside>
		<!-- #END# Left Sidebar -->
		<!-- Right Sidebar -->
		<aside id="rightsidebar" class="right-sidebar">
			<ul class="nav nav-tabs tab-nav-right" role="tablist">
				<li role="presentation" class="active"><a href="#skins"
					data-toggle="tab">SKINS</a></li>
				<li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade in active in active"
					id="skins">
					<ul class="demo-choose-skin">
						<li data-theme="red" class="active">
							<div class="red"></div> <span>Red</span>
						</li>
						<li data-theme="pink">
							<div class="pink"></div> <span>Pink</span>
						</li>
						<li data-theme="purple">
							<div class="purple"></div> <span>Purple</span>
						</li>
						<li data-theme="deep-purple">
							<div class="deep-purple"></div> <span>Deep Purple</span>
						</li>
						<li data-theme="indigo">
							<div class="indigo"></div> <span>Indigo</span>
						</li>
						<li data-theme="blue">
							<div class="blue"></div> <span>Blue</span>
						</li>
						<li data-theme="light-blue">
							<div class="light-blue"></div> <span>Light Blue</span>
						</li>
						<li data-theme="cyan">
							<div class="cyan"></div> <span>Cyan</span>
						</li>
						<li data-theme="teal">
							<div class="teal"></div> <span>Teal</span>
						</li>
						<li data-theme="green">
							<div class="green"></div> <span>Green</span>
						</li>
						<li data-theme="light-green">
							<div class="light-green"></div> <span>Light Green</span>
						</li>
						<li data-theme="lime">
							<div class="lime"></div> <span>Lime</span>
						</li>
						<li data-theme="yellow">
							<div class="yellow"></div> <span>Yellow</span>
						</li>
						<li data-theme="amber">
							<div class="amber"></div> <span>Amber</span>
						</li>
						<li data-theme="orange">
							<div class="orange"></div> <span>Orange</span>
						</li>
						<li data-theme="deep-orange">
							<div class="deep-orange"></div> <span>Deep Orange</span>
						</li>
						<li data-theme="brown">
							<div class="brown"></div> <span>Brown</span>
						</li>
						<li data-theme="grey">
							<div class="grey"></div> <span>Grey</span>
						</li>
						<li data-theme="blue-grey">
							<div class="blue-grey"></div> <span>Blue Grey</span>
						</li>
						<li data-theme="black">
							<div class="black"></div> <span>Black</span>
						</li>
					</ul>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="settings">
					<div class="demo-settings">
						<p>GENERAL SETTINGS</p>
						<ul class="setting-list">
							<li><span>Report Panel Usage</span>
								<div class="switch">
									<label><input type="checkbox" checked><span
										class="lever"></span></label>
								</div></li>
							<li><span>Email Redirect</span>
								<div class="switch">
									<label><input type="checkbox"><span
										class="lever"></span></label>
								</div></li>
						</ul>
						<p>SYSTEM SETTINGS</p>
						<ul class="setting-list">
							<li><span>Notifications</span>
								<div class="switch">
									<label><input type="checkbox" checked><span
										class="lever"></span></label>
								</div></li>
							<li><span>Auto Updates</span>
								<div class="switch">
									<label><input type="checkbox" checked><span
										class="lever"></span></label>
								</div></li>
						</ul>
						<p>ACCOUNT SETTINGS</p>
						<ul class="setting-list">
							<li><span>Offline</span>
								<div class="switch">
									<label><input type="checkbox"><span
										class="lever"></span></label>
								</div></li>
							<li><span>Location Permission</span>
								<div class="switch">
									<label><input type="checkbox" checked><span
										class="lever"></span></label>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</aside>
		<!-- #END# Right Sidebar -->
	</section>

	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>TYPOGRAPHY</h2>
			</div>
			<!-- Body Copy -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>BODY COPY</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<p class="lead">Lorem ipsum dolor sit amet, consectetuer
								adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.
							</p>
							<p>Donec pede justo, fringilla vel, aliquet nec, vulputate
								eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis
								vitae, justo. Nullam dictum felis eu pede mollis pretium.
								Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.
								Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor
								eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante,
								dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra
								nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.
								Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies
								nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget
							</p>
							<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id,
								lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae
								sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit
								amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla
								mauris sit amet nibh. Donec sodales sagittis magna. Sed
								consequat, leo eget bibendum sodales, augue velit cursus nunc.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Body Copy -->
			<!-- Headings -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>HEADINGS</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<h1>h1. AdminBSB Heading</h1>
							<p class="m-b-30">In enim justo, rhoncus ut, imperdiet a,
								venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

							<h2>h2. AdminBSB Heading</h2>
							<p class="m-t-10 m-b-30">In enim justo, rhoncus ut, imperdiet
								a, venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

							<h3>h3. AdminBSB Heading</h3>
							<p class="m-t-15 m-b-30">In enim justo, rhoncus ut, imperdiet
								a, venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

							<h4>h4. AdminBSB Heading</h4>
							<p class="m-t-15 m-b-30">In enim justo, rhoncus ut, imperdiet
								a, venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

							<h5>h5. AdminBSB Heading</h5>
							<p class="m-t-15 m-b-30">In enim justo, rhoncus ut, imperdiet
								a, venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>

							<h6>h6. AdminBSB Heading</h6>
							<p class="m-t-15">In enim justo, rhoncus ut, imperdiet a,
								venenatis vitae, justo. Nullam dictum felis eu pede mollis
								pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
								semper nisi. Aenean vulputate eleifend tellus. Aenean leo
								ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Headings -->
			<!-- Text Styles -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								TEXT STYLES <small>You can use classes which names are <code>.font-bold,
										.font-italic, .font-underline, .font-line-through,
										.font-overline</code></small>
							</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Normal</b>
									</p>
									<p>Default text</p>
									<p class="col-pink">Text pink color</p>
									<p class="col-cyan">Text cyan color</p>
									<p class="col-teal">Text teal color</p>
									<p class="col-orange">Text orange color</p>
									<p class="col-blue-grey">Text blue grey color</p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Bold</b>
									</p>
									<p class="font-bold">Default text</p>
									<p class="font-bold col-pink">Text pink color</p>
									<p class="font-bold col-cyan">Text cyan color</p>
									<p class="font-bold col-teal">Text teal color</p>
									<p class="font-bold col-orange">Text orange color</p>
									<p class="font-bold col-blue-grey">Text blue grey color</p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Italic</b>
									</p>
									<p class="font-italic">Default text</p>
									<p class="font-italic col-pink">Text pink color</p>
									<p class="font-italic col-cyan">Text cyan color</p>
									<p class="font-italic col-teal">Text teal color</p>
									<p class="font-italic col-orange">Text orange color</p>
									<p class="font-italic col-blue-grey">Text blue grey color</p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Underline</b>
									</p>
									<p class="font-underline">Default text</p>
									<p class="font-underline col-pink">Text pink color</p>
									<p class="font-underline col-cyan">Text cyan color</p>
									<p class="font-underline col-teal">Text teal color</p>
									<p class="font-underline col-orange">Text orange color</p>
									<p class="font-underline col-blue-grey">Text blue grey
										color</p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Line Through</b>
									</p>
									<p class="font-line-through">Default text</p>
									<p class="font-line-through col-pink">Text pink color</p>
									<p class="font-line-through col-cyan">Text cyan color</p>
									<p class="font-line-through col-teal">Text teal color</p>
									<p class="font-line-through col-orange">Text orange color</p>
									<p class="font-line-through col-blue-grey">Text blue grey
										color</p>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-6 col-xs-6">
									<p>
										<b>Overline</b>
									</p>
									<p class="font-overline">Default text</p>
									<p class="font-overline col-pink">Text pink color</p>
									<p class="font-overline col-cyan">Text cyan color</p>
									<p class="font-overline col-teal">Text teal color</p>
									<p class="font-overline col-orange">Text orange color</p>
									<p class="font-overline col-blue-grey">Text blue grey color</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Text Styles -->
			<!-- Blockquotes -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>BLOCKQUOTES</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<blockquote class="m-b-25">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
							</blockquote>
							<blockquote>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
								<footer>
									Someone famous in <cite title="Source Title">Source
										Title</cite>
								</footer>
							</blockquote>
							<blockquote class="blockquote-reverse">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
								<footer>
									Someone famous in <cite title="Source Title">Source
										Title</cite>
								</footer>
							</blockquote>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Blockquotes -->
			<!-- Unordered List -->
			<div class="row clearfix">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>UNORDERED LIST</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<ul>
								<li>Lorem ipsum dolor sit amet</li>
								<li>Consectetur adipiscing elit</li>
								<li>Integer molestie lorem at massa</li>
								<li>Facilisis in pretium nisl aliquet</li>
								<li>Nulla volutpat aliquam velit
									<ul>
										<li>Phasellus iaculis neque</li>
										<li>Purus sodales ultricies</li>
										<li>Vestibulum laoreet porttitor sem</li>
										<li>Ac tristique libero volutpat at</li>
									</ul>
								</li>
								<li>Faucibus porta lacus fringilla vel</li>
								<li>Aenean sit amet erat nunc</li>
								<li>Eget porttitor lorem</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>ORDERED LIST</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<ol>
								<li>Lorem ipsum dolor sit amet</li>
								<li>Consectetur adipiscing elit</li>
								<li>Integer molestie lorem at massa</li>
								<li>Facilisis in pretium nisl aliquet</li>
								<li>Nulla volutpat aliquam velit
									<ol>
										<li>Phasellus iaculis neque</li>
										<li>Purus sodales ultricies</li>
										<li>Vestibulum laoreet porttitor sem</li>
										<li>Ac tristique libero volutpat at</li>
									</ol>
								</li>
								<li>Faucibus porta lacus fringilla vel</li>
								<li>Aenean sit amet erat nunc</li>
								<li>Eget porttitor lorem</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>UNSTYLED LIST</h2>
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<ul class="list-unstyled">
								<li>Lorem ipsum dolor sit amet</li>
								<li>Consectetur adipiscing elit</li>
								<li>Integer molestie lorem at massa</li>
								<li>Facilisis in pretium nisl aliquet</li>
								<li>Nulla volutpat aliquam velit
									<ul>
										<li>Phasellus iaculis neque</li>
										<li>Purus sodales ultricies</li>
										<li>Vestibulum laoreet porttitor sem</li>
										<li>Ac tristique libero volutpat at</li>
									</ul>
								</li>
								<li>Faucibus porta lacus fringilla vel</li>
								<li>Aenean sit amet erat nunc</li>
								<li>Eget porttitor lorem</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Unordered List -->
		</div>
	</section>

	<!-- Jquery Core Js -->
	<script src="../plugins/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core Js -->
	<script src="../plugins/bootstrap/js/bootstrap.js"></script>

	<!-- Select Plugin Js -->
	<script src="../plugins/bootstrap-select/js/bootstrap-select.js"></script>

	<!-- Slimscroll Plugin Js -->
	<script src="../plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- Waves Effect Plugin Js -->
	<script src="../plugins/node-waves/waves.js"></script>

	<!-- Custom Js -->
	<script src="../js/admin.js"></script>

	<!-- Demo Js -->
	<script src="../js/demo.js"></script>
</body>

</html>