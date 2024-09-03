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
	src="${root }js/jquery.js"></script>
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
<style>
/* 프로필이랑 뉴스 스타일입니다*/
.u-profile-section {
	background-color: #F8EDEB;
	border-radius: 10px;
	padding: 10px; /* 전체 영역의 패딩 감소 */
	max-width: 500px; /* 전체 영역의 가로 길이 줄이기 */
	width: 100%;
	height: 95%;
	margin: 0 auto;
	text-align: center;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	dispay: flex;
	flex-direction: column;
	justify-content: space-between;
}

.higher-container {
	flex: 1;
	display: flex;
	flex-direction: row;
	align-items: center;
}

.left-section {
	flex: 1; /* 비율 */
	display: flex;
	justify-content: center;
	align-items: center;
}

.right-section {
	flex: 2;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
	padding-left: 20px;
}

.u-profile-header {
	margin-top: 20px; /* 헤더와 버튼 사이의 여백을 조금 줄이기 */
	margin-bottom: 20px; /* 헤더와 버튼 사이의 여백을 조금 줄이기 */
	text-align: center;
}

.u-profile-picture {
	width: 200px; /* 프로필 사진 크기 더 증가 */
	height: 200px;
	border-radius: 50%;
	object-fit: cover;
	border: 4px solid #FCD5CE;
	margin-bottom: 12px;
}

.u-username {
	color: #000000; /* 사용자명 색상 진하게 */
	font-size: 28px; /* 사용자명 크기 더 증가 */
	margin: 8px 0;
}

.u-status-message {
	color: #000000; /* 사용자명 색상 진하게 */
	font-size: 28px; /* 사용자명 크기 더 증가 */
	margin: 6px 0;
}

.u-status-message {
	color: #000000; /* 상태 메시지 색상 진하게 */
	font-size: 18px; /* 상태 메시지 크기 더 증가 */
	margin: 6px 0;
}

.u-profile-actions {
	margin-top: 15px; /* 버튼과 프로필 헤더 사이의 여백 추가 */
	display: flex;
	gap: 10px;
}

.u-button {
	display: inline-block;
	padding: 12px 12px; /* 버튼 패딩 더 증가 */
	background-color: #FCD5CE;
	color: #000000;
	text-decoration: none;
	border-radius: 8px;
	font-size: 20px; /* 버튼 글자 크기 더 증가 */
	transition: background-color 0.3s ease, color 0.3s ease;
}

.u-button:hover {
	background-color: #FAE1DD;
	color: #FCD5CE;
}

.lower-section {
	height: 300px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	flex: 1;
	border: 4px solid #FCD5CE;
	border-radius: 8px;
	position: relative; /* 오버레이를 위해 position 설정 */
	overflow: hidden; /* 오버레이가 영역을 벗어나지 않도록 설정 */
	background-repeat: no-repeat;
}

.lower-section::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(255, 255, 255, 0.7); /* 투명도 조절 (0.0 - 1.0) */
	z-index: 1; /* 오버레이가 배경 이미지 위에 위치 */
}

.lower-section p {
	position: relative;
	z-index: 2; /* 텍스트가 오버레이 위에 표시되도록 설정 */
	color: black; /* 텍스트 색상 설정 */
}

.alert.alert-danger {
	background-color: #FCD5CE; /* 버튼의 배경색 */
	color: #000000; /* 글자 색상 */
	border: 2px solid #FAE1DD; /* 테두리 색상과 두께 */
	border-radius: 8px; /* 부드러운 모서리 */
	padding: 12px 20px; /* 버튼의 패딩 */
	font-size: 16px; /* 글자 크기 */
	font-weight: bold; /* 글자 굵기 */
	text-align: center; /* 텍스트 가운데 정렬 */
	text-decoration: none; /* 텍스트 밑줄 제거 */
	display: inline-block; /* 버튼의 인라인 블록 설정 */
	cursor: pointer; /* 마우스를 올렸을 때 포인터 커서 */
	transition: background-color 0.3s ease, border-color 0.3s ease;
	/* 호버 시 전환 효과 */
}
/* 스크롤 박스 스타일 */
.news-container {
	width: 70%;
	margin: 30px auto;
	background-color: #FCD5CE;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	overflow-y: scroll;
	max-height: 600px;
}

