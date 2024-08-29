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

<!-- 원일용 스타일 -->
<link rel="stylesheet" href="${root }css/wonil_style.css">

</head>
<body class="theme-red">

	<!-- 페이지 헤더와 사이드바 로드 -->
	<c:import url="/WEB-INF/views/include/admin_top_info.jsp"></c:import>
	<section>
		<c:import url="/WEB-INF/views/include/admin_left_side.jsp"></c:import>
	</section>

	<!-- 메인 콘텐츠 영역 -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>DASHBOARD</h2>
			</div>

			<c:import url="/WEB-INF/views/include/admin_top_sub_info.jsp"></c:import>

			<!-- 공지사항 테이블 -->
			<div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card">
						<div class="header">
							<div class="row clearfix">
								<div class="col-xs-12 col-sm-6">
									<h2>FAQ관리</h2>
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
												<input type="text" id="wonil_search_input"
													placeholder="입력 쿠다사이">
												<button id="wonil_search_button">검색</button>
												<button id="wonil_reset_button">취소</button>
											</div>

											<!-- 정보 테이블 -->
											<table id="wonil_table">
												<thead>
													<tr>
														<th id="wonil_th_id">번호</th>
														<th id="wonil_th_pw">작성자</th>
														<th id="wonil_th_name">이메일</th>
														<th id="wonil_th_posts">내용</th>
														<th id="wonil_th_answers">응답</th>
														<th id="wonil_th_answers">삭제</th>
													</tr>
												</thead>
												<tbody>
													<!-- 데이터 반복 표시 -->
													<c:forEach var="obj" items="${faqList}" varStatus="status">
														<tr>
															<td>${status.index + 1}</td>
															<td>${obj.faq_user_nickname}</td>
															<td>${obj.faq_user_email}</td>
															<td>${obj.faq_user_text}</td>
															<td><button class="wonil_btn-modify"
																	onclick="openResponseModal(this)"
																	data-idx="${obj.faq_idx}"
																	data-name="${obj.faq_user_nickname}"
																	data-email="${obj.faq_user_email}"
																	data-text="${obj.faq_user_text}">응답</button></td>
															<td><button class="wonil_btn-delete"
																	onclick="openDeleteModal(this)"
																	data-idx="${obj.faq_idx}"
																	data-name="${obj.faq_user_nickname}"
																	data-email="${obj.faq_user_email}"
																	data-text="${obj.faq_user_text}">삭제</button></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

											<!-- 페이지네이션 -->
											<div class="wonil_pagination">

												<c:if test="${pageBean.currentPage > 1}">
													<a
														href="${root}company/manage_faq?page=${pageBean.currentPage - 1}">&laquo;</a>
												</c:if>
												<c:forEach var="page" begin="${pageBean.min}"
													end="${pageBean.max}">
													<c:choose>
														<c:when test="${page == pageBean.currentPage}">
															<a href="${root}company/manage_user?page=${page}"
																class="active">${page}</a>
														</c:when>
														<c:otherwise>
															<a href="${root}company/manage_faq?page=${page}">${page}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>

												<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
													<a
														href="${root}company/manage_faq?page=${pageBean.currentPage + 1}">&raquo;</a>
												</c:if>
											</div>

											<!-- 응답 모달 -->
											<div id="wonil_response_modal" class="wonil_modal">
												<div class="wonil_modal-content">
													<span class="wonil_close"
														onclick="closeModal('wonil_response_modal')">&times;</span>
													<form:form id="wonil_responseForm"
														action="${root}company/manage_faq_modal_answer"
														modelAttribute="adminFaqBean" method="post">

														<form:hidden path="faq_idx" id="response_faq_idx" />

														<form:label path="faq_user_nickname">작성자:</form:label>
														<form:input path="faq_user_nickname"
															id="response_user_name" readonly="true" />
														<form:label path="faq_user_email">이메일:</form:label>
														<form:input path="faq_user_email" id="response_user_email"
															readonly="true" />
														<form:label path="faq_user_text">내용:</form:label>
														<form:textarea path="faq_user_text"
															id="response_user_text" readonly="true"></form:textarea>
														<form:label path="response_text">응답:</form:label>
														<form:textarea path="response_text" id="response_text"></form:textarea>
														<button type="submit">전송</button>
														<button type="button"
															onclick="closeModal('wonil_response_modal')">취소</button>
													</form:form>
												</div>
											</div>

											<!-- 삭제 모달 -->
											<div id="wonil_delete_modal" class="wonil_modal">
												<div class="wonil_modal-content">
													<span class="wonil_close"
														onclick="closeModal('wonil_delete_modal')">&times;</span>
													<form:form id="wonil_deleteForm"
														action="${root}company/manage_faq_modal_delete"
														modelAttribute="adminFaqBean" method="post">

														<form:hidden path="faq_idx" id="delete_faq_idx" />

														<form:label path="faq_user_nickname">작성자:</form:label>
														<form:input path="faq_user_nickname" id="delete_user_name"
															readonly="true" />
														<form:label path="faq_user_email">이메일:</form:label>
														<form:input path="faq_user_email" id="delete_user_email"
															readonly="true" />
														<form:label path="faq_user_text">내용:</form:label>
														<form:textarea path="faq_user_text" id="delete_user_text"
															readonly="true"></form:textarea>
														<button type="submit">삭제</button>
														<button type="button"
															onclick="closeModal('wonil_delete_modal')">취소</button>
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

	<!-- 원일용 스크립트 -->
	<script>
		function openResponseModal(button) {
			var idx = button.getAttribute('data-idx');
			var name = button.getAttribute('data-name');
			var email = button.getAttribute('data-email');
			var text = button.getAttribute('data-text');

			document.getElementById('response_faq_idx').value = idx;
			document.getElementById('response_user_name').value = name;
			document.getElementById('response_user_email').value = email;
			document.getElementById('response_user_text').value = text;

			document.getElementById('wonil_response_modal').style.display = 'block';
		}

		function openDeleteModal(button) {
			var idx = button.getAttribute('data-idx');
			var name = button.getAttribute('data-name');
			var email = button.getAttribute('data-email');
			var text = button.getAttribute('data-text');

			document.getElementById('delete_faq_idx').value = idx;
			document.getElementById('delete_user_name').value = name;
			document.getElementById('delete_user_email').value = email;
			document.getElementById('delete_user_text').value = text;

			document.getElementById('wonil_delete_modal').style.display = 'block';
		}

		function closeModal(modalId) {
			document.getElementById(modalId).style.display = 'none';
		}
	</script>
</body>
</html>