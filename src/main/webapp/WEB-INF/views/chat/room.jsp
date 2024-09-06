<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chat Room</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/sockjs-client@1.5.1/dist/sockjs.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/stompjs@2.3.3/lib/stomp.min.js"></script>
<style>
/* 채팅 메시지 스타일 */
.message {
	padding: 10px;
	margin: 10px 0;
	clear: both;
	border-radius: 15px;
	font-size: 14px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.my-message {
	text-align: left;
	background-color: #FCD5CE;
	color: #333;
	float: left;
}

.other-message {
	text-align: right;
	background-color: #f1f1f1;
	color: #333;
	float: right;
}

/* 채팅 영역 스타일 */
#chatArea {
	border: 1px solid #ccc;
	height: 400px;
	overflow-y: scroll;
	border-radius: 10px;
	padding: 10px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* 입력 영역 스타일 */
#message {
	width: 70%;
	margin: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-right: 10px;
	font-size: 14px;
	padding: 10px;
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

/* 채팅방 제목 스타일 */
h2.text-primary {
	color: #FEC5BB;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}
</style>
<script type="text/javascript">
	var websock;
	var nickname = "${loginUserBean.user_nickname}";
	var roomIdx = ${room.room_idx}; 
	var senderIdx = ${loginUserBean.user_idx};
    var receiverIdx = ${receiver_idx_real};
    console.log(receiverIdx);


	$(function() {
		$('#message').keypress(function(event) {
			var keycode = event.keyCode ? event.keyCode : event.which;
			if (keycode == 13) { // 엔터키 이벤트
				send();
			}
			event.stopPropagation();
		});

		$('#enterBtn').click(function() {
			connect();
		});
		$('#exitBtn').click(function() {
			disconnect();
		});
		$('#sendBtn').click(function() {
			send();
		});

		// 자동으로 채팅에 연결
		connect();
	});

	function connect() {
		if (!nickname) {
			alert("ユーザーⅠDが見つかりません");
			return;
		}

		var socket = new SockJS('${root}/chat-ws');
		websock = Stomp.over(socket);

		websock.connect({}, function(frame) {
			appendMessage(nickname + "さんがチャットルームに入室しました!!", 'my-message');
			websock.subscribe('${root}/topic/messages/${room.room_idx}', function(message) {
				var receivedMessage = JSON.parse(message.body);
				 if (receivedMessage.sender_idx !== ${loginUserBean.user_idx}) {
	                    appendMessage(receivedMessage.sender_idx + ": " + receivedMessage.messages_text, 'other-message');
	                }
			});
		}, function(error) {
			appendMessage("webソケットエラー: " + error, 'my-message');
		});
	}

	function send() {
		var message = $('#message').val();
		if (websock && websock.connected) {
			var formattedMessage = nickname + ": " + message; // 화면에 표시할 메시지 형식
			
			 var senderIdx = ${loginUserBean.user_idx};
		     var receiverIdx = ${receiver_idx_real};
		     var roomIdx = ${room.room_idx}; 
			
			
			websock.send("/app/chat", {}, JSON.stringify({
				'room_idx': ${room.room_idx}, 
	            'sender_idx': ${loginUserBean.user_idx},
	            'receiver_idx': ${receiver_idx_real}, 
	            'messages_text': message,
	            'messages_date': new Date().toISOString() 
			}));
			appendMessage(formattedMessage, 'my-message'); // 내 메시지를 좌측 정렬
			$('#message').val(''); // 메시지 입력란을 비웁니다.
		} else {
			appendMessage('webソケット接続エラーが発生しました', 'my-message');
		}
	}

	function disconnect() {
		if (websock) {
			appendMessage(nickname + "さんがチャットルームから退室しました！！", 'my-message');
			websock.disconnect(function() {
			 	window.close();
			});
		}
	}

	function appendMessage(msg, cssClass) {
		var messageElement = $('<div class="message"></div>').text(msg)
				.addClass(cssClass);
		$('#chatMessageArea').append(messageElement);

		var chatAreaHeight = $('#chatArea').height();
		var maxScroll = $('#chatMessageArea').height() - chatAreaHeight;
		$('#chatArea').scrollTop(maxScroll);
		$('#chatArea').scrollTop($('#chatMessageArea')[0].scrollHeight);
	}
</script>
</head>
<body>
	<div class="container">
		<div>
			<h2 class="text-primary">
				<img src="${root}/getProfileImage/${room.receiver_img}"
					style="width: 30px; height: 30px; border-radius: 50%; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
				${room.receiver_nickname}とのチャット
			</h2>
			<span>
				<button 　class="btn btn-danger">おすそ分け</button>
			</span>
		</div>
		<div id="chatArea"
			style="border: 1px solid #ccc; height: 300px; overflow-y: scroll;">
			<div id="chatMessageArea">
				<c:forEach var="message" items="${messages}">
					<p>

						<c:choose>
							<c:when test="${message.sender_idx eq loginUserBean.user_idx}">
								<div class="message my-message">${message.sender_nickname}:${message.messages_text}</div>
							</c:when>
							<c:otherwise>
								<div class="message other-message">${message.sender_nickname}:${message.messages_text}</div>
							</c:otherwise>
						</c:choose>

					</p>
				</c:forEach>
			</div>
		</div>

		<div>
			<input type="text" id="message" required="required"
				placeholder="メッセージを入力してください..."> <input type="button" value="送信"
				id="sendBtn" class="btn btn-info"> <input type="button"
				value="退室" id="exitBtn" class="btn btn-danger">
		</div>
	</div>
</body>
</html>