/* 개별 뉴스 항목 스타일 */
.news-item {
	padding: 15px;
	border-bottom: 1px solid white;
}

.news-item:last-child {
	border-bottom: none;
}

/* 뉴스 제목 */
.news-title {
	font-size: 18px;
	font-weight: bold;
	color: black;
}

/* 뉴스 설명 */
.news-description {
	font-size: 11px;
	color: black;
}

/* 링크 스타일 */
.news-link {
	display: block;
	margin-top: 10px;
	font-size: 12px;
	color: black;
	text-decoration: none;
}

.news-link:hover {
	text-decoration: underline;
}

.alert.alert-danger {
	background-color: #FCD5CE; /* 배경색을 #FCD5CE로 설정 */
	border: 2px solid #F08080; /* 보더 색상을 조금 더 어두운 #F08080 계열로 설정 */
	color: black; /* 기본 글씨 색은 검정으로 설정 */
	width: 100%; /* 너비를 100%로 설정 */
	padding: 15px; /* 적절한 패딩 추가 */
	border-radius: 5px; /* 보더 모서리를 둥글게 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 약간의 그림자 추가 */
}

.alert.alert-danger strong {
	color: red; /* 강조된 텍스트는 빨간색으로 설정 */
}

#googleLoginButton {
	border: none;
	background-color: transparent;
	cursor: pointer;
	padding: 0;
}

.google-icons {
	display: flex;
	justify-content: center; /* 수평 중앙 정렬 */
	align-items: center; /* 수직 중앙 정렬 */
	height: 50px; /* 컨테이너 높이 설정 */
	width: 100%; /* 부모 요소의 전체 너비 사용 */
	margin-top: 10px; /* 필요에 따라 위쪽 여백 추가 */
}

.social-login-button {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: nowrap; /* 버튼 내부 요소가 줄바꿈 없이 한 줄로 유지되도록 설정 */
	background-color: white;
	border: 1px solid #cccccc;
	border-radius: 25px;
	padding: 10px 20px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	cursor: pointer;
	width: auto;
	max-width: 300px;
	height: 40px;
	box-sizing: border-box;
}

.social-login-button img {
	width: 30px; /* 이미지 크기 조정 */
	height: 30px;
	margin-right: 5px; /* 이미지와 텍스트 사이 여백 */
}

.social-login-button span {
	color: #555555;
	white-space: nowrap; /* 텍스트가 줄 바꿈 없이 한 줄로 유지되도록 설정 */
}

.hidden-input {
	display: none;
}

.fixed-button {
	position: fixed;
	top: 30%;
	left: 0; /* 화면 왼쪽에 고정 */
	transform: translateY(-50%); /* 버튼을 정확히 가운데로 위치시키기 위해 */
	background-color: #fec5bb; /* 버튼의 배경색 */
	color: white; /* 버튼 텍스트 색상 */
	padding: 10px 20px; /* 버튼의 패딩 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서 변경 */
	z-index: 1000; /* 다른 요소 위에 버튼이 표시되도록 설정 */
	border-radius: 20px; /* 버튼의 오른쪽 모서리를 둥글게 */
}

