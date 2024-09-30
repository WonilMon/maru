<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="My Profile​, Change profile​">
<meta name="description" content="">
<title>profile</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/profile.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">





<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "${root}images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="profile">
<meta name="twitter:description" content="">
<meta property="og:title" content="profile">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
<style>
#profileIcon {
	width: 48px;
	height: 48px;
	border-radius: 50%;
}

.wonil_container {
	width: 80%;
	margin: 100px auto;
	background-color: #fff;
	padding: 15px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.wonil_table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 15px;
}

.wonil_thead th {
	padding: 10px;
	background-color: #f8f8f8;
	font-weight: bold;
	text-align: center;
	border-bottom: 2px solid #ddd;
}

.wonil_td {
	padding: 10px;
	background-color: #fff;
	text-align: center;
	border-top: 2px solid #eee;
}

.wonil_label {
	background-color: #ff7f7f;
	color: white;
	padding: 7px 10px;
	border-radius: 5px;
	font-size: 14px;
	display: inline-block;
}

.wonil_tr {
	transition: background-color 0.3s ease;
}

.wonil_tr:hover {
	background-color: #f1f1f1;
}

.wonil_pagination {
	margin: 0 0 100px 0;
}

.wonil_pagination a {
	margin: 0 10px;
	text-decoration: none;
	padding: 7px 12px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
}

.wonil_pagination a.active {
	background-color: #ff7f7f;
	color: white;
	border-color: #ff7f7f;
}
</style>


</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">


	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-2"
		id="sec-fbb4">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-subtitle u-text u-text-default u-text-1">${profileUser.user_nickname}'s
				Profile</h2>
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-radius u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-row">
						<div
							class="u-size-29-lg u-size-29-sm u-size-29-xl u-size-29-xs u-size-60-md">
							<div class="u-layout-col">
								<div class="u-size-60">
									<div class="u-layout-row">
										<div
											class="u-container-align-center u-container-style u-layout-cell u-size-60 u-layout-cell-1">
											<div
												class="u-container-layout u-valign-middle u-container-layout-1">
												<div
													class="custom-expanded u-carousel u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1"
													data-interval="5000" data-u-ride="carousel"
													id="carousel-1944">
													<!-- <ol
														class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
														<li data-u-target="#carousel-1944" data-u-slide-to="0"
															class="u-active u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
														<li data-u-target="#carousel-1944" data-u-slide-to="1"
															class="u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
													</ol> -->
													<div class="u-carousel-inner u-gallery-inner"
														role="listbox">
														<div
															class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
															<div class="u-back-slide">
																<c:choose>
																	<c:when test="${img != null }">
																		<img id="profileImage"
																			src="${root}getProfileImage/${img}" style="border-radius: 5%;
																			class="u-back-image u-expanded" alt="프로필 이미지">
																	</c:when>
																	<c:otherwise>
																		<img id="profileImage"
																			src="${root}images/90fc53c9.svg" style="border-radius: 5%;
																			class="u-back-image u-expanded" alt="프로필 이미지">
																	</c:otherwise>
																</c:choose>

															</div>
															<div class="u-over-slide u-over-slide-1"></div>
														</div>
														<!-- <div
															class="u-carousel-item u-gallery-item u-carousel-item-2">
															<div class="u-back-slide">
																<img class="u-back-image u-expanded"
																	src="/images/90fc53c9.svg">
															</div>
															<div class="u-over-slide u-over-slide-2"></div>
														</div> -->
													</div>
													<!-- <a
														class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
														href="#carousel-1944" role="button" data-u-slide="prev">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.847 451.847">
																<path
																	d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
													</span> <span class="sr-only"> <svg
																viewBox="0 0 451.847 451.847">
																<path
																	d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
													</span>
													</a> <a
														class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2"
														href="#carousel-1944" role="button" data-u-slide="next">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.846 451.847">
																<path
																	d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
													</span> <span class="sr-only"> <svg
																viewBox="0 0 451.846 451.847">
																<path
																	d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
													</span>
													</a> -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="u-size-31-lg u-size-31-sm u-size-31-xl u-size-31-xs u-size-60-md">
							<div class="u-layout-col">
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-60 u-layout-cell-2">
									<div
										class="u-container-layout u-valign-middle u-container-layout-2">
										<h2 class="u-align-center u-subtitle u-text u-text-2"
											style="display: flex; align-items: center; justify-content: center;">
											${profileUser.user_nickname}
											<!-- 프로필 아이콘 표시 -->
											<span class="u-align-center u-file-icon u-icon u-icon-1"
												style="margin-left: 5px;"> <c:if
													test="${not empty profileUser.user_icon}">
													<img id="profileIcon" src="${root}${profileUser.user_icon}"
														alt="" />
												</c:if>
											</span>
										</h2>
										<!-- 아이콘 가지고 와서 표시하도록 수정 필요 -->
										<p class="u-align-center u-text u-text-3">${profileUser.user_statustext }</p>
										<a href="#"
											onclick="openChatWindow('${root}chat/room?sender_idx=${loginUserBean.user_idx}&receiver_idx=${profileUser.user_idx}'); return false;"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-1">
											1:1 chat </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section
		class="u-align-center u-clearfix u-container-align-center u-section-3"
		id="sec-da49">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-center u-text u-text-default u-text-1">${profileUser.user_nickname }さんの投稿
				</p>
			<div class="wonil_container">
				<table class="wonil_table">
					<thead class="wonil_thead">
						<tr>
							<th>掲示板</th>
							<th>タイトル</th>
							<th>投稿者</th>
							<th>投稿日時</th>
							<th>閲覧</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${myList}">
							<tr class="wonil_tr">
								<td class="wonil_td"><span class="wonil_label">${list.board_info_name }</span></td>
								<td class="wonil_td"><a
									href="${root }board/board_read?board_info_idx=${list.board_info_idx }&content_idx=${list.content_idx}">${list.content_subject}</a></td>
								<td class="wonil_td">${list.user_name }</td>
								<td class="wonil_td">${list.content_date }</td>
								<td class="wonil_td">${list.content_views }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="wonil_pagination">
				<c:if test="${pageBean.currentPage > 1}">
					<a
						href="${root}user/profile?user_idx=${profileUser.user_idx }&page=${pageBean.currentPage - 1}">&laquo;</a>
				</c:if>
				<c:forEach var="page" begin="${pageBean.min}" end="${pageBean.max}">
					<c:choose>
						<c:when test="${page == pageBean.currentPage}">
							<a
								href="${root}user/profile?user_idx=${profileUser.user_idx }&page=${page}"
								class="active">${page}</a>
						</c:when>
						<c:otherwise>
							<a
								href="${root}user/profile?user_idx=${profileUser.user_idx }&page=${page}">${page}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
					<a
						href="${root}user/profile?user_idx=${profileUser.user_idx }&page=${pageBean.currentPage + 1}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</section>



	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
	<script>
		function openChatWindow(url) {
			const width = 800;
			const height = 600;
			const left = (window.screen.width - width) / 2;
			const top = (window.screen.height - height) / 2;
			window.open(url, 'ChatRoomWindow', 'width=' + width + ',height='
					+ height + ',left=' + left + ',top=' + top);
		}
	</script>
</body>
</html>