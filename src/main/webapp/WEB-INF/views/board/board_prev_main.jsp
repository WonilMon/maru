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
<meta name="keywords" content="게시판​">
<meta name="description" content="">
<title>board_prev_main</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/board_prev_main.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">




<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "${root }images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="board_prev_main">
<meta name="twitter:description" content="">
<meta property="og:title" content="board_prev_main">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section
		class="u-align-center u-clearfix u-container-align-center u-palette-2-light-3 u-section-2"
		id="sec-545a">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-1">게시판
			</h2>
			<p
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-2">게시판을
				고르세용</p>
			<div class="u-expanded-width u-list u-list-1">
				<div class="u-repeater u-repeater-1">
				<c:forEach var="obj" items="${list }" varStatus="idx">
					<div
						class="u-align-center u-border-3 u-border-palette-2-light-1 u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
							<h3 class="u-align-center u-text u-text-3">${boardList[idx.index].board_info_name }</h3>
							<ol class="u-align-center u-spacing-30 u-text u-text-4">
								<c:forEach var="obj2" items="${obj }">
									<li>
										<a href='${root }board/board_read?content_idx=${obj2.content_idx}&board_info_idx=${obj2.board_info_idx}'>
											${obj2.content_subject }
										</a>
									</li>
								</c:forEach>
							</ol>
							<a href="${root }board/board_main?board_info_idx=${boardList[idx.index].board_info_idx}"
								class="u-align-center u-border-2 u-border-active-grey-50 u-border-hover-grey-50 u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-1"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction="">
								${boardList[idx.index].board_info_name }으로 가기</a>
						</div>
					</div>
					</c:forEach>
					</div>
				</div>
			</div>
	</section>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>


</body>
</html>