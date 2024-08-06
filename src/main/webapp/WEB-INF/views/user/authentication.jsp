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
<meta name="keywords" content="Authentication​">
<meta name="description" content="">
<title>Authentication</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/Authentication.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.14.4, nicepage.com">
<meta name="referrer" content="origin">
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
<meta name="twitter:title" content="Authentication">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="Authentication">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">

	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-1"
		id="sec-51a5">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div
				class="u-align-center u-container-align-center u-container-style u-expanded-width-xs u-group u-shape-rectangle u-group-1">
				<div class="u-container-layout u-valign-middle u-container-layout-1">
					<h1 class="u-align-center u-text u-text-default u-text-1">Authentication
					</h1>
					<div class="u-align-center u-form u-form-1">
						<form action="https://forms.nicepagesrv.com/v2/form/process"
							class="u-clearfix u-form-spacing-17 u-form-vertical u-inner-form"
							style="padding: 50px;" source="email" name="form">
							<div class="u-form-group u-label-none u-form-group-1">
								<label class="u-label">Input</label> <input type="text"
									placeholder="password" id="text-73f9" name="text"
									class="u-input u-input-rectangle">
							</div>
							<div class="u-align-left u-form-group u-form-submit">
								<a href="#" class="u-btn u-btn-submit u-button-style">Submit</a>
								<input type="submit" value="submit"
									class="u-form-control-hidden">
							</div>
							<div class="u-form-send-message u-form-send-success">Thank
								you! Your message has been sent.</div>
							<div class="u-form-send-error u-form-send-message">Unable
								to send your message. Please fix errors then try again.</div>
							<input type="hidden" value="" name="recaptchaResponse"> <input
								type="hidden" name="formServices"
								value="0bd4dc84-305b-0ca7-0535-8ff79b334998">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>

