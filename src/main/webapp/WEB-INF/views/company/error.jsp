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
<title>Error</title>
<link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root}css/Error.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root}js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root}js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.14.4, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">





<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "${root}images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name",
				"https://instagram.com/name"
		]
}</script>
<meta name="theme-color" content="#eeb18b">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Error">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="Error">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">

	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section
		class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-container-align-center u-section-1"
		id="sec-2dc4">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-custom-php u-custom-php-1"
				data-custom-php="<!--custom_php--><?php
    echo &quot;Sample PHP&quot;;
?><!--/custom_php-->"></div>
		</div>
	</section>

	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>