.scroll-to-top {
	position: fixed;
	bottom: 20px; /* 화면의 하단에서 20px 위치 */
	right: 20px; /* 화면의 오른쪽에서 20px 위치 */
	width: 50px; /* 버튼의 너비 */
	height: 50px; /* 버튼의 높이 */
	background-image: url('${root}images/UP.png'); /* 이미지 경로 */
	background-size: cover; /* 이미지가 버튼 전체를 덮도록 설정 */
	background-repeat: no-repeat; /* 이미지 반복 방지 */
	background-color: rgba(0, 0, 0, 0);
	border: none; /* 버튼 테두리 없음 */
	border-radius: 5px; /* 버튼 모서리 둥글게 */
	cursor: pointer; /* 클릭 시 커서 포인터 */
	z-index: 1000; /* 다른 요소들 위에 위치 */
	display: none; /* 기본적으로 버튼 숨기기 */
}

.scroll-to-top.show {
	display: block; /* 페이지 스크롤 시 버튼 표시 */
}

#translation-container {
	max-height: 200px; /* 최대 높이를 설정하여 제한 */
	overflow-y: hidden; /* 기본적으로 스크롤바를 숨김 */
	position: relative;
}

#translation-container.expanded {
	overflow-y: auto; /* 더보기를 누르면 스크롤바 활성화 */
}

