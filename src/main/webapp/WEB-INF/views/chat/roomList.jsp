<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Chat Rooms</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #F8EDEB;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h2 {
	color: #FEC5BB;
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 20px;
}

.chat-room-list {
	list-style: none;
	padding: 0;
	margin: 0;
	width: 100%;
	max-width: 1000px;
	max-height: 400px; /* 최대 높이 설정 */
	background: white;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	overflow-y: auto; /* 스크롤 가능하도록 설정 */
}

.chat-room-list li {
	border-bottom: 1px solid #FEC5BB;
	padding: 15px;
	width: 500px;
	transition: background-color 0.3s ease;
	display: flex;
	align-items: center;
}

.chat-room-list li:last-child {
	border-bottom: none;
}

.chat-room-list li:hover {
	background-color: #FEC5BB;
}

.chat-room-item {
	display: flex;
	align-items: center;
	text-decoration: none;
	color: #333;
	width: 100%;
}

.chat-room-item img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin-right: 15px;
	object-fit: cover;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.chat-room-details {
	flex: 1;
	overflow: hidden;
}

.chat-room-nickname {
	font-weight: bold;
	font-size: 16px;
	margin-bottom: 5px;
	color: #555;
}

.chat-room-message {
	color: #777;
	font-size: 14px;
	margin-bottom: 5px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.chat-room-date {
	color: #aaa;
	font-size: 12px;
}

/* 버튼 스타일 */
.btn {
	padding: 10px 20px;
	margin: 5px 10px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 14px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	background-color: #FF6F61;
	color: white;
	text-align: center;
}

.btn:hover {
	background-color: #FEC5BB;
}

.no-chat-message {
	text-align: center;
	padding: 20px;
	color: #aaa;
	font-size: 16px;
}
</style>
</head>
<body>
	<div>
		<h2>채팅방 목록</h2>
		<ul class="chat-room-list">
			<c:choose>
				<c:when test="${empty rooms}">
					<li class="no-chat-message">대화가 없습니다</li>
				</c:when>
				<c:otherwise>
					<c:forEach var="room" items="${rooms}">
						<li><a class="chat-room-item"
							href="${root}/chat/room?sender_idx=${sender_idx}&receiver_idx=${room.receiver_idx}">
								<img src="${root}/getProfileImage/${room.user_img}"
								alt="${room.receiver_nickname}의 프로필 사진">
								<div class="chat-room-details">

									<div class="chat-room-nickname">${room.receiver_nickname}</div>

									<c:set var="receiverTurn" value="false" />
									<c:set var="MessageText" value="" />

									<c:forEach var="room2" items="${rooms2}">
										<c:if
											test="${room2.sender_nickname eq room.receiver_nickname && room.sender_nickname eq room2.receiver_nickname}">
											<c:set var="receiverTurn" value="true" />

											<c:choose>
												<c:when test="${room.messages_date <= room2.messages_date }">
													<c:set var="MessageText" value="${room2.messages_text}" />
												</c:when>
												<c:otherwise>
													<c:set var="MessageText" value="${room.messages_text}" />
												</c:otherwise>
											</c:choose>

										</c:if>
									</c:forEach>


									<c:choose>
										<c:when test="${receiverTurn}">
											<div class="chat-room-message">${MessageText}</div>
										</c:when>
										<c:otherwise>
											<div class="chat-room-message">${room.messages_text}</div>
										</c:otherwise>
									</c:choose>


									<div class="chat-room-date">${room.messages_date}</div>

								</div>
						</a></li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</body>
</html>
