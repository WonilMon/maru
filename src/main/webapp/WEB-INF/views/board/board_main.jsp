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
<script class="u-script" type="text/javascript" src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root }js/nicepage.js"
	defer=""></script>
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

	<section
		class="skrollable u-align-center u-clearfix u-container-align-center u-image u-parallax u-shading u-section-1"
		id="sec-af67" data-image-width="425" data-image-height="425">
		<div class="u-clearfix u-sheet u-sheet-1"></div>
	</section>
	<section class="u-align-center u-clearfix u-section-2"
		id="carousel_d4e3">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-center u-text u-text-default u-text-1">
				자유/질문/정보공유 게시판<span style="font-weight: 700;"></span>
			</p>
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
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-1">
							<a class="u-post-header-link" href="/blog/post-5.html"> <!--blog_post_image-->
								<img src="${root }images/8ad73f3c.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-1">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-2">
								<a class="u-post-header-link" href="/blog/post-5.html">Post
									6 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-3 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-1">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-1">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-2">
						<div
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-2">
							<a class="u-post-header-link" href="/blog/post-4.html"> <!--blog_post_image-->
								<img src="${root }images/68f64b9d.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-2">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-4">
								<a class="u-post-header-link" href="/blog/post-4.html">Post
									5 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-5 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-2">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-2">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-3">
						<div
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-3">
							<a class="u-post-header-link" href="/blog/post-3.html"> <!--blog_post_image-->
								<img src="${root }images/0fd3416c.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-3">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-6">
								<a class="u-post-header-link" href="/blog/post-3.html">Post
									4 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-7 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-3">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-3">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-4">
						<div
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-4">
							<a class="u-post-header-link" href="/blog/post-2.html"> <!--blog_post_image-->
								<img src="${root }images/8ad73f3c.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-4">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-8">
								<a class="u-post-header-link" href="/blog/post-2.html">Post
									3 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-9 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-4">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-4">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-5">
						<div
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-5">
							<a class="u-post-header-link" href="/blog/post-1.html"> <!--blog_post_image-->
								<img src="${root }images/68f64b9d.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-5">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-10">
								<a class="u-post-header-link" href="/blog/post-1.html">Post
									2 Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-11 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-5">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-5">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
						</div>
					</div>
					<div
						class="u-blog-post u-border-1 u-border-grey-75 u-border-no-left u-border-no-right u-palette-3-light-2 u-repeater-item u-repeater-item-6">
						<div
							class="u-container-layout u-similar-container u-valign-bottom-xs u-container-layout-6">
							<a class="u-post-header-link" href="/blog/post.html"> <!--blog_post_image-->
								<img src="${root }images/0fd3416c.jpeg" alt=""
								class="u-blog-control u-image u-image-default u-image-6">
								<!--/blog_post_image-->
							</a>
							<!--blog_post_header-->
							<h2 class="u-blog-control u-text u-text-12">
								<a class="u-post-header-link" href="/blog/post.html">Post 1
									Headline</a>
							</h2>
							<!--/blog_post_header-->
							<!--blog_post_content-->
							<div
								class="u-blog-control u-post-content u-text u-text-13 fr-view">Sample
								small text. Lorem ipsum dolor sit amet.</div>
							<!--/blog_post_content-->
							<!--blog_post_metadata-->
							<div class="u-blog-control u-metadata u-metadata-6">
								<!--blog_post_metadata_author-->
								<span class="u-meta-author u-meta-icon"> <!--blog_post_metadata_author_content-->User<!--/blog_post_metadata_author_content-->
								</span>
								<!--/blog_post_metadata_author-->
								<!--blog_post_metadata_date-->
								<span class="u-meta-date u-meta-icon">Aug 08, 2024</span>
								<!--/blog_post_metadata_date-->
								<!--blog_post_metadata_comments-->
								<!--/blog_post_metadata_comments-->
							</div>
							<!--/blog_post_metadata-->
							<!--blog_post_tags-->
							<div class="u-blog-control u-post-tags u-post-tags-6">
								<!--blog_post_tags_content-->
								<a>Tag 1</a>,<a>Tag 2</a>,<a>Tag 3</a>
								<!--/blog_post_tags_content-->
							</div>
							<!--/blog_post_tags-->
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
			<p class="u-align-center u-text u-text-default u-text-22">목록번호
				들어갈 곳</p>
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