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
<meta name="keywords" content="Register">
<meta name="description" content="">
<title>Register</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/Register.css" media="screen">
<script class="u-script" type="text/javascript" src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root }js/nicepage.js"
	defer=""></script>
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
<meta name="twitter:title" content="Register">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="Register">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">


	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-1"
		id="sec-0495">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div
				class="u-align-center u-container-align-center u-container-style u-expanded-width-xs u-group u-shape-rectangle u-group-1">
				<div class="u-container-layout u-container-layout-1">
					<h1 class="u-align-center u-text u-text-default u-text-1">Register</h1>
					<div class="u-align-center u-form u-form-1">
						<form action="https://forms.nicepagesrv.com/v2/form/process"
							class="u-clearfix u-form-spacing-17 u-form-vertical u-inner-form"
							style="padding: 50px;" source="email" name="form">
							<div
								class="u-form-group u-form-select u-label-none u-form-group-1">
								<label class="u-label">Dropdown</label>
								<div class="u-form-select-wrapper">
									<select id="select-8892" name="select"
										class="u-input u-input-rectangle" required="required">
										<option value="부모의 성별" data-calc="" selected="selected">부모의
											성별</option>
										<option value="부" data-calc="">부</option>
										<option value="모" data-calc="">모</option>
									</select>
									<svg class="u-caret u-caret-svg" version="1.1" id="Layer_1"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="16px" height="16px" viewBox="0 0 16 16"
										style="fill: currentColor;" xml:space="preserve">
										<polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
								</div>
							</div>
							<div class="u-form-group u-form-name u-label-none u-form-group-2">
								<label class="u-label">First Name</label> <input type="text"
									placeholder="Enter your First Name" id="name-4a43" name="name"
									class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-form-name u-label-none u-form-group-3">
								<label class="u-label">Last Name</label> <input type="text"
									placeholder="Enter your Last Name" id="name-4a43" name="name-2"
									class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-label-none u-form-group-4">
								<label class="u-label">Input</label> <input type="text"
									placeholder="NickName" id="text-393a" name="text"
									class="u-input u-input-rectangle" required="required">
							</div>
							<div
								class="u-form-email u-form-group u-label-none u-form-group-5">
								<label class="u-label">Email</label> <input type="email"
									placeholder="Enter a valid email address" id="email-7816"
									name="email" class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-label-none u-form-group-6">
								<label class="u-label">Input</label> <input type="text"
									id="text-44b4" name="text-2" class="u-input u-input-rectangle"
									placeholder="Password" required="required">
							</div>
							<div class="u-form-date u-form-group u-label-none u-form-group-7">
								<label class="u-label">Date</label> <input type="text"
									placeholder="MM/DD/YYYY" id="date-df3b" name="date"
									class="u-input u-input-rectangle" required=""
									data-date-format="mm/dd/yyyy">
							</div>
							<div
								class="u-form-group u-form-phone u-label-none u-form-group-8">
								<label class="u-label">Phone</label> <input type="tel"
									placeholder="Enter your phone (e.g. +14155552675)"
									id="phone-b84a" name="phone" class="u-input u-input-rectangle"
									required="">
							</div>
							<div
								class="u-border-3 u-border-grey-dark-1 u-form-group u-form-line u-line u-line-horizontal u-line-1"></div>
							<p class="u-form-group u-form-text u-text u-text-2">Sample
								text. Click to select the Text Element.</p>
							<div
								class="u-form-checkbox u-form-group u-label-none u-form-group-11">
								<input type="checkbox" id="checkbox-9eb7" name="checkbox"
									value="On" class="u-field-input" required="required"> <label
									class="u-field-label">Checkbox</label>
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
					<p class="u-align-center u-text u-text-grey-50 u-text-3">
						<a
							class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
							data-href="www.maru.suggestion">お問い合わせ：maru.suggestion</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- 하단 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>