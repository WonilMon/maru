<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="글 목록, 공지사항 보기, 공지 알림, 안내 사항, 공지사항 게시판 구성, 공지사항 목록 표시, FAQ, ​We provide value of our clients, 글 목록, 효율적인 공지사항 관리, 공지사항 보기">
<meta name="description" content="">
<title>write</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/Board_list.css" media="screen">
<script class="u-script" type="text/javascript" src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root }js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.14.4, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">






<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "${root }images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name",
				"https://instagram.com/name"
		]
}</script>
<meta name="theme-color" content="#eeb18b">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="write">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="write">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">

	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section class="u-clearfix u-image u-shading u-section-1" id="sec-162d">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h1 class="u-text u-text-default u-text-1">子供の一生、<br> マルと一緒。<br></h1>
		</div>
	</section>
	<section
		class="u-align-center u-clearfix u-container-align-center u-custom-color-5 u-valign-middle-sm u-section-2"
		id="carousel_851c">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h1 class="u-align-center u-text u-text-default u-text-1">Board
			</h1>
			<div
				class="custom-expanded data-layout-selected u-align-center u-clearfix u-gutter-0 u-layout-spacing-all u-layout-wrap u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-col">
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-align-center u-container-style u-custom-color-3 u-layout-cell u-size-60-sm u-size-60-xs u-size-7-lg u-size-7-md u-size-7-xl u-layout-cell-1">
									<div
										class="u-container-layout u-valign-middle u-container-layout-1">
										<p class="u-align-center u-text u-text-default u-text-2">제목
										</p>
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-palette-1-light-3 u-size-53 u-layout-cell-2">
									<div class="u-container-layout u-container-layout-2">
										<h6 class="u-align-center u-text u-text-default u-text-3">제목입니다</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-align-center u-container-style u-custom-color-3 u-layout-cell u-size-30-md u-size-60-lg u-size-60-sm u-size-60-xl u-size-60-xs u-layout-cell-3">
									<div
										class="u-container-layout u-valign-middle u-container-layout-3">
										<p class="u-align-center u-text u-text-default u-text-4">내용</p>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-style u-layout-cell u-palette-1-light-3 u-size-30-md u-size-60-lg u-size-60-sm u-size-60-xl u-size-60-xs u-layout-cell-4">
									<div class="u-container-layout u-container-layout-4">
										<p class="u-text u-text-default u-text-5">
											내용입니다만&nbsp; 僕堀田大貴やけどいいね押せろ（爆笑）<br>&nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp;나 홋다다이키인데 개추박아라 ㅋㅋ <br>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-style u-custom-color-3 u-layout-cell u-size-30-md u-size-60-lg u-size-60-sm u-size-60-xl u-size-60-xs u-layout-cell-5">
									<div class="u-container-layout u-container-layout-5">
										<p class="u-align-center u-text u-text-default u-text-6">
											이미지<br> <br>* 본문 가장 위에 삽입됨<br>* 일반 파일첨부는 전체 용량
											150MB, 3개까지 첨부가능, 파일 하나의 용량이 50MB 를 넘을수 없습니다.<br>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-align-center u-container-style u-layout-cell u-palette-1-light-3 u-size-30-md u-size-60-lg u-size-60-sm u-size-60-xl u-size-60-xs u-layout-cell-6">
									<div
										class="u-container-layout u-valign-middle u-container-layout-6">
										<a href="#"
											class="u-align-center u-btn u-button-style u-custom-color-2 u-btn-1">Button</a>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-10">
							<div class="u-layout-row">
								<div
									class="u-container-style u-custom-color-5 u-layout-cell u-size-30-md u-size-60-lg u-size-60-sm u-size-60-xl u-size-60-xs u-layout-cell-7">
									<div class="u-container-layout u-container-layout-7">
										<a href="#"
											class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-2">목록
										</a> <a href="#"
											class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-3">글쓰기
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>