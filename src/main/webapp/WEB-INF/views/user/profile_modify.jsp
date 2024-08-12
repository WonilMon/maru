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
<meta name="keywords" content="My Profile​, Change profile​">
<meta name="description" content="">
<title>profile_modify</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/profile_modify.css" media="screen">
<script class="u-script" type="text/javascript" src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root }js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
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
<meta name="twitter:title" content="profile_modify">
<meta name="twitter:description" content="">
<meta property="og:title" content="profile_modify">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">


	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-2"
		id="sec-8d10">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-subtitle u-text u-text-default u-text-1">My
				Profile</h2>
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-radius u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-row">
						<div
							class="u-size-29-lg u-size-29-sm u-size-29-xl u-size-29-xs u-size-60-md">
							<div class="u-layout-col">
								<div class="u-size-60">
									<div class="u-layout-row">
										<div
											class="u-container-align-center u-container-style u-layout-cell u-size-60 u-layout-cell-1">
											<div
												class="u-container-layout u-valign-middle u-container-layout-1">
												<div
													class="custom-expanded u-carousel u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1"
													data-interval="5000" data-u-ride="carousel"
													id="carousel-4e64">
													<ol
														class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
														<li data-u-target="#carousel-4e64" data-u-slide-to="0"
															class="u-active u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
														<li data-u-target="#carousel-4e64" data-u-slide-to="1"
															class="u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
													</ol>
													<div class="u-carousel-inner u-gallery-inner"
														role="listbox">
														<div
															class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
															<div class="u-back-slide">
																<img class="u-back-image u-expanded"
																	src="${root }images/90fc53c9.svg">
															</div>
															<div class="u-over-slide u-over-slide-1"></div>
														</div>
														<div
															class="u-carousel-item u-gallery-item u-carousel-item-2">
															<div class="u-back-slide">
																<img class="u-back-image u-expanded"
																	src="${root }images/90fc53c9.svg">
															</div>
															<div class="u-over-slide u-over-slide-2"></div>
														</div>
													</div>
													<a
														class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
														href="#carousel-4e64" role="button" data-u-slide="prev">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.847 451.847">
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
														href="#carousel-4e64" role="button" data-u-slide="next">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.846 451.847">
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
									</div>
								</div>
							</div>
						</div>
						<div
							class="u-size-31-lg u-size-31-sm u-size-31-xl u-size-31-xs u-size-60-md">
							<div class="u-layout-col">
								<div
									class="u-container-style u-layout-cell u-size-60 u-layout-cell-2">
									<div class="u-container-layout u-container-layout-2">
										<h2 class="u-align-center u-subtitle u-text u-text-2">다이키
										</h2>
										<p class="u-align-center u-text u-text-3">상태 메시지</p>
										<span class="u-align-center u-file-icon u-icon u-icon-1"><img
											src="${root }images/294032.png" alt=""></span> <a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-1">change
											icon </a> <a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-2">change
											image </a> <a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-3">chat_log
										</a> <a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-4">delete
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
	<section
		class="u-align-center u-clearfix u-container-align-center u-gradient u-section-3"
		id="sec-7f48" data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">Register</h2>
			<p class="u-align-center u-text u-text-default u-text-2">
				<a
					class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
					data-href="#">문의사항 : www.maru.faq.com </a>
			</p>
			<div class="u-form u-radius-20 u-white u-form-1">
				<form action="https://forms.nicepagesrv.com/v2/form/process"
					class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form"
					source="email" name="form" style="padding: 28px;">
					<div class="u-form-group u-form-name">
						<label for="name-4c18" class="u-label">NickName</label> <input
							type="text" id="name-4c18" name="nickname"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="" placeholder="입력">
					</div>
					<div class="u-form-email u-form-group">
						<label for="email-4c18" class="u-label">Email</label> <input
							type="email" placeholder="입력" id="email-4c18" name="email"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="">
					</div>
					<div class="u-form-group u-form-group-3">
						<label for="text-91a6" class="u-label">Password</label> <input
							type="text" placeholder="입력" id="text-91a6" name="password"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="required">
					</div>
					<div class="u-form-date u-form-group u-form-group-4">
						<label for="date-0a97" class="u-label">Date</label> <input
							type="text" placeholder="MM/DD/YYYY" id="date-0a97" name="date"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="" data-date-format="mm/dd/yyyy">
					</div>
					<div class="u-form-group u-form-select u-form-group-5">
						<label for="select-85ae" class="u-label">gender of parents</label>
						<div class="u-form-select-wrapper">
							<select id="select-85ae" name="select"
								class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
								required="required">
								<option value="남" data-calc="">남</option>
								<option value="여" data-calc="">여</option>
							</select>
							<svg class="u-caret u-caret-svg" version="1.1" id="Layer_1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								width="16px" height="16px" viewBox="0 0 16 16"
								style="fill: currentColor;" xml:space="preserve">
								<polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
						</div>
					</div>
					<div class="u-form-agree u-form-group u-form-group-6">
						<label class="u-field-label"></label> <input type="checkbox"
							id="agree-a472" name="agree"
							class="u-agree-checkbox u-field-input" required=""> <label
							for="agree-a472"
							class="u-agree-label u-block-4c4f-16 u-field-label" style="">I
							accept the <a href="#">Terms of Service</a>
						</label>
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
			<span class="u-align-center u-file-icon u-icon u-icon-1"><img
				src="${root }images/3699459.png" alt=""></span><span
				class="u-align-center u-file-icon u-icon u-icon-2"><img
				src="${root }images/3699459.png" alt=""></span>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
	
</body>
</html>