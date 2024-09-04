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
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Welcome To | Bootstrap Based Admin Template - Material
	Design</title>
<!-- Favicon-->
<link rel="icon" href="${root }admin/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link href="${root }admin/plugins/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- Waves Effect Css -->
<link href="${root }admin/views/admin/plugins/node-waves/waves.css"
	rel="stylesheet" />

<!-- Animation Css -->
<link href="${root }admin/plugins/animate-css/animate.css"
	rel="stylesheet" />

<!-- Morris Chart Css-->
<link href="${root }admin/plugins/morrisjs/morris.css" rel="stylesheet" />

<!-- Custom Css -->
<link href="${root }admin/css/style.css" rel="stylesheet">

<!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="${root }admin/css/themes/all-themes.css" rel="stylesheet" />

<script>
	let isEditMode = false;

	function toggleEditMode() {
		const input = document.getElementById('admin_notice');
		const button = document.getElementById('changeStatusTextBtn');

		if (!isEditMode) {
			// Switch to edit mode
			input.removeAttribute('readonly');
			input.focus();
			button.textContent = '확인';
			button.classList.remove('edit-mode');
			button.classList.add('save-mode');
		} else {
			// Switch back to view mode
			input.setAttribute('readonly', 'true');
			button.textContent = '변경';
			button.classList.remove('save-mode');
			button.classList.add('edit-mode');

			// Perform AJAX request
			const admin_notice = input.value;

			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${root}company/updateStatusAdmin", true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4 && xhr.status === 200) {
					if (xhr.responseText === "success") {
						alert("상태 메시지가 변경되었습니다.");
					} else {
						alert("상태 메시지 변경에 실패했습니다.");
					}
				}
			};
			xhr.send("admin_notice=" + encodeURIComponent(admin_notice));
		}

		isEditMode = !isEditMode;
	}
</script>

<style>
.u-post-header-link {
	display: block; /* 블록 요소로 설정 */
	width: 100%; /* 부모 요소의 너비를 100%로 설정 */
	overflow: hidden; /* 넘치는 부분 숨기기 */
}
</style>

