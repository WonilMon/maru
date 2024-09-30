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

<style>
.wonil_btn-modify2 {
	padding: 5px 10px;
	background-color: #FEC5BB;
	border: none;
	cursor: pointer;
}

.image-grid {
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
}

.image-item {
	width: 30%;
	border: 1px solid #ddd;
	padding: 10px;
	box-sizing: border-box;
	text-align: center;
}

.image-item .image {
	width: 100%;
	height: auto;
	max-height: 200px;
	object-fit: cover;
}

.image-item .info {
	margin-top: 10px;
}

.image-item .info p {
	margin: 5px 0;
	font-size: 14px;
}

.image-item .actions {
	margin-top: 10px;
}

.image-item .actions button {
	margin-right: 5px;
}
</style>

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
									<h2>おすそわけポイント管理</h2>
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
													placeholder="入力してください">
												<button id="wonil_search_button">検索</button>
												<button id="wonil_reset_button">取消</button>
											</div>

											<!-- 정보 테이블 -->
											<div class="image-grid">
												<c:forEach var="obj" items="${shareList}" varStatus="status">
													<div class="image-item">
														<div style="position: relative;">
															<img src="${root}/getProfileImage/${obj.share_file}"
																alt="이미지" class="image"
																style="${obj.after_point == 1 ? 'opacity: 0.3;' : 'opacity: 1;'}" />
															<c:if test="${obj.after_point == 1}">
																<div
																	style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: red; font-size: 50px;　font-weight: bold;">
																	支給完了</div>
															</c:if>
														</div>
														<p>
															<strong>${obj.content_subject}</strong>
														</p>

														<div class="info">
															<p class="sender">授与者: ${obj.sender_name}</p>
															<p class="receiver">受領者: ${obj.receiver_name}</p>
															<p>${obj.content_date}</p>
														</div>
														<div class="actions">
															<button class="wonil_btn-modify"
																onclick="openResponseModal(this)"
																data-idx="${obj.share_idx}"
																data-file="${obj.share_file}"
																data-subject="${obj.content_subject}"
																data-text="${obj.content_text}"
																data-sender="${obj.sender_name}"
																data-receiver="${obj.receiver_name}">応答</button>
															<button class="wonil_btn-delete"
																onclick="openDeleteModal(this)"
																data-idx="${obj.share_idx}"
																data-name="${obj.sender_name}"
																data-receiver="${obj.receiver_name}">削除</button>
														</div>
													</div>
													<c:if test="${(status.index + 1) % 3 == 0}">
														<div class="clearfix"></div>
													</c:if>
												</c:forEach>
											</div>

											<!-- 페이지네이션 -->
											<div class="wonil_pagination">

												<c:if test="${pageBean.currentPage > 1}">
													<a
														href="${root}company/manage_share?page=${pageBean.currentPage - 1}">&laquo;</a>
												</c:if>
												<c:forEach var="page" begin="${pageBean.min}"
													end="${pageBean.max}">
													<c:choose>
														<c:when test="${page == pageBean.currentPage}">
															<a href="${root}company/manage_share?page=${page}"
																class="active">${page}</a>
														</c:when>
														<c:otherwise>
															<a href="${root}company/manage_share?page=${page}">${page}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>

												<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
													<a
														href="${root}company/manage_share?page=${pageBean.currentPage + 1}">&raquo;</a>
												</c:if>
											</div>

											<!-- 응답 모달 -->
											<div id="wonil_response_modal" class="wonil_modal">
												<div class="wonil_modal-content">
													<span class="wonil_close"
														onclick="closeModal('wonil_response_modal')">&times;</span>
													<form:form id="wonil_responseForm"
														action="${root}company/manage_share_modal_answer"
														modelAttribute="adminShareBean" method="post">

														<form:hidden path="share_idx" id="response_idx" />

														<img id="response_file" src="" alt="Image Preview"
															style="width: 450px; height: 300px; margin: auto" />

														<form:label path="content_subject">タイトル:</form:label>
														<form:input path="content_subject" id="response_subject"
															readonly="true" />
														<form:label path="content_text">内容:</form:label>
														<form:input path="content_text" id="response_text"
															readonly="true" />

														<form:label path="sender_name">授与者:</form:label>
														<form:input path="sender_name" id="response_sender"
															readonly="true" />
														<form:label path="receiver_name">受領者:</form:label>
														<form:input path="receiver_name" id="response_receiver"
															readonly="true" />

														<button type="submit">ポイント支給</button>
														<button type="button"
															onclick="closeModal('wonil_response_modal')">取消</button>
													</form:form>
												</div>
											</div>
											<%-- 
											<!-- 삭제 모달 -->
											<div id="wonil_delete_modal" class="wonil_modal">
												<div class="wonil_modal-content">
													<span class="wonil_close"
														onclick="closeModal('wonil_delete_modal')">&times;</span>
													<form:form id="wonil_deleteForm"
														action="${root}company/manage_faq_modal_delete"
														modelAttribute="adminFaqBean" method="post">

														<form:hidden path="faq_idx" id="delete_faq_idx" />

														<form:label path="faq_user_nickname">投稿者:</form:label>
														<form:input path="faq_user_nickname" id="delete_user_name"
															readonly="true" />
														<form:label path="faq_user_email">メールアドレス:</form:label>
														<form:input path="faq_user_email" id="delete_user_email"
															readonly="true" />
														<form:label path="faq_user_text">内容:</form:label>
														<form:textarea path="faq_user_text" id="delete_user_text"
															readonly="true"></form:textarea>
														<button type="submit">削除</button>
														<button type="button"
															onclick="closeModal('wonil_delete_modal')">取消</button>
													</form:form>
												</div>
											</div>
 --%>
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
			document.getElementById('response_text').value = '';

			var idx = button.getAttribute('data-idx');
			var file = button.getAttribute('data-file');
			var subject = button.getAttribute('data-subject');
			var text = button.getAttribute('data-text');
			var sender = button.getAttribute('data-sender');
			var receiver = button.getAttribute('data-receiver');

			document.getElementById('response_idx').value = idx;
			document.getElementById('response_file').src = "${root}/getProfileImage/"
					+ file;
			document.getElementById('response_subject').value = subject;
			document.getElementById('response_text').value = text;
			document.getElementById('response_sender').value = sender;
			document.getElementById('response_receiver').value = receiver;

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
			document.getElementById('response_text').value = '';

			document.getElementById('wonil_delete_modal').style.display = 'block';
		}

		function closeModal(modalId) {
			document.getElementById(modalId).style.display = 'none';

		}
	</script>
</body>
</html>