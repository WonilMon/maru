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
			button.textContent = '確認';
			button.classList.remove('edit-mode');
			button.classList.add('save-mode');
		} else {
			// Switch back to view mode
			input.setAttribute('readonly', 'true');
			button.textContent = '変更';
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
						alert("ステータスメッセージが変更されました。");
					} else {
						alert("ステータスメッセージの変更に失敗しました。");
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

.scroll-box {
	max-height: 230px; /* 원하는 최대 높이 */
	overflow-y: auto; /* 수직 스크롤 활성화 */
	padding: 10px; /* 안쪽 여백 */
	border: 1px solid #ccc; /* 테두리 추가 */
}

.chart-container {
	position: relative;
	width: 100%; /* 부모 요소의 너비에 맞추어 크기 조정 */
	height: 260px; /* 원하는 높이로 설정 */
	max-width: 400px; /* 캔버스의 최대 너비 설정 (옵션) */
	margin: 10px; /* 중앙 정렬 */
	overflow: hidden; /* 부모 요소가 넘치는 부분을 숨김 */
}

#myChart {
	width: 100%; /* 부모 요소에 맞추어 너비 조정 */
	height: 80%; /* 부모 요소에 맞추어 높이 조정 */
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
									<h2>お知らせ</h2>
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
													<label for="user_statustext">管理者</label>
													<div class="input-container">
														<input type="text" id="admin_notice" name="admin_notice"
															value="${admin_notice}" readonly
															style="width: 50%; height: 50px; font-size: 18px; box-sizing: border-box;" />

														<button id="changeStatusTextBtn"
															onclick="toggleEditMode()">変更</button>
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
							<div class="m-b--35 font-bold">新規ユーザー</div>

							<!-- 그래프를 그릴 캔버스 요소 추가 -->
							<div class="chart-container">
								<canvas id="myChart"></canvas>
							</div>

							<!-- <ul class="dashboard-stat-list">
								<li>YESTERDAY <span class="pull-right"><b>3 872</b>
										<small>USERS</small></span></li>
								<li>TODAY <span class="pull-right"><b>1 200</b> <small>USERS</small></span></li>
								<li>LAST WEEK <span class="pull-right"><b>26 582</b>
										<small>USERS</small></span></li>
							</ul> -->
						</div>
					</div>
				</div>

				<!-- #END# Visitors -->
				<!-- Latest Social Trends -->
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<div class="card">
						<div class="body bg-cyan" style="height: 305px;">
							<div class="m-b--35 font-bold">最多ポイント獲得者</div>
							<ul class="dashboard-stat-list">
								<c:forEach var="obj" items="${userList_mostPoint}"
									varStatus="status">
									<li><span>${status.index + 1}</span><span> . </span> <span><strong>${obj.user_nickname}</strong></span>
										<span class="pull-right"> <b>${obj.user_point}<b><small>
														point</small></b></span>
									<li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<!-- #END# Latest Social Trends -->
				<!-- Answered Tickets -->
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<div class="card">
						<div class="body bg-teal" style="height: 300px;">
							<div class="font-bold m-b--35">管理者目録</div>
							<ul class="dashboard-stat-list scroll-box">
								<c:forEach var="obj" items="${userList_admin}">
									<li><span><strong>${obj.user_nickname}</strong> (
											${obj.user_gender } )</span> <span class="pull-right"> <b>${obj.user_email}</b></span>
									<li>
								</c:forEach>
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
							<h2>最多投稿者</h2>
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
											<th>ユーザー番号</th>
											<th>ニックネーム</th>
											<th>投稿数</th>
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
															test="${obj.user_content_count > 2 && obj.user_content_count <= 4}">
															<c:set var="progressBarClass" value="bg-green" />
														</c:when>
														<c:when
															test="${obj.user_content_count > 4 && obj.user_content_count <= 6}">
															<c:set var="progressBarClass" value="bg-orange" />
														</c:when>
														<c:when
															test="${obj.user_content_count > 6 && obj.user_content_count <= 10}">
															<c:set var="progressBarClass" value="bg-red" />
														</c:when>
													</c:choose>
													<div class="progress">
														<div class="progress-bar ${progressBarClass}"
															role="progressbar"
															aria-valuenow="${obj.user_content_count}"
															aria-valuemin="0" aria-valuemax="10"
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

	<!-- Chart.js 라이브러리 추가 -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<script>
    document.addEventListener('DOMContentLoaded', function () {
        // JSP에서 전달된 userList_flow 데이터를 JavaScript 배열로 변환
        const dataPoints = [];
        
        // JSP에서 userList_flow 데이터를 JavaScript 배열로 변환
        <c:forEach var="value" items="${userList_flow}">
            dataPoints.push(${value});
        </c:forEach>

        // 차트 데이터 설정
        const data = {
            labels: ['7日前', '６日前', '５日前', '４日前', '３日前', '２日前', '昨日'],
            datasets: [{
                label: 'Flow',
                data: dataPoints,
                borderColor: 'rgba(255, 255, 255, 0.7)',
                backgroundColor: 'rgba(0, 188, 212, 0.2)',
                borderWidth: 2
            }]
        };

        // 차트 옵션 설정
        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    x: {
                        grid: {
                            display: false
                        },
                        title: {
                            display: true
                        }
                    },
                    y: {
                        grid: {
                            display: true
                        },
                        title: {
                            display: true
                        }
                    }
                }
            }
        };

        // 차트 생성
        var myChart = new Chart(
            document.getElementById('myChart'),
            config
        );
    });
</script>



</body>

</html>
