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

	<c:import url="/WEB-INF/views/include/admin_top_info.jsp"></c:import>

	<section>
		<c:import url="/WEB-INF/views/include/admin_left_side.jsp"></c:import>

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
										<h2>投稿管理</h2>
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
											<li><a href="javascript:void(0);">Something else
													here</a></li>
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
												<table id="wonil_table">
													<thead>
														<tr>
															<th id="wonil_th_id">ユーザー番号</th>
															<th id="wonil_th_pw">タイトル</th>
															<th id="wonil_th_name">ニックネーム</th>
															<th id="wonil_th_posts">コメント数</th>
															<th id="wonil_th_comments">投稿日時</th>
															<th id="wonil_th_answers">削除</th>
														</tr>
													</thead>
													<tbody>
														<!-- 데이터 반복 표시 -->
														<c:forEach var="obj" items="${contentList}"
															varStatus="status">
															<tr>
																<td>${status.index + 1}</td>
																<td>${obj.content_subject}</td>
																<td>${obj.user_name}</td>
																<td>${obj.content_comment_count}</td>
																<td>${obj.content_date}</td>
																<td><button class="wonil_btn-delete"
																		onclick="openModal(this)"
																		data-idx="${obj.content_idx}"
																		data-subject="${obj.content_subject}"
																		data-name="${obj.user_name}"
																		data-comments="${obj.content_comment_count}"
																		data-date="${obj.content_date}">削除</button></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>

												<!-- 페이지네이션 -->
												<div class="wonil_pagination">

													<c:if test="${pageBean.currentPage > 1}">
														<a
															href="${root}company/manage_content?board_info_idx=${board_info_idx }&page=${pageBean.currentPage - 1}">&laquo;</a>
													</c:if>
													<c:forEach var="page" begin="${pageBean.min}"
														end="${pageBean.max}">
														<c:choose>
															<c:when test="${page == pageBean.currentPage}">
																<a
																	href="${root}company/manage_content?board_info_idx=${board_info_idx }&page=${page}"
																	class="active">${page}</a>
															</c:when>
															<c:otherwise>
																<a
																	href="${root}company/manage_content?board_info_idx=${board_info_idx }&page=${page}">${page}</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>

													<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
														<a
															href="${root}company/manage_content?board_info_idx=${board_info_idx }&page=${pageBean.currentPage + 1}">&raquo;</a>
													</c:if>
												</div>

												<div id="wonil_modal" class="wonil_modal">
													<div class="wonil_modal-content">
														<span class="wonil_close" onclick="closeModal()">&times;</span>
														<form:form id="wonil_userEditForm"
															action="${root }company/manage_content_modal"
															modelAttribute="adminContentBean" method="post">

															<form:hidden path="content_idx" id="content_idx" />
															<form:hidden path="board_info_idx" />

															<form:label path="content_subject">タイトル:</form:label>
															<form:input path="content_subject" id="content_subject"
																readonly="true" />
															<form:label path="user_name">投稿者:</form:label>
															<form:input path="user_name" id="user_name"
																readonly="true" />
															<form:label path="content_comment_count">コメント数:</form:label>
															<form:input path="content_comment_count"
																id="content_comment_count" readonly="true" />
															<form:label path="content_date">投稿日時:</form:label>
															<form:input path="content_date" id="content_date"
																readonly="true" />

															<button type="submit">削除</button>
															<button type="button" onclick="closeModal()">取消</button>
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
			function openModal(button) {
				var idx = button.getAttribute('data-idx');
				var subject = button.getAttribute('data-subject');
				var name = button.getAttribute('data-name');
				var comments = button.getAttribute('data-comments');
				var date = button.getAttribute('data-date');

				document.getElementById('content_idx').value = idx;
				document.getElementById('content_subject').value = subject;
				document.getElementById('user_name').value = name;
				document.getElementById('content_comment_count').value = comments;
				document.getElementById('content_date').value = date;

				document.getElementById('wonil_modal').style.display = 'block';
			}

			function closeModal() {
				document.getElementById('wonil_modal').style.display = 'none';
			}
		</script>
</body>

</html>
