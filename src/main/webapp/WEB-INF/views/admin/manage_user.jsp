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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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

<!-- 원일용 스타일 -->
<link rel="stylesheet" href="${root }css/wonil_style.css">

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
									<h2>회원 관리</h2>
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

											<!-- 검색 바 -->
											<div class="wonil_search-bar">
												<select id="wonil_select">
													<option>--선택--</option>
													<option>닉네임</option>
													<option>이메일</option>
												</select> <input type="text" id="wonil_search_input"
													placeholder="입력 쿠다사이">
												<button id="wonil_search_button">검색</button>
												<button id="wonil_reset_button">취소</button>
											</div>

											<!-- 회원 정보 테이블 -->
											<table id="wonil_table">
												<thead>
													<tr>
														<th id="wonil_th_id">닉네임</th>
														<th id="wonil_th_pw">이메일</th>
														<th id="wonil_th_name">비밀번호</th>
														<th id="wonil_th_posts">게시글수</th>
														<th id="wonil_th_comments">댓글수</th>
														<th id="wonil_th_answers">나이</th>
														<th id="wonil_th_answers">성별</th>
														<th id="wonil_th_actions">정보수정</th>
													</tr>
												</thead>
												<tbody>
													<!-- 데이터 반복 표시 -->
													<c:forEach var="obj" items="${userList}">
														<tr>
															<td>${obj.user_nickname}</td>
															<td>${obj.user_email}</td>
															<td>${obj.user_pass}</td>
															<td>${obj.user_content_count}</td>
															<td>${obj.user_comment_count}</td>
															<td>${obj.user_age}</td>
															<td>${obj.user_gender}</td>
															<td>
																<button class="wonil_btn-modify"
																	onclick="openModal(this)"
																	data-nickname="${obj.user_nickname}"
																	data-email="${obj.user_email}"
																	data-pass="${obj.user_pass}" data-age="${obj.user_age}"
																	data-gender="${obj.user_gender}"
																	data-point="${obj.user_point}"
																	data-role="${obj.user_role}">수정</button>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

											<!-- 페이지네이션 -->
											<div class="wonil_pagination">

												<c:if test="${pageBean.currentPage > 1}">
													<a
														href="${root}company/manage_user?page=${pageBean.currentPage - 1}">&laquo;</a>
												</c:if>
												<c:forEach var="page" begin="${pageBean.min}"
													end="${pageBean.max}">
													<c:choose>
														<c:when test="${page == pageBean.currentPage}">
															<a href="${root}company/manage_user?page=${page}"
																class="active">${page}</a>
														</c:when>
														<c:otherwise>
															<a href="${root}company/manage_user?page=${page}">${page}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>

												<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
													<a
														href="${root}company/manage_user?page=${pageBean.currentPage + 1}">&raquo;</a>
												</c:if>
											</div>

											<!-- 모달 -->
											<div id="wonil_modal" class="wonil_modal">
												<div class="wonil_modal-content">
													<span class="wonil_close" onclick="closeModalUser()">&times;</span>
													<form:form id="wonil_userEditForm"
														action="${root }company/manage_user_modal"
														modelAttribute="adminUserBean" method="post">
														<form:label path="user_nickname">닉네임:</form:label>
														<form:input path="user_nickname" id="user_nickname"
															readonly="true" />
														<form:label path="user_email">이메일:</form:label>
														<form:input path="user_email" id="user_email"
															readonly="true" />
														<form:label path="user_pass">비밀번호:</form:label>
														<form:input path="user_pass" id="user_pass"
															readonly="true" />
														<form:label path="user_age">나이:</form:label>
														<form:input path="user_age" id="user_age" readonly="true" />
														<form:label path="user_gender">성별:</form:label>
														<form:input path="user_gender" id="user_gender"
															readonly="true" />
														<form:label path="user_point">포인트:</form:label>
														<form:input path="user_point" id="user_point" />

														<form:label path="user_role">역할:</form:label>
														<form:select path="user_role" id="user_role">
															<option value="USER">사용자</option>
															<option value="ADMIN">관리자</option>
														</form:select>

														<button type="submit">저장</button>
														<button type="button" onclick="closeModalUser()">취소</button>
													</form:form>
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

	<script>
		function openModal(button) {
			var nickname = button.getAttribute('data-nickname');
			var email = button.getAttribute('data-email');
			var pass = button.getAttribute('data-pass');
			var age = button.getAttribute('data-age');
			var gender = button.getAttribute('data-gender');
			var point = button.getAttribute('data-point');
			var role = button.getAttribute('data-role');

			document.getElementById('user_nickname').value = nickname;
			document.getElementById('user_email').value = email;
			document.getElementById('user_pass').value = pass;
			document.getElementById('user_age').value = age;
			document.getElementById('user_gender').value = gender;
			document.getElementById('user_point').value = point;

			var selectRole = document.getElementById('user_role');
			selectRole.value = role;

			document.getElementById('wonil_modal').style.display = 'block';
		}

		// User 모달 닫기
		function closeModalUser() {
			document.getElementById('wonil_modal').style.display = 'none';
		}
	</script>
</body>

</html>