#translation-result {
	white-space: pre-wrap; /* 줄바꿈을 유지 */
}
</style>
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_main.jsp"></c:import>

	<section
		class="u-clearfix u-container-align-center u-white u-section-2"
		id="carousel_88b7">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">


			<button class="fixed-button"
				onclick="location.href='${root}spinRoulette'">룰렛 돌리기</button>
			<button class="scroll-to-top" id="scrollToTopBtn"></button>

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
							<c:choose>
								<c:when test="${loginUserBean.userLogin == true }">
									<div class="u-profile-section">
										<div class="higher-container">
											<div class="left-section">
												<div class="u-profile-header">
													<c:choose>
														<c:when test="${img != null }">
															<img id="profileImage"
																src="${root}getProfileImage/${img}"
																class="u-profile-picture" alt="프로필 이미지">
														</c:when>
														<c:otherwise>
															<img id="profileImage" src="${root}images/90fc53c9.svg"
																class="u-profile-picture" alt="프로필 이미지">
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="right-section">
												<div class="u-profile-header">
													<h2 class="u-username">${loginUserBean.user_nickname }</h2>
													<p class="u-status-message">${loginUserBean.user_statustext }</p>
													<div class="u-profile-actions gap-2">
														<a
															href="${root }user/profile_modify?user_idx=${loginUserBean.user_idx }"
															class="u-button">My Page</a> <a
															href="${root }user/logout" class="u-button">logout</a>
													</div>
												</div>
											</div>
										</div>
										<div class="lower-section" id="zodiac-section">
											<p>${loginUserBean.user_zodiac }의오늘의운세</p>
											<div id="translation-container">
												<p id="horoscope-result">운세를 불러오는 중...</p>
											</div>
											<%-- 
											<div id="translation-container">
												<p id="translation-result">${loginUserBean.user_zodiac }의
													오늘의운세 <br /> 운세를 불러오는 중...
												</p>
											</div>
 --%>
										</div>
									</div>

								</c:when>
								<c:otherwise>

									<div
										class="u-border-3 u-border-palette-2-light-1 u-container-layout u-valign-middle u-container-layout-2"
										tyle="display: flex; align-items: center;">
										<h2
											class="u-align-center u-text u-text-default u-text-palette-2-base u-text-2">LOGIN</h2>
										<div class="u-form u-form-1">

											<c:if test="${fail == true }">
												<div class="alert alert-danger">
													<h3>ログインに失敗しました</h3>
													<p>入力内容をお確かめの上、再度お試しください</p>
												</div>
											</c:if>

											<form:form modelAttribute="tempLoginUserBean"
												action="${root }user/login_pro" method="post"
												class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form"
												style="padding: 0px;">
												<div class="u-form-email u-form-group">
													<form:label path="user_email" class="u-label"
														wfd-invisible="true">email</form:label>
													<form:input type="email" placeholder="メールアドレス"
														path="user_email"
														class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-1"
														required="" />
													<form:errors path="user_email" style="color:red"></form:errors>
												</div>
												<div class="u-form-group u-form-group-2">
													<form:label path="user_pass" class="u-label">password</form:label>
													<form:password placeholder="パスワード" path="user_pass"
														class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-2"
														required="" />
													<form:errors path="user_pass" style="color:red"></form:errors>
												</div>

												<div class="u-align-left u-form-group u-form-submit">
													<button type="submit"
														class="u-active-white u-border-2 u-border-active-palette-2-light-1 
						 u-border-hover-palette-2-light-1 u-border-palette-2-light-1 u-btn u-btn-round u-btn-submit
						 u-button-style u-hover-white u-palette-2-light-1 u-radius-50 u-text-active-black 
						 u-text-body-alt-color u-text-hover-black u-btn-1">ログイン</button>
												</div>

											</form:form>

										</div>
										<div class="u-social-icons u-spacing-10 u-social-icons-1"
											style="display: flex; gap: 10px;">
											<div id="lineButtonDiv" onclick="lineLogin()"
												class="social-login-button">
												<img id="lineLoginButton" src="${root}images/line_icon.png"
													alt="Line Logo"> <span>LINE 계정으로 로그인</span>
											</div>
										</div>
										<div class="google-icons">
											<div id="buttonDiv"></div>
										</div>


										<p class="u-align-center u-text u-text-default u-text-3">
											<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
												data-href="${root }user/register">アカウントを作成</a>
										</p>
										<p class="u-align-center u-text u-text-default u-text-4">
											<a
												class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
												data-href="${root }user/search_password">パスワードをお忘れの場合 </a>
										</p>
									</div>

								</c:otherwise>
							</c:choose>
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
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-1">投稿ランキング
			</h2>
			<p
				class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-2">당신의
				소녀에게 투표하세요</p>
			<div class="u-expanded-width u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-border-3 u-border-palette-2-light-1 u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
							<h3 class="u-align-center u-text u-text-3">日間ランキング</h3>
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
							<h3 class="u-align-center u-text u-text-5">週間ランキング</h3>
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
							<h3 class="u-align-center u-text u-text-7">月間ランキング</h3>
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
			data-animation-duration="1500">今日のおすそわけ</h2>
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
	<section
		class="u-align-center u-clearfix u-container-align-center u-palette-2-light-3 u-section-3"
		id="carousel_29f6">
		<h2
			class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-sm u-text-default-xl u-text-1"
			data-animation-name="customAnimationIn"
			data-animation-duration="1500">오늘의 건강뉴스</h2>
		<div class="news-container">
			<c:forEach var="article" items="${articles}">
				<div class="news-item">
					<div class="news-title">${article.title}</div>
					<div class="news-description">${article.description}</div>
					<a class="news-link" href="${article.url}" target="_blank">Read
						more</a>
				</div>
			</c:forEach>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
	<!-- 구글 API -->
	<script src="https://accounts.google.com/gsi/client" async defer></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function handleCredentialResponse(response) {
			const responsePayload = parseJwt(response.credential);
			console.log("ID: " + responsePayload.sub);
			console.log('Full Name: ' + responsePayload.name);
			console.log('Given Name: ' + responsePayload.given_name);
			console.log('Family Name: ' + responsePayload.family_name);
			console.log("Image URL: " + responsePayload.picture);
			console.log("Email: " + responsePayload.email);

			$
					.ajax({
						type : "POST",
						url : "${root}user/google",
						data : JSON.stringify({
							api_email : responsePayload.email
						}),
						contentType : "application/json",
						success : function(response) {
							if (response.success) {
								window.location.href = "${root}main";
							} else {
								window.location.href = "${root}user/register?api_email="
										+ encodeURIComponent(responsePayload.email);
							}
						},
						error : function(error) {
							console.log("Error sending email to the server:",
									error);
						}
					});
		}

		function parseJwt(token) {
			var base64Url = token.split('.')[1];
			var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
			var jsonPayload = decodeURIComponent(atob(base64).split('').map(
					function(c) {
						return '%'
								+ ('00' + c.charCodeAt(0).toString(16))
										.slice(-2);
					}).join(''));

			return JSON.parse(jsonPayload);
		};

		window.onload = function() {
			google.accounts.id
					.initialize({
						client_id : "984358048061-jn1296ctnkm3i82irasvhii7pc0br6q7.apps.googleusercontent.com",
						callback : handleCredentialResponse
					});

			google.accounts.id.renderButton(document
					.getElementById("buttonDiv"), {
				theme : "outline",
				shape : "pill",
				text : ""
			});

			google.accounts.id.prompt();

		};
	</script>

	<!-- 라인 API -->
	<script>
		document.getElementById("lineLoginButton").onclick = function() {
			const clientId = "2006071190"; // 클라이언트 ID
			const redirectUri = encodeURIComponent("http://localhost:8078/Maru/user/line"); // 리디렉션 URI
			const state = "RANDOM_STRING"; // CSRF 방지용 상태 값
			const scope = "profile%20openid%20email"; // 요청할 권한에 email 추가

			const lineLoginUrl = "https://access.line.me/oauth2/v2.1/authorize?response_type=code&client_id="
					+ clientId
					+ "&redirect_uri="
					+ redirectUri
					+ "&state="
					+ state + "&scope=" + scope;

			window.location.href = lineLoginUrl;
		};
	</script>


	<!-- 강제 제출 -->
	<script>
		$(document).ready(
				function() {
					$("button[type='submit']").off("click").on("click",
							function(event) {

								event.stopImmediatePropagation();

								$(this).closest("form").off("submit").submit();
							});
				});
	</script>

	<!-- 별자리 운세 배경지정 -->
	<script>
		// loginUserBean.user_zodiac 값을 가져옴
		const userZodiac = "${loginUserBean.user_zodiac}";

		// lower-section 요소를 가져옴
		const lowerSection = document.getElementById('zodiac-section');

		// user_zodiac 값에 따라 배경 이미지를 설정
		switch (userZodiac) {
		case '양자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/양자리.png')";
			break;
		case '황소자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/황소자리.png')";
			break;
		case '쌍둥이자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/쌍둥이자리.png')";
			break;
		case '게자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/게자리.png')";
			break;
		case '사자자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/사자자리.png')";
			break;
		case '처녀자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/처녀자리.png')";
			break;
		case '천칭자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/천칭자리.png')";
			break;
		case '전갈자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/전갈자리.png')";
			break;
		case '사수자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/사수자리.png')";
			break;
		case '염소자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/염소자리.png')";
			break;
		case '물병자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/물병자리.png')";
			break;
		case '물고기자리':
			lowerSection.style.backgroundImage = "url('${root}images/zodiac/물고기자리.png')";
			break;

		default:
			lowerSection.style.backgroundImage = "url('${root}images/90fc53c9.svg')";
		}

		// 공통 스타일 설정 (배경 크기와 위치)
		lowerSection.style.backgroundSize = "contain";
		lowerSection.style.backgroundPosition = "center";
	</script>

	<!-- 별자리 별 운세 가져오기  -->	
	<script>
        $(document).ready(function() {
            // 사용자 별자리와 날짜를 설정합니다.
            const userZodiac = "${loginUserBean.user_zodiac}";
            const zodiacMap = {
                "양자리": "aries",
                "황소자리": "taurus",
                "쌍둥이자리": "gemini",
                "게자리": "cancer",
                "사자자리": "leo",
                "처녀자리": "virgo",
                "천칭자리": "libra",
                "전갈자리": "scorpio",
                "사수자리": "sagittarius",
                "염소자리": "capricorn",
                "물병자리": "aquarius",
                "물고기자리": "pisces",
                "おひつじ座": "aries",
                "おうし座": "taurus",
                "ふたご座": "gemini",
                "かに座": "cancer",
                "しし座": "leo",
                "おとめ座": "virgo",
                "てんびん座": "libra",
                "さそり座": "scorpio",
                "いて座": "sagittarius",
                "やぎ座": "capricorn",
                "みずがめ座": "aquarius",
                "うお座": "pisces"
            };

            // 사용자의 별자리를 영어로 변환
            const zodiacInEnglish = zodiacMap[userZodiac];

			const url = "https://best-daily-astrology-and-horoscope-api.p.rapidapi.com/api/Detailed-Horoscope/?zodiacSign=" + zodiacInEnglish;
            
            if (zodiacInEnglish) {
            	
                const settings = {
                    async: true,
                    crossDomain: true,
                    url: url,
                    method: 'GET',
                    headers: {
                        'x-rapidapi-key': 'a7e3973170mshed5dc83b245df4fp127dcfjsna7507577f0bd',
                        /* 발표전에는 key 새로 발급받아서 쓰기 240903 yelim */
                        'x-rapidapi-host': 'best-daily-astrology-and-horoscope-api.p.rapidapi.com'
                    }
                };
                
                $.ajax(settings).done(function(response) {
                    const horoscopeText = response.prediction;

                    //Translate API를 사용하여 일본어로 번역
                    $.ajax({
                        url: 'https://translation.googleapis.com/language/translate/v2',
                        method: 'POST',
                        data: {
                            q: horoscopeText,
                            target: 'ja', // 일본어
                            key: 'AIzaSyDyaS4V_2nK7uAFew0NSReWeoXcVhrFfrc'
                        },
                        success: function(translationResponse) {
                            const translatedText = translationResponse.data.translations[0].translatedText;
                            
                            const maxLength = 50;
                            
                       		 // 텍스트를 잘라내기
                            let truncatedText = translatedText.substring(0, maxLength);

                            // 더보기 기능을 위한 표시
                            if (translatedText.length > maxLength) {
                            	console.log('dd', translatedText.length);
                                truncatedText += '... <a href="#" id="show-more">더보기</a>';
                            }
                        	// 잘라낸 텍스트를 표시
                            $('#horoscope-result').html(truncatedText);
                        	
                            // 더보기 클릭 시 전체 텍스트 표시 및 스크롤 활성화
                            $('#horoscope-result').on('click', '#show-more', function(event) {
                                event.preventDefault();
                                $('#horoscope-result').html(translatedText);  // 전체 텍스트를 표시
                                $('#translation-container').addClass('expanded'); // 스크롤 활성화
                            });
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.error("Error fetching translation:", textStatus, errorThrown);
                            $('#horoscope-result').text("운세를 번역하는 중 오류가 발생했습니다.");
                        }
                    });
                }).fail(function(jqXHR, textStatus, errorThrown) {
                    console.error("Error fetching horoscope:", textStatus, errorThrown);
                    $('#horoscope-result').text("운세를 불러오는 중 오류가 발생했습니다.");
                });
            } else {
                $('#horoscope-result').text("잘못된 별자리 정보입니다.");
            }
        });
    </script>

	<script>
		//룰렛페이지로 이동
		document.addEventListener('DOMContentLoaded', function() {

			const button = document.getElementById('fixedButton');

			const root = '${root}';

			button.addEventListener('click', function() {
			window.location.href = `${root}spinRoulette`;

			});
		});
	</script>

	<script>
		// 버튼 클릭 시 페이지 상단으로 스크롤
		document.getElementById('scrollToTopBtn').addEventListener('click',
				function() {
					window.scrollTo({
						top : 0,
						behavior : 'smooth'
					});
				});

		// 페이지 스크롤 시 버튼 표시/숨기기
		window.addEventListener('scroll', function() {
			const button = document.getElementById('scrollToTopBtn');
			if (window.scrollY > 300) { // 300px 이상 스크롤된 경우
				button.classList.add('show');
			} else {
				button.classList.remove('show');
			}
		});
	</script>
</body>

</html>