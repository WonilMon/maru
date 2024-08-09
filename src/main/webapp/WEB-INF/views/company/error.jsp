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
<meta name="keywords" content="">
<meta name="description" content="">
<title>error</title>
<link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root}css/index.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root}js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root}js/nicepage.js" defer=""></script>
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
<meta name="twitter:title" content="error">
<meta name="twitter:description" content="">
<meta property="og:title" content="error">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-home-page="error.html" data-home-page-title="error"
	data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-1"
		id="sec-5d0c">
		<div class="u-clearfix u-sheet u-sheet-1">
			<img class="u-image u-image-circle u-image-1"
				src="${root}images/d7d1c4acd724b3bbb7b4b910ada08d71e928fad1983bf433440c9a111026c224a0fdc6d7b01f8a2e394a445e138620006189cb8b806cc50ffbe3aa_1280.jpg"
				alt="" data-image-width="1280" data-image-height="1101">
			<p class="u-text u-text-default u-text-1">404 에러 페이지 입니다.</p>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>