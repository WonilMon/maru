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
	content="User Sign-In, Easy Login Process for Users, Photo Viewer, Login Interface, Interactive Slider for Engaging Content, Image Slideshow, Login Page, Enhance Website with Picture Slider, Secure and Seamless User Login, Image Gallery, Slider Component, Vibrant Picture Display Options, Photo Viewer">
<meta name="description" content="">
<title>home</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/home.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">






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
<meta name="twitter:title" content="home">
<meta name="twitter:description" content="">
<meta property="og:title" content="home">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_main.jsp"></c:import>

	<section
		class="u-clearfix u-container-align-center u-white u-section-2"
		id="carousel_88b7">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-gutter-40 u-layout-wrap u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-row">
						<div
							class="u-align-left u-container-style u-layout-cell u-shape-rectangle u-size-27-lg u-size-27-xl u-size-60-md u-size-60-sm u-size-60-xs u-layout-cell-1"
							data-animation-name="" data-animation-duration="0"
							data-animation-delay="0" data-animation-direction="">
							<div class="u-container-layout u-container-layout-1">
								<p class="u-align-center u-text u-text-default u-text-1"></p>
								<div
									class="u-carousel u-expanded-width u-gallery u-gallery-slider u-layout-carousel u-lightbox u-no-transition u-show-text-on-hover u-gallery-1"
									id="carousel-002d" data-interval="5000" data-u-ride="carousel">
									<ol
										class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
										<li data-u-target="#carousel-002d" data-u-slide-to="0"
											class="u-active u-grey-70 u-shape-circle"
											style="width: 10px; height: 10px;"></li>
										<li data-u-target="#carousel-002d" data-u-slide-to="1"
											class="u-grey-70 u-shape-circle"
											style="width: 10px; height: 10px;"></li>
									</ol>
									<div class="u-carousel-inner u-gallery-inner" role="listbox">
										<div
											class="u-active u-carousel-item u-effect-fade u-gallery-item u-carousel-item-1">
											<div class="u-back-slide">
												<img class="u-back-image u-expanded"
													src="${root }images/90fc53c9.svg">
											</div>
											<div
												class="u-align-center u-container-align-center u-over-slide u-shading u-valign-bottom u-over-slide-1">
												<h3 class="u-align-center u-gallery-heading"
													style="margin-right: 0px; margin-left: 0px;">Sample
													Title</h3>
												<p class="u-align-center u-gallery-text"
													style="margin-right: 0px; margin-left: 0px;">Sample
													Text</p>
											</div>
										</div>
										<div
											class="u-carousel-item u-effect-fade u-gallery-item u-carousel-item-2">
											<div class="u-back-slide">
												<img class="u-back-image u-expanded"
													src="${root }images/90fc53c9.svg">
											</div>
											<div
												class="u-align-center u-container-align-center u-over-slide u-shading u-valign-bottom u-over-slide-2">
												<h3 class="u-align-center u-gallery-heading">Sample
													Title</h3>
												<p class="u-align-center u-gallery-text">Sample Text</p>
											</div>
										</div>
									</div>
									<a
										class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
										href="#carousel-002d" role="button" data-u-slide="prev"> <span
										aria-hidden="true"> <svg viewBox="0 0 451.847 451.847">
												<path
													d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
									</span> <span class="sr-only"> <svg
												viewBox="0 0 451.847 451.847">
												<path
													d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
									</span>
									</a> <a
										class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2"
										href="#carousel-002d" role="button" data-u-slide="next"> <span
										aria-hidden="true"> <svg viewBox="0 0 451.846 451.847">
												<path
													d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
									</span> <span class="sr-only"> <svg
												viewBox="0 0 451.846 451.847">
												<path
													d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
									</span>
									</a>
								</div>
							</div>
						</div>
						<div
							class="u-align-left u-container-align-center u-container-style u-layout-cell u-radius u-shape-round u-similar-fill u-size-33-lg u-size-33-xl u-size-60-md u-size-60-sm u-size-60-xs u-white u-layout-cell-2"
							data-animation-name="" data-animation-duration="0"
							data-animation-delay="0" data-animation-direction="">
							<div
								class="u-border-3 u-border-palette-2-light-1 u-container-layout u-valign-middle u-container-layout-2">
								<h2
									class="u-align-center u-text u-text-default u-text-palette-2-base u-text-2">LOGIN
								</h2>
								<div class="u-form u-form-1">
									<form action="https://forms.nicepagesrv.com/v2/form/process"
										class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form"
										style="padding: 0px;" source="email" name="form">
										<div class="u-form-email u-form-group">
											<label for="email-3b9a" class="u-label" wfd-invisible="true">email</label>
											<input type="email" placeholder="Enter a email"
												id="email-3b9a" name="email"
												class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-1"
												required="">
										</div>
										<div class="u-form-group u-form-group-2">
											<label for="text-e829" class="u-label">password</label> <input
												type="text" placeholder="Enter a password" id="text-e829"
												name="password"
												class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-2">
										</div>
										<div class="u-align-left u-form-group u-form-submit">
											<a href="#"
												class="u-active-white u-border-2 u-border-active-palette-2-light-1 u-border-hover-palette-2-light-1 u-border-palette-2-light-1 u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-light-1 u-radius-50 u-text-active-black u-text-body-alt-color u-text-hover-black u-btn-1">Submit</a>
											<input type="submit" value="submit"
												class="u-form-control-hidden" wfd-invisible="true">
										</div>
										<div class="u-form-send-message u-form-send-success"
											wfd-invisible="true">Thank you! Your message has been
											sent.</div>
										<div class="u-form-send-error u-form-send-message"
											wfd-invisible="true">Unable to send your message.
											Please fix errors then try again.</div>
										<input type="hidden" value="" name="recaptchaResponse"
											wfd-invisible="true"> <input type="hidden"
											name="formServices"
											value="50d0594d-1c60-31b9-19af-78b3c1587d79">
									</form>
								</div>
								<div class="u-social-icons u-spacing-10 u-social-icons-1">
									<a class="u-social-url" title="facebook" target="_blank"
										href="https://facebook.com/name"><span
										class="u-icon u-social-facebook u-social-icon u-icon-1"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xlink:href="#svg-ac49"></use></svg> <svg
												class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
												id="svg-ac49">
												<circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
												<path fill="#FFFFFF"
													d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
									</a> <a class="u-social-url" title="twitter" target="_blank"
										href="https://twitter.com/name"><span
										class="u-icon u-social-icon u-social-twitter u-icon-2"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112.2 112.2" style="">
												<use xlink:href="#svg-30a0"></use></svg> <svg
												class="u-svg-content" viewBox="0 0 112.2 112.2" x="0px"
												y="0px" id="svg-30a0">
												<circle fill="currentColor" cx="56" cy="56" r="55"></circle>
												<path fill="#FFFFFF"
													d="M63.9,51l22.4-24h-8.6L60.3,45.9L46.9,27H24l23.3,32.8L24,85h8.2L51,64.9L65.3,85H88L63.9,51z M55.3,60.2
