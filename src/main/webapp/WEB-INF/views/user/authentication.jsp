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
<meta name="keywords" content="Authentication">
<meta name="description" content="">
<title>authentication</title>
<link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root}css/authentication.css" media="screen">
<script class="u-script" type="text/javascript" src="${root}js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root}js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
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
<meta name="twitter:title" content="authentication">
<meta name="twitter:description" content="">
<meta property="og:title" content="authentication">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	
	<section
		class="u-align-center u-clearfix u-container-align-center u-gradient u-section-1"
		id="sec-6546" data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">Authentication</h2>
			<p class="u-align-center u-text u-text-default u-text-2">
				<a
					class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
					data-href="#">お問い合わせ : www.maru.faq.com </a>
			</p>
			<div class="u-form u-radius-20 u-white u-form-1">
				<form action="https://forms.nicepagesrv.com/v2/form/process"
					class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form"
					source="email" name="form" style="padding: 28px;">
					<div class="u-form-group u-form-group-1">
						<label for="text-91a6" class="u-label">Password</label> <input
							type="text" placeholder="입력" id="text-91a6" name="password"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="required">
					</div>
					<div class="u-align-right u-form-group u-form-submit">
						<a href="#"
							class="u-active-palette-4-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-2-base u-radius-10 u-btn-2">Submit
							your request</a> <input type="submit" value="submit"
							class="u-form-control-hidden">
					</div>
					<div class="u-form-send-message u-form-send-success">Thank
						you! Your message has been sent.</div>
					<div class="u-form-send-error u-form-send-message">Unable to
						send your message. Please fix errors then try again.</div>
					<input type="hidden" value="" name="recaptchaResponse"> <input
						type="hidden" name="formServices"
						value="50d0594d-1c60-31b9-19af-78b3c1587d79">
				</form>
			</div>
		</div>
	</section>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>