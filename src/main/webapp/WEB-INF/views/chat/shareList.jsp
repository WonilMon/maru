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

.no-chat-message {
	text-align: center;
	padding: 20px;
	color: #aaa;
	font-size: 16px;
}

.btn {
	padding: 10px 20px;
	margin: 5px 10px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 14px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.btn-info {
	background-color: #FCD5CE;
	color: white;
}

.btn-info:hover {
	background-color: #FEC5BB;
}

.btn-danger {
	background-color: #FCD5CE;
	color: white;
}

.btn-danger:hover {
	background-color: #FEC5BB;
}
</style>
</head>
<body>
	<div>
		<h2>チャット目録</h2>
		<ul class="chat-room-list">
			<c:choose>
				<c:when test="${empty shareList}">
					<li class="no-chat-message">おすそ分けの履歴がありません</li>
				</c:when>
				<c:otherwise>
					<c:forEach var="room" items="${shareList}">
						<li><img src="${root}/getProfileImage/${room.test_file}"
							style="width: 70px; height: 70px; margin: 10px;">
							<div class="chat-room-details">

								<div class="chat-room-nickname">${room.content_subject}</div>

								<div class="chat-room-date">${room.content_date}</div>

							</div>

							<button class="btn btn-danger addImageBtn" data-idx="${status.index}" data-content-idx="${room.content_idx}">認証する</button>
							<input type="file" id="imageFileInput-${status.index}" class="imageFileInput" style="display: none;" /></li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>

	<script>
	document.querySelectorAll('.addImageBtn').forEach(function(button) {
	    button.addEventListener('click', function() {
	        var idx = this.getAttribute('data-idx');
	        document.getElementById('imageFileInput-' + idx).click(); // 해당 버튼과 연결된 파일 입력 요소 클릭
	    });
	});

	document.querySelectorAll('.imageFileInput').forEach(function(input) {
	    input.addEventListener('change', function(event) {
	        var file = event.target.files[0];
	        var receiver_idx = "${receiver_idx}";
	        var button = input.previousElementSibling; // 해당 파일 입력 요소와 연관된 버튼 찾기
	        var content_idx = button.getAttribute('data-content-idx'); // 버튼에서 content_idx 값 가져오기

	        if (file) {
	            var formData = new FormData();
	            formData.append('addImage', file);
	            formData.append('receiver_idx', receiver_idx);
	            formData.append('content_idx', content_idx); // content_idx 값 추가

	            var xhr = new XMLHttpRequest();
	            xhr.open('POST', '${root}/chat/uploadShareImage', true);
	            xhr.onload = function() {
	                if (xhr.status === 200) {
	                    alert('登録されました。認証に成功したら、ポイントが支給されます。');
	                    location.href = '${root}/chat/room?sender_idx=${loginUserBean.user_idx}&receiver_idx=${receiver_idx}';
	                } else {
	                    alert('画像のアップロードに失敗しました。');
	                }
	            };
	            xhr.send(formData);
	        }
	    });
	});

	</script>
</body>
</html>
