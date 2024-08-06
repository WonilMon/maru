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
	content="Change Photo, Update Profile Picture, Personal Info, Customize Page, Customize Profile Settings, Edit Settings, Update Picture, Personalize Profile Page, Modify Account Details, Edit Profile, Account Settings, Adjust Profile Preferences, Personal Info">
<meta name="description" content="">
<title>MyPage</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/MyPage.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.14.4, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:100,200,300,400,500,600,700,800,900">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Noto+Sans+JP:100,200,300,400,500,600,700,800,900">






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
<meta name="twitter:title" content="MyPage">
<meta name="twitter:description" content="Site1">
<meta property="og:title" content="MyPage">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="ja">


	<!-- 상단 -->
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section
		class="u-align-center u-clearfix u-palette-2-light-3 u-section-1"
		id="carousel_c2f0">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">My
				Page</h2>
			<div
				class="custom-expanded data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-row">
						<div class="u-size-31">
							<div class="u-layout-col">
								<div
									class="u-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-1">
									<div
										class="u-container-layout u-valign-middle u-container-layout-1"
										src="">
										<img class="u-expanded-width u-image u-image-1"
											src="${root }images/photo-1625241152315-4a698f74ceb7.jpeg"
											data-image-width="425" data-image-height="425">
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
									<div class="u-container-layout u-container-layout-2">
										<div id="carousel-9d7b" data-interval="5000"
											data-u-ride="carousel"
											class="custom-expanded u-carousel u-slider u-slider-1">
											<ol
												class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
												<li data-u-target="#carousel-9d7b"
													class="u-active u-grey-30 u-shape-circle"
													data-u-slide-to="0" style="height: 10px; width: 10px;"></li>
												<li data-u-target="#carousel-9d7b"
													class="u-grey-30 u-shape-circle" data-u-slide-to="1"
													style="height: 10px; width: 10px;"></li>
												<li data-u-target="#carousel-9d7b"
													class="u-grey-30 u-shape-circle" data-u-slide-to="2"
													style="height: 10px; width: 10px;"></li>
											</ol>
											<div class="u-carousel-inner" role="listbox">
												<div
													class="custom-expanded u-active u-align-center u-carousel-item u-container-style u-slide u-carousel-item-1">
													<div class="u-container-layout u-container-layout-3">
														<div
															class="u-align-center u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-1">
															<div class="u-gallery-inner u-gallery-inner-1">
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="283"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1562903646-1af49e46136a?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MTh8MzY3ODkwMnx8fHx8Mnx8MTcyMjMwNTg1Nnw&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div class="u-over-slide u-shading u-over-slide-1"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="340"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1614701466929-766271250d48?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258NHwzNjc4OTAyfHx8fHwyfHwxNzIyMzA1ODU2fA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div class="u-over-slide u-shading u-over-slide-2"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="296"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1586152887899-14db2e3659ef?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MnwzNjc4OTAyfHx8fHwyfHwxNzIyMzA1ODU2fA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div class="u-over-slide u-shading u-over-slide-3"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div
													class="u-align-center u-carousel-item u-container-align-center u-container-style u-slide u-carousel-item-2">
													<div
														class="u-container-layout u-valign-middle u-container-layout-4">
														<div
															class="custom-expanded u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-2">
															<div class="u-gallery-inner u-gallery-inner-2">
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="283"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1592085550275-5b37684de74f?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MTl8MzY3ODkwMnx8fHx8Mnx8MTcyMjMwNTg1Nnw&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-4"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="304"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1669151030267-7e7f82c3b2a2?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258M3wzNjc4OTAyfHx8fHwyfHwxNzIyMzA1ODU2fA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-5"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="283"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1580047883831-5db03837b0b3?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MTN8MzY3ODkwMnx8fHx8Mnx8MTcyMjMwNTg1Nnw&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-6"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div
													class="u-align-center u-carousel-item u-container-align-center u-container-style u-slide">
													<div
														class="u-container-layout u-valign-middle u-container-layout-5">
														<div
															class="custom-expanded u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-3">
															<div class="u-gallery-inner u-gallery-inner-3">
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="283"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1592085550275-5b37684de74f?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MTl8MzY3ODkwMnx8fHx8Mnx8MTcyMjMwNTg1Nnw&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-7"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="304"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1669151030267-7e7f82c3b2a2?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258M3wzNjc4OTAyfHx8fHwyfHwxNzIyMzA1ODU2fA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-8"></div>
																</div>
																<div class="u-effect-fade u-gallery-item">
																	<div class="u-back-slide" data-image-width="283"
																		data-image-height="425">
																		<img class="u-back-image u-expanded"
																			src="https://images.unsplash.com/photo-1580047883831-5db03837b0b3?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w1NzgzNjl8MHwxfGNvbGxlY3Rpb258MTN8MzY3ODkwMnx8fHx8Mnx8MTcyMjMwNTg1Nnw&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080">
																	</div>
																	<div
																		class="u-container-align-center u-over-slide u-shading u-valign-middle u-over-slide-9"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<a
												class="u-carousel-control u-carousel-control-prev u-hover-palette-2-light-1 u-palette-5-dark-3 u-shape-circle u-spacing-10 u-text-body-alt-color u-carousel-control-1"
												href="#carousel-9d7b" role="button" data-u-slide="prev">
												<span aria-hidden="true"> <svg
														viewBox="0 0 477.175 477.175">
														<path
															d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
		c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
											</span> <span class="sr-only"> <svg
														viewBox="0 0 477.175 477.175">
														<path
															d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
		c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
											</span>
											</a> <a
												class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-hover-palette-2-light-1 u-palette-5-dark-3 u-shape-circle u-spacing-10 u-text-body-alt-color u-carousel-control-2"
												href="#carousel-9d7b" role="button" data-u-slide="next">
												<span aria-hidden="true"> <svg
														viewBox="0 0 477.175 477.175">
														<path
															d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
		c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
											</span> <span class="sr-only"> <svg
														viewBox="0 0 477.175 477.175">
														<path
															d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
		c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
											</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="u-size-29">
							<div class="u-layout-col">
								<div
									class="u-align-left u-container-align-center u-container-style u-layout-cell u-shape-rectangle u-size-60 u-layout-cell-3">
									<div class="u-container-layout u-container-layout-6">
										<h2 class="u-align-center u-text u-text-2">Name님의 프로필</h2>
										<p class="u-align-center u-text u-text-3">여기 뭐 적어야 이쁠까요</p>
										<a href="#"
											class="u-align-center u-border-2 u-border-active-black u-border-hover-black u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-1"
											data-animation-name="" data-animation-duration="0"
											data-animation-delay="0" data-animation-direction="">Change
											Icon </a> <a href="${root }user/shop"
											class="u-align-center u-border-2 u-border-active-black u-border-hover-black u-border-palette-2-light-1 u-btn u-btn-round u-button-style u-custom-font u-font-montserrat u-none u-radius-50 u-text-body-color u-btn-2"
											data-animation-name="" data-animation-duration="0"
											data-animation-delay="0" data-animation-direction="">Shop
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
	<section class="u-clearfix u-container-align-center u-section-2"
		id="sec-974c">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div
				class="u-align-center u-container-style u-expanded-width-xs u-group u-shape-rectangle u-group-1">
				<div class="u-container-layout u-valign-middle u-container-layout-1">
					<h1 class="u-text u-text-default u-text-1">Change</h1>
					<p class="u-text u-text-grey-50 u-text-2">
						<a
							class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
							data-href="maru.suggestion">お問い合わせ：maru.suggestion</a>
					</p>
					<div class="u-form u-form-1">
						<form action="https://forms.nicepagesrv.com/v2/form/process"
							class="u-clearfix u-form-spacing-17 u-form-vertical u-inner-form"
							style="padding: 50px;" source="email" name="form">
							<div
								class="u-form-group u-form-select u-label-none u-form-group-1">
								<label class="u-label u-label-1">Dropdown</label>
								<div class="u-form-select-wrapper">
									<select id="select-8892" name="select"
										class="u-input u-input-rectangle">
										<option value="부모의 성별" data-calc="">부모의 성별</option>
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
								<label class="u-label u-label-2">First Name</label> <input
									type="text" placeholder="Enter your First Name" id="name-4a43"
									name="name" class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-form-name u-label-none u-form-group-3">
								<label class="u-label u-label-3">Last Name</label> <input
									type="text" placeholder="Enter your Last Name" id="name-4a43"
									name="name-2" class="u-input u-input-rectangle" required="">
							</div>
							<div class="u-form-group u-label-none u-form-group-4">
								<label class="u-label u-label-4">Input</label> <input
									type="text" placeholder="NickName" id="text-f1c6" name="text"
									class="u-input u-input-rectangle">
							</div>
							<div
								class="u-form-email u-form-group u-label-none u-form-group-5">
								<label class="u-label u-label-5">Email</label> <input
									type="email" placeholder="Enter a valid email address"
									id="email-346f" name="email" class="u-input u-input-rectangle"
									required="">
							</div>
							<div class="u-form-group u-label-none u-form-group-6">
								<label class="u-label u-label-6">Input</label> <input
									type="text" id="text-44b4" name="text-2"
									class="u-input u-input-rectangle" placeholder="Password">
							</div>
							<div class="u-form-date u-form-group u-label-none u-form-group-7">
								<label class="u-label u-label-7">Date</label> <input type="text"
									placeholder="MM/DD/YYYY" id="date-df3b" name="date"
									class="u-input u-input-rectangle" required=""
									data-date-format="mm/dd/yyyy">
							</div>
							<div
								class="u-form-group u-form-phone u-label-none u-form-group-8">
								<label class="u-label u-label-8">Phone</label> <input type="tel"
									placeholder="Enter your phone (e.g. +14155552675)"
									id="phone-b84a" name="phone" class="u-input u-input-rectangle"
									required="">
							</div>
							<div
								class="u-border-3 u-border-grey-dark-1 u-form-group u-form-line u-line u-line-horizontal u-line-1"></div>
							<p class="u-form-group u-form-text u-text u-text-3">Sample
								text. Click to select the Text Element.</p>
							<div
								class="u-form-checkbox u-form-group u-label-none u-form-group-11">
								<input type="checkbox" id="checkbox-9eb7" name="checkbox"
									value="On" class="u-field-input"> <label
									class="u-field-label">Checkbox</label>
							</div>
							<div
								class="u-align-left u-form-group u-form-submit u-form-group-12">
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