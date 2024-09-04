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
	content="Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline">
<meta name="description" content="">
<title>board_main</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/board_main.css" media="screen">
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
<meta name="twitter:title" content="board_main">
<meta name="twitter:description" content="">
<meta property="og:title" content="board_main">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">


	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-align-center u-clearfix u-section-2"
		id="carousel_d4e3">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-center u-text u-text-default u-text-1">
				${board_info_name}<span style="font-weight: 700;"></span>
			</p>

			<a href="${root }board/board_write?board_info_idx=${board_info_idx }"
				class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-1">글쓰기
			</a> <a href="${root }board/board_prev_main"
				class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-2">보드
				홈 </a>

			<div class="u-blog u-blog-1">
				<div class="u-list-control"></div>
				<div class="u-repeater u-repeater-1">

					<c:forEach var="obj" items="${contentList }">
						<div
							class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-1">
							<div
								class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-1">
								<a class="u-post-header-link" href="/blog/post-5.html"> <img
									src="${root }images/8ad73f3c.jpeg" alt=""
									class="u-blog-control u-image u-image-default u-image-1">

								</a>
								<h2 class="u-blog-control u-text u-text-2">
									<a class="u-post-header-link"
										href='${root }board/board_read?board_info_idx=${obj.board_info_idx}&content_idx=${obj.content_idx}'>
										${obj.content_subject}</a>
								</h2>

								<div
									class="u-blog-control u-post-content u-text u-text-3 fr-view">${obj.content_text }</div>

								<div class="u-blog-control u-metadata u-metadata-1">

									<span class="u-meta-author u-meta-icon">${obj.user_name}
									</span> <span class="u-meta-date u-meta-icon">${obj.content_date }</span>

								</div>

								<div class="u-blog-control u-post-tags u-post-tags-1">

									<a>${obj.content_hashTag1}</a>,<a>${obj.content_hashTag2}</a>,<a>${obj.content_hashTag3}</a>

								</div>

							</div>
						</div>
					</c:forEach>
					<div class="u-list-control"></div>
				</div>
				<p class="u-align-center u-text u-text-default u-text-22"
					style="display: inline;">

					<c:forEach var="idx" begin="${pageBean.min }"
						end="${pageBean.max }">
						<th class="page-item"
							style="display: inline-block; margin-right: 5px;"><a
							href="${root }board/board_main?board_info_idx=${board_info_idx}&page=${idx}"
							class="page-link">${idx}</a></th>
					</c:forEach>


				</p>
				<a href="#"
					class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-1">Next&nbsp;<span
					class="u-icon u-text-white"><svg class="u-svg-content"
							viewBox="0 0 512 512" x="0px" y="0px"
							style="width: 1em; height: 1em;">
						<path
								d="M506.134,241.843c-0.006-0.006-0.011-0.013-0.018-0.019l-104.504-104c-7.829-7.791-20.492-7.762-28.285,0.068 c-7.792,7.829-7.762,20.492,0.067,28.284L443.558,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h423.557 l-70.162,69.824c-7.829,7.792-7.859,20.455-0.067,28.284c7.793,7.831,20.457,7.858,28.285,0.068l104.504-104 c0.006-.006,0.011-.013,0.018-.019C513.968,262.339,513.943,249.635,506.134,241.843z"></path></svg></span>
				</a> <a href="#"
					class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-2"><span
					class="u-file-icon u-icon u-text-white"><img
						src="${root }images/120826-a013365f.png" alt=""></span>&nbsp;Next </a>
			</div>
	</section>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>