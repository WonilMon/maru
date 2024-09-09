<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<header
	class="u-clearfix u-container-align-center u-header u-palette-4-base u-sticky u-sticky-5e81 u-header"
	id="sec-d1fa" style="position: relative;">

	<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
		<nav class="u-menu u-menu-hamburger u-offcanvas u-menu-1"
			data-responsive-from="XL">
			<div class="menu-collapse">
				<a class="u-button-style u-nav-link" href="#"
					style="padding: 4px 0px; font-size: calc(1em + 8px);"> <svg
						class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 302 302" style="">
							<use xlink:href="#svg-5247"></use></svg> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="svg-5247" x="0px" y="0px" viewBox="0 0 302 302"
						style="enable-background: new 0 0 302 302;" xml:space="preserve"
						class="u-svg-content">
							<g>
							<rect y="36" width="302" height="30"></rect>
							<rect y="236" width="302" height="30"></rect>
							<rect y="136" width="302" height="30"></rect>
</g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
				</a>
			</div>


			<div class="u-custom-menu u-nav-container">
				<ul class="u-nav u-unstyled u-nav-1">
					<c:choose>
						<c:when test="${loginUserBean.userLogin == true }">

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }main" style="padding: 10px 20px;">ホーム</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/company" style="padding: 10px 20px;">企業案内</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }shop/shop?user_idx=${loginUserBean.user_idx}"
								style="padding: 10px 20px;">ショップ</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_prev_main" style="padding: 10px 20px;">掲示板</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_main_share?board_info_idx=4" style="padding: 10px 20px;">おすそわけ</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/faq" style="padding: 10px 20px;">FAQ</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/favorite" style="padding: 10px 20px;">ブックマーク</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/profile_modify" style="padding: 10px 20px;">マイページ</a>
							</li>
							<c:if test="${loginUserBean.user_role eq '管理者' }">
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
									href="${root }company/admin_index" style="padding: 10px 20px;">管理者</a>
								</li>
							</c:if>

						</c:when>
						<c:otherwise>

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }main" style="padding: 10px 20px;">ホーム</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/company" style="padding: 10px 20px;">企業案内</a></li>

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_prev_main" style="padding: 10px 20px;">掲示板</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_main_share?board_info_idx=4" style="padding: 10px 20px;">おすそわけ</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/faq" style="padding: 10px 20px;">FAQ</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/register" style="padding: 10px 20px;">会員登録</a></li>

						</c:otherwise>
					</c:choose>


				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
					<div class="u-inner-container-layout u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
							<c:choose>
								<c:when test="${loginUserBean.userLogin == true }">
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }main">ホーム</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }company/company">企業案内</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }shop/shop?user_idx=${loginUserBean.user_idx}">ショップ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_prev_main">掲示板</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_main_share?board_info_idx=4">おすそわけ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }company/faq">FAQ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }user/favorite">ブックマーク</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }user/profile_modify">マイページ</a></li>
									<c:if test="${loginUserBean.user_role eq '管理者' }">
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link"
											href="${root }company/admin_index">管理者</a></li>
									</c:if>

								</c:when>
								<c:otherwise>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }main">ホーム</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }company/company">企業案内</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_prev_main">掲示板</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_main_share?board_info_idx=4">おすそわけ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }company/faq">FAQ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }user/register">会員登録</a></li>
								</c:otherwise>
							</c:choose>

						</ul>
					</div>
				</div>
				<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
			</div>
		</nav>
		<form action="${root}board/search" method="get"
			class="u-align-center u-border-1 u-border-grey-30 u-expanded-width-xs u-search u-search-right u-white u-search-1">
			<input class="u-search-input" type="search" name="keyWord"
				placeholder="Search" value="${keyWord }" />
			<button class="u-search-button" type="submit">
				<span class="u-search-icon u-spacing-10 u-search-icon-1"> <svg
						class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 56.966 56.966" style="">
                <use xlink:href="#svg-eb5c"></use>
            </svg> <svg xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="svg-eb5c" x="0px" y="0px" viewBox="0 0 56.966 56.966"
						style="enable-background: new 0 0 56.966 56.966;"
						xml:space="preserve" class="u-svg-content">
                <path
							d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17s-17-7.626-17-17S14.61,6,23.984,6z"></path>
            </svg>
				</span>
			</button>
		</form>

		<a href="${root }main" class="u-image u-logo u-image-1"
			data-image-width="80" data-image-height="40" title="home"> <img
			src="${root }images/maru_logo_H.png"
			class="u-logo-image u-logo-image-1"
			style="width: 200px; height: 60px;">
		</a>
		<div id="notification-container"
			style="position: absolute; top: 25px; right: 35px;">
			<button id="notification-button"
				style="background-color: #F8EDEB; border: none; color: #FF6F61; cursor: pointer; padding: 10px; border-radius: 50%; position: relative;">
				<span class="notification-icon" style="font-size: 24px;"> <i
					class="material-icons"> <img alt="Notification Icon"
						src="${root}images/notification.png"
						style="width: 30px; height: 30px;">
				</i>
				</span> <span id="notification-count"
					style="position: absolute; top: -5px; right: -5px; background-color: #FF6F61; color: white; border-radius: 50%; padding: 4px 8px; font-size: 12px;">0</span>
			</button>
			<!-- 알림 리스트 -->
			<div id="notification-list"
				style="display: none; position: absolute; right: 0; background-color: #ffffff; border: 1px solid #ddd; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); width: 250px; max-height: 300px; overflow-y: auto; border-radius: 4px; z-index: 1000;">
				<!-- 동적 추가 -->
			</div>
		</div>
		<script>
			document
					.addEventListener(
							'DOMContentLoaded',
							function() {
								var notificationButton = document
										.getElementById('notification-button');
								var notificationList = document
										.getElementById('notification-list');
								var notificationCount = document
										.getElementById('notification-count');
								var notifications = []; // 알림 목록을 저장하는 배열

								// 알림 버튼 클릭 시 알림 리스트 표시/숨기기
								notificationButton.onclick = function() {
									notificationList.style.display = notificationList.style.display === 'block' ? 'none'
											: 'block';
								};

								// 새로운 알림을 추가하는 함수
								function addNotification(userIdx, userNickname, userImg, messageText, messageDate) {
								    var notificationItem = document.createElement('div');
								    notificationItem.className = 'notification-item';
								    notificationItem.style.padding = '10px';
								    notificationItem.style.borderBottom = '1px solid #eee';
								    notificationItem.style.fontSize = '14px';
								    notificationItem.style.color = '#333';
								    notificationItem.style.display = 'flex'; // 수평 정렬을 위해 추가

								    notificationItem.dataset.userIdx = userIdx; // userIdx를 데이터 속성으로 추가

								    var userIcon = document.createElement('img');
								    userIcon.src = '${root}/getProfileImage/' + userImg;
								    userIcon.alt = 'User Icon'; // 접근성을 위해 alt 텍스트 추가
								    userIcon.style.width = '30px';
								    userIcon.style.height = '30px';
								    userIcon.style.borderRadius = '50%';
								    userIcon.style.marginRight = '10px'; // 아이콘과 텍스트 사이의 간격

								    var notificationContent = document.createElement('div');
								    var userNameElement = document.createElement('strong');
								    userNameElement.textContent = userNickname;
								    userNameElement.style.marginRight = '5px';

								    var messageElement = document.createElement('span');
								    messageElement.textContent = messageText;

								    var dateElement = document.createElement('div');
								    dateElement.textContent = new Date(messageDate).toLocaleString(); // 날짜 형식 포맷
								    dateElement.style.fontSize = '12px';
								    dateElement.style.color = '#777';
								    dateElement.style.marginTop = '5px';

								    notificationContent.appendChild(userNameElement);
								    notificationContent.appendChild(messageElement);
								    notificationContent.appendChild(dateElement);

								    notificationItem.appendChild(userIcon);
								    notificationItem.appendChild(notificationContent);

								    notificationItem.onmouseover = function() {
								        notificationItem.style.backgroundColor = '#f7f7f7';
								    };

								    notificationItem.onmouseout = function() {
								        notificationItem.style.backgroundColor = '#ffffff';
								    };

								    // 알림 항목 클릭 시 처리
								    notificationItem.onclick = function() {
								        var userIdx = this.dataset.userIdx;
								        var chatUrl = `${root }chat/room?sender_idx=${loginUserBean.user_idx}` + `&receiver_idx=` + userIdx;
								        const width = 800;
				                        const height = 600;
				                        const left = (window.screen.width - width) / 2;
				                        const top = (window.screen.height - height) / 2;
				                        window.open(chatUrl, 'ChatRoomWindow', 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
								    };

								    notificationList.appendChild(notificationItem);
								    notifications.push(messageText);
								}



								// 알림 카운트 업데이트
								function updateNotificationCount(count) {
    								var notificationCount = document.getElementById('notification-count');
    									notificationCount.textContent = count;
    								if (count > 0) {
        								notificationCount.style.display = 'block';
    								} else {
        								notificationCount.style.display = 'none';
    								}
								}

								// 알림 리스트를 새로고침하는 함수
							    function refreshNotifications(data) {
    							var notificationList = document.getElementById('notification-list');
    								notificationList.innerHTML = '';  // 기존 알림들을 모두 제거

   									data.forEach(message => {
   										addNotification(message.user_idx, message.user_nickname, message.user_img, message.messages_text, message.messages_date);
    							});

    								updateNotificationCount(data.length); // 전체 알림 수 업데이트
								}

							    // 서버에서 알림을 받아오는 함수
							    function fetchNotifications() {
							        var receiverId = "${loginUserBean.user_idx}";

							        console.log(receiverId);

							        fetch('${root}/notifications?receiver_idx=' + receiverId)
							            .then(response => response.json())
							            .then(data => {
							                refreshNotifications(data); // 새로운 데이터를 이용해 알림 리스트와 카운트 새로고침
							            })
							            .catch(error => console.error('Error fetching notifications:', error));
							    }

							    // 주기적으로 서버에서 알림을 받아오기
							    setInterval(fetchNotifications, 2000); // 2초마다 요청

							    // 페이지 로드 시 알림 카운트 초기화
							    updateNotificationCount();
							});
		</script>

	</div>
</header>