l-3.7-5.1L35.7,33.1h8.1l12.3,17.2l3.7,5.1l16.6,23.4h-7.8L55.3,60.2z"></path></svg></span>
									</a> <a class="u-social-url" target="_blank" data-type="Instagram"
										title="Instagram" href=""><span
										class="u-icon u-social-icon u-social-instagram u-icon-3"><svg
												class="u-svg-link" preserveAspectRatio="xMidYMin slice"
												viewBox="0 0 112 112" style="">
												<use xlink:href="#svg-14ba"></use></svg> <svg
												class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
												id="svg-14ba">
												<circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
												<path fill="#FFFFFF"
													d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
      z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path>
												<path fill="#FFFFFF"
													d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path>
												<path fill="#FFFFFF"
													d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
      C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
      c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
									</a>
								</div>
								<p class="u-align-center u-text u-text-default u-text-3">
									<a
										class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
										data-href="${root }register">Register</a>
								</p>
								<p class="u-align-center u-text u-text-default u-text-4">
									<a
										class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
										data-href="${root }search_password">Search PassWord </a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section
		class="u-align-center u-clearfix u-container-align-center u-palette-2-light-3 u-section-3"
		id="carousel_29f6">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<h2
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-1">베스트
				글</h2>
			<p
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-2">당신의
				소녀에게 투표하세요</p>
			<div class="u-expanded-width u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-border-3 u-border-palette-2-light-1 u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
							<h3 class="u-align-center u-text u-text-3">일간 베스트</h3>
							<ol class="u-align-center u-text u-text-4">
								<a
									class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
									data-href="#">
									<li>Sample Item 1</li>
									<li>Sample Item 2</li>
									<li>Sample Item 3<br>
								</li>
								</a>
							</ol>
							<a href="#"
								class="u-align-center u-border-2 u-border-active-grey-50 u-border-hover-grey-50 u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-2"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction="">
								Inquire for rates</a>
						</div>
					</div>
					<div
						class="u-align-center u-border-3 u-border-palette-2-light-1 u-container-align-center u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-2">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
							<h3 class="u-align-center u-text u-text-5">주간 베스트</h3>
							<ol class="u-align-center u-text u-text-6">
								<a
									class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
									data-href="#">
									<li>Sample Item 1</li>
									<li>Sample Item 2</li>
									<li>Sample Item 3</li>
								</a>
							</ol>
							<a href="#"
								class="u-align-center u-border-2 u-border-active-grey-50 u-border-hover-grey-50 u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-4"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction="">
								Inquire for rates</a>
						</div>
					</div>
					<div
						class="u-align-center u-border-3 u-border-palette-2-light-1 u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-3">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
							<h3 class="u-align-center u-text u-text-7">월간 베스트</h3>
							<ol class="u-align-center u-text u-text-8">
								<a
									class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5"
									data-href="#">
									<li>Sample Item 1</li>
									<li>Sample Item 2</li>
									<li>Sample Item 3</li>
								</a>
							</ol>
							<a href="#"
								class="u-align-center u-border-2 u-border-active-grey-50 u-border-hover-grey-50 u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-6"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction=""> Learn
								More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section
		class="u-clearfix u-container-align-center-lg u-container-align-center-md u-container-align-center-xl u-container-align-center-xs u-section-4"
		id="carousel_bac1">
		<h2
			class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-sm u-text-default-xl u-text-1"
			data-animation-name="customAnimationIn"
			data-animation-duration="1500">아름다운 나눔나눔</h2>
		<p
			class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-sm u-text-default-xl u-text-2"
			data-animation-name="customAnimationIn"
			data-animation-duration="1500" data-animation-delay="500">나눔나눔</p>
		<div class="u-expanded-width u-layout-horizontal u-list u-list-1">
			<div class="u-repeater u-repeater-1">
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-1"
					data-image-width="425" data-image-height="283"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1">
						<div
							class="u-black u-container-align-left u-container-style u-expanded-width u-group u-radius u-shape-round u-group-1">
							<div
								class="u-container-layout u-valign-middle u-container-layout-2">
								<h3 class="u-align-left u-text u-text-default u-text-3"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">User
									Sign-In</h3>
								<p class="u-align-left u-text u-text-default u-text-4"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-2"
					data-image-width="425" data-image-height="303"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-3">
						<div
							class="u-black u-container-style u-expanded-width u-group u-radius u-shape-round u-group-2">
							<div
								class="u-container-layout u-valign-middle u-container-layout-4">
								<h3 class="u-align-left u-text u-text-default u-text-5"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">Photo
									Viewer</h3>
								<p class="u-align-left u-text u-text-default u-text-6"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-3"
					data-image-width="425" data-image-height="283"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-5">
						<div
							class="u-black u-container-style u-expanded-width u-group u-radius u-shape-round u-group-3">
							<div
								class="u-container-layout u-valign-middle u-container-layout-6">
								<h3 class="u-align-left u-text u-text-default u-text-7"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">Interactive
									Slider</h3>
								<p class="u-align-left u-text u-text-default u-text-8"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-4"
					data-image-width="425" data-image-height="283"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-7">
						<div
							class="u-black u-container-align-left u-container-style u-expanded-width u-group u-radius u-shape-round u-group-4">
							<div
								class="u-container-layout u-valign-middle u-container-layout-8">
								<h3 class="u-align-left u-text u-text-default u-text-9"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">Visual
									Display</h3>
								<p class="u-align-left u-text u-text-default u-text-10"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-5"
					data-image-width="319" data-image-height="425"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-9">
						<div
							class="u-black u-container-style u-expanded-width u-group u-radius u-shape-round u-group-5">
							<div
								class="u-container-layout u-valign-middle u-container-layout-10">
								<h3 class="u-align-left u-text u-text-default u-text-11"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">Login
									Interface</h3>
								<p class="u-align-left u-text u-text-default u-text-12"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
				<div
					class="u-container-style u-image u-image-round u-list-item u-radius u-repeater-item u-shading u-image-6"
					data-image-width="283" data-image-height="425"
					data-animation-name="customAnimationIn"
					data-animation-duration="1500" data-animation-delay="500">
					<div
						class="u-container-layout u-similar-container u-valign-bottom u-container-layout-11">
						<div
							class="u-black u-container-style u-expanded-width u-group u-radius u-shape-round u-group-6">
							<div
								class="u-container-layout u-valign-middle u-container-layout-12">
								<h3 class="u-align-left u-text u-text-default u-text-13"
									data-animation-name="customAnimationIn"
									data-animation-duration="1750" data-animation-delay="500">Image
									Slideshow</h3>
								<p class="u-align-left u-text u-text-default u-text-14"
									data-animation-name="customAnimationIn"
									data-animation-duration="1500" data-animation-delay="500">
									Ut enim ad minim veniam</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a
				class="u-absolute-vcenter u-gallery-nav u-gallery-nav-prev u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-white u-gallery-nav-1"
				href="#" role="button"> <span aria-hidden="true"> <svg
						viewBox="0 0 451.847 451.847">
						<path
							d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
			</span> <span class="sr-only"> <svg viewBox="0 0 451.847 451.847">
						<path
							d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
			</span>
			</a> <a
				class="u-absolute-vcenter u-gallery-nav u-gallery-nav-next u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-white u-gallery-nav-2"
				href="#" role="button"> <span aria-hidden="true"> <svg
						viewBox="0 0 451.846 451.847">
						<path
							d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
			</span> <span class="sr-only"> <svg viewBox="0 0 451.846 451.847">
						<path
							d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
			</span>
			</a>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>