</head>
<body class="theme-red">

	<c:import url="/WEB-INF/views/include/admin_top_info.jsp"></c:import>

	<section>
		<c:import url="/WEB-INF/views/include/admin_left_side.jsp"></c:import>
	</section>

	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>DASHBOARD</h2>
			</div>

			<c:import url="/WEB-INF/views/include/admin_top_sub_info.jsp"></c:import>

			<!-- CPU Usage -->
			<div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card">
						<div class="header">
							<div class="row clearfix">
								<div class="col-xs-12 col-sm-6">
									<h2>공지사항</h2>
								</div>
							</div>
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

							<div class="u-clearfix u-sheet u-sheet-1">

								<div class="u-blog u-blog-1">
									<div class="u-list-control"></div>
									<div class="u-repeater u-repeater-1">

										<div
											class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-1">
											<div
												class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-1">

												<img src="${root }images/maru_logo_HJ.png"
													style="width: 700px; height: 250px;"
													class="u-blog-control u-image u-image-default u-image-1">


												<div class="status-container" style="margin: 30px;">
													<label for="user_statustext">관리자들에게</label>
													<div class="input-container">
														<input type="text" id="admin_notice" name="admin_notice"
															value="${admin_notice}" readonly
															style="width: 50%; height: 50px; font-size: 18px; box-sizing: border-box;" />

														<button id="changeStatusTextBtn"
															onclick="toggleEditMode()">변경</button>
													</div>
												</div>
											</div>
										</div>


									</div>
									<div class="u-list-control"></div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- #END# CPU Usage -->
			<div class="row clearfix">
				<!-- Visitors -->
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<div class="card">
						<div class="body bg-pink">
							<div class="sparkline" data-type="line" data-spot-Radius="4"
								data-highlight-Spot-Color="rgb(233, 30, 99)"
								data-highlight-Line-Color="#fff"
								data-min-Spot-Color="rgb(255,255,255)"
								data-max-Spot-Color="rgb(255,255,255)"
								data-spot-Color="rgb(255,255,255)" data-offset="90"
								data-width="100%" data-height="92px" data-line-Width="2"
								data-line-Color="rgba(255,255,255,0.7)"
								data-fill-Color="rgba(0, 188, 212, 0)">1,9,2,8,4,6,2,6,2</div>
							<ul class="dashboard-stat-list">
								<li>YESTERDAY <span class="pull-right"><b>3 872</b>
										<small>USERS</small></span>
								</li>
								<li>TODAY <span class="pull-right"><b>1 200</b> <small>USERS</small></span>
								</li>
								<li>LAST WEEK <span class="pull-right"><b>26 582</b>
										<small>USERS</small></span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- #END# Visitors -->
				<!-- Latest Social Trends -->
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<div class="card">
						<div class="body bg-cyan">
							<div class="m-b--35 font-bold">LATEST SOCIAL TRENDS</div>
							<ul class="dashboard-stat-list">
								<li>#socialtrends <span class="pull-right"> <i
										class="material-icons">trending_up</i>
								</span>
								</li>
								<li>#materialdesign <span class="pull-right"> <i
										class="material-icons">trending_up</i>
								</span>
								</li>
								<li>#adminbsb</li>
								<li>#freeadmintemplate</li>
								<li>#bootstraptemplate</li>
								<li>#freehtmltemplate <span class="pull-right"> <i
										class="material-icons">trending_up</i>
								</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- #END# Latest Social Trends -->
				<!-- Answered Tickets -->
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<div class="card">
						<div class="body bg-teal">
							<div class="font-bold m-b--35">ANSWERED TICKETS</div>
							<ul class="dashboard-stat-list">
								<li>TODAY <span class="pull-right"><b>12</b> <small>TICKETS</small></span>
								</li>
								<li>YESTERDAY <span class="pull-right"><b>15</b> <small>TICKETS</small></span>
								</li>
								<li>LAST WEEK <span class="pull-right"><b>90</b> <small>TICKETS</small></span>
								</li>
								<li>LAST MONTH <span class="pull-right"><b>342</b> <small>TICKETS</small></span>
								</li>
								<li>LAST YEAR <span class="pull-right"><b>4 225</b>
										<small>TICKETS</small></span>
								</li>
								<li>ALL <span class="pull-right"><b>8 752</b> <small>TICKETS</small></span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- #END# Answered Tickets -->
			</div>

			<div class="row clearfix">
				<!-- Task Info -->
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card">
						<div class="header">
							<h2>가장 많은 글을 남긴 유저</h2>
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
							<div class="table-responsive">
								<table class="table table-hover dashboard-task-infos">
									<thead>
										<tr>
											<th>번호</th>
											<th>닉네임</th>
											<th>게시글수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="obj" items="${userList_mostContent}"
											varStatus="status">
											<tr>
												<td>${status.index + 1}</td>
												<td>${obj.user_nickname}</td>
												<td><c:set var="progressBarClass" value="bg-light-blue" />
													<c:choose>
														<c:when
															test="${obj.user_content_count > 20 && obj.user_content_count <= 40}">
															<c:set var="progressBarClass" value="bg-green" />
														</c:when>
														<c:when
															test="${obj.user_content_count > 40 && obj.user_content_count <= 60}">
															<c:set var="progressBarClass" value="bg-orange" />
														</c:when>
														<c:when
															test="${obj.user_content_count > 60 && obj.user_content_count <= 100}">
															<c:set var="progressBarClass" value="bg-red" />
														</c:when>
													</c:choose>
													<div class="progress">
														<div class="progress-bar ${progressBarClass}"
															role="progressbar"
															aria-valuenow="${obj.user_content_count}"
															aria-valuemin="0" aria-valuemax="100"
															style="width: ${obj.user_content_count}%;"></div>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>


								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- #END# Task Info -->

			</div>
		</div>
	</section>

	<!-- Jquery Core Js -->
	<script src="${root }admin/plugins/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core Js -->
	<script src="${root }admin/plugins/bootstrap/js/bootstrap.js"></script>

	<!-- Select Plugin Js -->
	<script
		src="${root }admin/plugins/bootstrap-select/js/bootstrap-select.js"></script>

	<!-- Slimscroll Plugin Js -->
	<script
		src="${root }admin/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- Waves Effect Plugin Js -->
	<script src="${root }admin/plugins/node-waves/waves.js"></script>

	<!-- Jquery CountTo Plugin Js -->
	<script src="${root }admin/plugins/jquery-countto/jquery.countTo.js"></script>

	<!-- Morris Plugin Js -->
	<script src="${root }admin/plugins/raphael/raphael.min.js"></script>
	<script src="${root }admin/plugins/morrisjs/morris.js"></script>

	<!-- ChartJs -->
	<script src="${root }admin/plugins/chartjs/Chart.bundle.js"></script>

	<!-- Flot Charts Plugin Js -->
	<script src="${root }admin/plugins/flot-charts/jquery.flot.js"></script>
	<script src="${root }admin/plugins/flot-charts/jquery.flot.resize.js"></script>
	<script src="${root }admin/plugins/flot-charts/jquery.flot.pie.js"></script>
	<script
		src="${root }admin/plugins/flot-charts/jquery.flot.categories.js"></script>
	<script src="${root }admin/plugins/flot-charts/jquery.flot.time.js"></script>

	<!-- Sparkline Chart Plugin Js -->
	<script
		src="${root }admin/plugins/jquery-sparkline/jquery.sparkline.js"></script>

	<!-- Custom Js -->
	<script src="${root }admin/js/admin.js"></script>
	<script src="${root }admin/js/pages/index.js"></script>

	<!-- Demo Js -->
	<script src="${root }admin/js/demo.js"></script>
</body>

</html>
