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
<meta name="keywords" content="Shop">
<meta name="description" content="">
<title>shop</title>
<link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root}css/shop.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root}js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root}js/nicepage.js" defer=""></script>
<script class="u-script" type="text/javascript" src="${root}js/shop.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<style>
.icon-navigation {
	text-align: center;
	margin-top: 20px;
}

.arrow {
	display: inline-block;
	cursor: pointer;
	font-size: 24px;
	margin: 0 10px;
	user-select: none;
	color: #FF6F61;
}

.icon-container {
	display: inline-block;
	margin: 10px;
	text-align: center;
	vertical-align: top; /* 행 간격을 일정하게 하기 위해 추가 */
}

.icon-container img {
	width: 80px;
	height: 80px;
	cursor: pointer;
}

.icon-list {
	max-height: 200px;
	overflow-y: auto;
	background-color: #FAE1DD;
	border: none;
	padding: 0;
	margin: 0;
	scrollbar-width: thin;
	scrollbar-color: #FF6F61 #f0f0f0;
}

.product-item {
	display: inline-block;
	margin: 5px;
	text-align: center;
}

#defaultDinosaurIcon {
	width: 80px;
	height: 80px;
}

#defaultDogIcon {
	width: 80px;
	height: 80px;
}

#defaultGorillaIcon {
	width: 80px;
	height: 80px;
}

#defaultOtterIcon {
	width: 80px;
	height: 80px;
}

#defaultRabbitIcon {
	width: 80px;
	height: 80px;
}

.product-item img {
	width: 80px;
	height: 80px;
	cursor: pointer;
}

.buy-button {
	color: #FF6F61;
	display: #FF6F61;
	margin-top: 10px;
	text-align: center;
}

.u-section-2 {
	background-color: #FFE5D9; /* 첫 번째 배경색 */
}

.u-section-2 .u-sheet-1 {
	background-color: #FAE1DD; /* 두 번째 배경색 */
}

.u-price {
	color: #FF6F61;
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

.u-profile-actions {
	margin-top: 15px; /* 버튼과 프로필 헤더 사이의 여백 추가 */
}

.user-product-item img {
	width: 60px;
	height: 60px;
	cursor: pointer;
}
/* 사용자 아이콘 및 마이 페이지 버튼 */
#userIconsContainer {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

#userIcons {
	display: flex;
	justify-content: center;
	align-items: center;
	overflow-x: auto; /* 스크롤바 추가 */
	white-space: nowrap; /* 아이콘을 한 줄로 표시 */
	scrollbar-width: thick;
	scrollbar-color: #FF6F61 #f0f0f0;
	background-color: #FAE1DD;
}

#userIcons img {
	width: 60px;
	height: 60px;
	margin-right: 10px; /* 아이콘 간의 간격 */
}

