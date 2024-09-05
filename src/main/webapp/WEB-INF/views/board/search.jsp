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
<meta name="keywords"
	content="Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline">
<meta name="description" content="">
<title>search</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/search.css" media="screen">
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
		"logo": "${root }images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="search">
<meta name="twitter:description" content="">
<meta property="og:title" content="search">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">

<style>
/* 기본 레이아웃 스타일 */
.wonil_search-blog {
	margin: 5x;
}

.wonil_search-list-control {
	margin-bottom: 5px;
}

.wonil_search-repeater {
	display: flex;
	flex-direction: column;
}

.wonil_search-repeater-item {
	margin-bottom: 3px; /* 게시물 간 간격 축소 */
}

/* 포스트 스타일 */
.wonil_search-blog-post {
	border: 1px solid #F5B7B1; /* 파스텔 핑크 경계선 */
	border-left: none;
	border-right: none;
	background-color: #FADBD8; /* 파스텔 핑크 배경 */
	padding: 10px; /* 내부 패딩 축소 */
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

/* 텍스트 스타일 */
.wonil_search-text {
	font-family: Arial, sans-serif;
	color: #D35400; /* 어두운 오렌지색 텍스트 */
}

.wonil_search-text-5 {
	font-size: 18px; /* 텍스트 크기 약간 축소 */
	margin-bottom: 5px;
}

/* 링크 스타일 */
.wonil_search-post-header-link {
	text-decoration: none;
	color: #CB4335; /* 진한 핑크색 링크 */
}

.wonil_search-post-header-link:hover {
	color: #922B21; /* 마우스를 올렸을 때 더 진한 핑크색 */
}

/* 메타데이터 스타일 */
.wonil_search-metadata {
	font-size: 14px;
	color: #7D3C98; /* 중간 톤의 보라색 */
	display: flex;
	align-items: center; /* 수직 정렬을 중앙으로 */
	gap: 10px;
}

.wonil_search-meta-date, .wonil_search-meta-author {
	margin-right: 20px; /* 우측 여백 제거 */
}

.wonil_search-meta-icon {
	margin-right: 5px;
}
</style>

</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>




	<section class="u-align-center u-clearfix u-section-2" id="sec-ea52">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-left u-text u-text-default u-text-1">자유게시판</p>
			<div
				class="custom-expanded data-layout-selected u-clearfix u-gutter-0 u-layout-wrap u-palette-3-light-3 u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-col">
						<div class="u-size-60">
							<div class="u-layout-row">
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-37 u-layout-cell-1">
									<div
										class="u-container-layout u-valign-middle u-container-layout-1">
										<p class="u-align-center u-text u-text-default u-text-2">제목</p>
									</div>
								</div>
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-11 u-layout-cell-2">
									<div
										class="u-container-layout u-valign-middle u-container-layout-2">
										<p class="u-align-center u-text u-text-default u-text-3">작성자
										</p>
									</div>
								</div>
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-12 u-layout-cell-3">
									<div
										class="u-container-layout u-valign-middle u-container-layout-3">
										<p class="u-align-center u-text u-text-default u-text-4">작성일자
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:forEach var="obj" items="${searchList_1}">
				<div class="wonil_search-blog wonil_search-blog-1">
					<div class="wonil_search-list-control"></div>
					<div class="wonil_search-repeater wonil_search-repeater-1">
						<div
							class="wonil_search-blog-post wonil_search-border-1 wonil_search-border-pink-75 wonil_search-border-no-left wonil_search-border-no-right wonil_search-pastel-pink-2 wonil_search-repeater-item wonil_search-repeater-item-1">
							<div
								class="wonil_search-container-layout wonil_search-similar-container wonil_search-container-layout-4">
								<h2
									class="wonil_search-blog-control wonil_search-text wonil_search-text-5">
									<a class="wonil_search-post-header-link"
										href="${root}board/read?content_idx=${obj.content_idx}&board_info_idx=${obj.board_info_idx}">${obj.content_subject}</a>
								</h2>
								<div
									class="wonil_search-blog-control wonil_search-metadata wonil_search-metadata-1">
									<span class="wonil_search-meta-author">작성자: 임의문자열</span> | <span
										class="wonil_search-meta-date">${obj.content_date}</span>
								</div>
							</div>
						</div>
					</div>
					<div class="wonil_search-list-control"></div>
				</div>

			</c:forEach>
			<div
				class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
		</div>
	</section>


	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------------- -->
	<section class="u-align-center u-clearfix u-section-5" id="sec-7d47">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-left u-text u-text-default u-text-1">나눔게시판</p>
			<div
				class="custom-expanded data-layout-selected u-clearfix u-gutter-0 u-layout-wrap u-palette-3-light-3 u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-col">
						<div class="u-size-60">
							<div class="u-layout-row">
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-37 u-layout-cell-1">
									<div
										class="u-container-layout u-valign-middle u-container-layout-1">
										<p class="u-align-center u-text u-text-default u-text-2">제목</p>
									</div>
								</div>
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-11 u-layout-cell-2">
									<div
										class="u-container-layout u-valign-middle u-container-layout-2">
										<p class="u-align-center u-text u-text-default u-text-3">작성자
										</p>
									</div>
								</div>
								<div
									class="u-container-align-center u-container-style u-layout-cell u-size-12 u-layout-cell-3">
									<div
										class="u-container-layout u-valign-middle u-container-layout-3">
										<p class="u-align-center u-text u-text-default u-text-4">작성일자
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--blog-->
			<!--blog_options_json-->
			<!--{"type":"Recent","source":"","tags":"","count":""}-->
			<!--/blog_options_json-->
			<div class="u-blog u-blog-1">
				<div class="u-list-control"></div>
				<div class="u-repeater u-repeater-1">
					<!--blog_post-->
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-5">
								<a class="u-post-header-link" href="/blog/post-5.html">Post
									6 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-1">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-2">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-2">
						<div
							class="u-container-layout u-similar-container u-container-layout-5">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-6">
								<a class="u-post-header-link" href="/blog/post-4.html">Post
									5 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-3">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-4">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-3">
						<div
							class="u-container-layout u-similar-container u-container-layout-6">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-7">
								<a class="u-post-header-link" href="/blog/post-3.html">Post
									4 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-5">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-6">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-4">
						<div
							class="u-container-layout u-similar-container u-container-layout-7">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-8">
								<a class="u-post-header-link" href="/blog/post-2.html">Post
									3 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-7">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-8">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-5">
						<div
							class="u-container-layout u-similar-container u-container-layout-8">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-9">
								<a class="u-post-header-link" href="/blog/post-1.html">Post
									2 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-9">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-10">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-6">
						<div
							class="u-container-layout u-similar-container u-container-layout-9">
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-10">
								<a class="u-post-header-link" href="/blog/post.html">Post 1
									Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-11">
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-12">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
							</div>
							<!--/blog_post_metadata-->
						</div>
					</div>
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
					<!--blog_post-->
					<!--/blog_post-->
				</div>
				<div class="u-list-control"></div>
			</div>
			<!--/blog-->
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>