#userIconsContainer, #dinosaurIcons, #dogIcons, #gorillaIcons,
	#otterIcons, #rabbitIcons {
	overflow-y: hidden; /* 이 특정 div들에 대해 스크롤바를 숨깁니다 */
}
</style>
</head>
<body>
	<div class="u-body u-xl-mode" data-lang="en">
		<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
		<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

		<section
			class="u-align-center u-clearfix u-container-align-center u-section-2"
			id="sec-545a">
			<div class="u-clearfix u-sheet u-sheet-1">
				<h2
					class="u-align-center u-text u-text-default-lg u-text-default-md u-text-default-xl u-text-1">Shop</h2>
				<p class="u-align-center u-text u-text-default u-text-2"
					style="margin-bottom: 20px; color: #FF6F61;">Choose your icons</p>
				<p class="u-align-center u-text u-text-default u-text-2"
					style="margin-top: 20px; color: #FF6F61;">My Points:
					${user.user_point}</p>

				<div class="icon-container">
					<span class="u-file-icon u-icon u-icon-1"> <img
						id="defaultDinosaurIcon"
						src="${root}${dinosaurIcons[0].icon_path}"
						alt="Default Dinosaur Icon" onclick="toggleIcons('dinosaur')">
					</span>
				</div>

				<div class="icon-container">
					<span class="u-file-icon u-icon u-icon-2"> <img
						id="defaultDogIcon" src="${root}${dogIcons[0].icon_path}"
						alt="Default Dog Icon" onclick="toggleIcons('dog')">
					</span>
				</div>

				<div class="icon-container">
					<span class="u-file-icon u-icon u-icon-3"> <img
						id="defaultGorillaIcon" src="${root}${gorillaIcons[0].icon_path}"
						alt="Default Gorilla Icon" onclick="toggleIcons('gorilla')">
					</span>
				</div>

				<div class="icon-container">
					<span class="u-file-icon u-icon u-icon-4"> <img
						id="defaultOtterIcon" src="${root}${otterIcons[0].icon_path}"
						alt="Default Otter Icon" onclick="toggleIcons('otter')">
					</span>
				</div>

				<div class="icon-container">
					<span class="u-file-icon u-icon u-icon-5"> <img
						id="defaultRabbitIcon" src="${root}${rabbitIcons[0].icon_path}"
						alt="Default Rabbit Icon" onclick="toggleIcons('rabbit')">
					</span>
				</div>

				<div class="icon-navigation">
					<span class="arrow left-arrow" onclick="scrollIcons('left')">&#9664;</span>
					<span class="arrow right-arrow" onclick="scrollIcons('right')">&#9654;</span>
				</div>

				<!-- 아이콘 선택 리스트 -->
				<div id="dinosaurIcons" class="icon-list">
					<c:forEach var="icon" items="${dinosaurIcons}" varStatus="status">
						<div class="product-item">
							<img id="dinosaurIcon${status.index}"
								src="${root}${icon.icon_path}" alt="${icon.icon_name}"
								onclick="selectIcon('dinosaur', '${status.index}')"> <a
								href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button buy-button"
								data-product-button-click-type="buy-now"
								data-product-id="${icon.icon_idx}"
								data-product="{&quot;id&quot;:&quot;${icon.icon_idx}&quot;,&quot;name&quot;:&quot;${icon.icon_name}&quot;,&quot;price&quot;:&quot;${icon.icon_price}&quot;}"
								onclick="buyIcon('${icon.icon_idx}', '${user.user_idx}')">buy
								icon</a>
							<div class="u-price"
								style="font-size: 1.25rem; font-weight: 700;">${icon.icon_price}P</div>
						</div>
					</c:forEach>
				</div>

				<div id="dogIcons" class="icon-list">
					<c:forEach var="icon" items="${dogIcons}" varStatus="status">
						<div class="product-item">
							<img id="dogIcon${status.index}" src="${root}${icon.icon_path}"
								alt="${icon.icon_name}"
								onclick="selectIcon('dog', '${status.index}')"> <a
								href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button buy-button"
								data-product-button-click-type="buy-now"
								data-product-id="${icon.icon_idx}"
								data-product="{&quot;id&quot;:&quot;${icon.icon_idx}&quot;,&quot;name&quot;:&quot;${icon.icon_name}&quot;,&quot;price&quot;:&quot;${icon.icon_price}&quot;}"
								onclick="buyIcon('${icon.icon_idx}', '${user.user_idx}')">buy
								icon</a>
							<div class="u-price"
								style="font-size: 1.25rem; font-weight: 700;">${icon.icon_price}P</div>
						</div>
					</c:forEach>
				</div>
				<div id="gorillaIcons" class="icon-list">
					<c:forEach var="icon" items="${gorillaIcons}" varStatus="status">
						<div class="product-item">
							<img id="gorillaIcon${status.index}"
								src="${root}${icon.icon_path}" alt="${icon.icon_name}"
								onclick="selectIcon('gorilla', '${status.index}')"> <a
								href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button buy-button"
								data-product-button-click-type="buy-now"
								data-product-id="${icon.icon_idx}"
								data-product="{&quot;id&quot;:&quot;${icon.icon_idx}&quot;,&quot;name&quot;:&quot;${icon.icon_name}&quot;,&quot;price&quot;:&quot;${icon.icon_price}&quot;}"
								onclick="buyIcon('${icon.icon_idx}', '${user.user_idx}')">buy
								icon</a>
							<div class="u-price"
								style="font-size: 1.25rem; font-weight: 700;">${icon.icon_price}P</div>
						</div>
					</c:forEach>
				</div>

				<div id="otterIcons" class="icon-list">
					<c:forEach var="icon" items="${otterIcons}" varStatus="status">
						<div class="product-item">
							<img id="otterIcon${status.index}" src="${root}${icon.icon_path}"
								alt="${icon.icon_name}"
								onclick="selectIcon('otter', '${status.index}')"> <a
								href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button buy-button"
								data-product-button-click-type="buy-now"
								data-product-id="${icon.icon_idx}"
								data-product="{&quot;id&quot;:&quot;${icon.icon_idx}&quot;,&quot;name&quot;:&quot;${icon.icon_name}&quot;,&quot;price&quot;:&quot;${icon.icon_price}&quot;}"
								onclick="buyIcon('${icon.icon_idx}', '${user.user_idx}')">buy
								icon</a>
							<div class="u-price"
								style="font-size: 1.25rem; font-weight: 700;">${icon.icon_price}P</div>
						</div>
					</c:forEach>
				</div>

				<div id="rabbitIcons" class="icon-list">
					<c:forEach var="icon" items="${rabbitIcons}" varStatus="status">
						<div class="product-item">
							<img id="rabbitIcon${status.index}"
								src="${root}${icon.icon_path}" alt="${icon.icon_name}"
								onclick="selectIcon('rabbit', '${status.index}')"> <a
								href="#sec-4d62"
								class="u-align-center u-border-2 u-border-active-black u-border-grey-25 u-border-hover-black u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-5 u-dialog-link u-payment-button buy-button"
								data-product-button-click-type="buy-now"
								data-product-id="${icon.icon_idx}"
								data-product="{&quot;id&quot;:&quot;${icon.icon_idx}&quot;,&quot;name&quot;:&quot;${icon.icon_name}&quot;,&quot;price&quot;:&quot;${icon.icon_price}&quot;}"
								onclick="buyIcon('${icon.icon_idx}', '${user.user_idx}')">buy
								icon</a>
							<div class="u-price"
								style="font-size: 1.25rem; font-weight: 700;">${icon.icon_price}P</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	</div>
	<div
		style="text-align: center; font-size: 20px; color: #FF6F61; background-color: #FFE5D9;">
		<strong>${user.user_nickname} 님의 아이콘</strong>
	</div>

	<!-- 섹션으로 감싸서 배경색 적용 -->
	<section style="background-color: #FAE1DD; padding: 10px;">
		<div id="userIconsContainer"
			style="background-color: #FFE5D9; overflow-x: auto; white-space: nowrap; width: 400px; margin: 0 auto;">
			<div id="userIcons" style="background-color: #FFE5D9;">
				<c:forEach var="icon" items="${userIcons}">
					<img src="${root}${icon.icon_path}" alt="사용자 아이콘"
						style="width: 60px; height: 60px; margin-right: 10px;">
				</c:forEach>
			</div>
		</div>
		<div style="text-align: center;">
			<button class="u-button" style="background-color: #FFE5D9;"
				onclick="location.href='${pageContext.request.contextPath}/user/profile_modify?user_idx=${user.user_idx}'">마이
				페이지</button>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
</body>
</html>