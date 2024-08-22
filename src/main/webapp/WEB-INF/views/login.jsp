<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maru/login</title>
</head>
<body>


	<h1>Login with LINE</h1>
	<button id="lineLoginButton">Login with LINE</button>

	<script>
		document.getElementById("lineLoginButton").onclick = function() {
			const clientId = "2006071190"; // 클라이언트 ID
			const redirectUri = encodeURIComponent("http://localhost:8078/Maru/user/line"); // 리디렉션 URI
			const state = "RANDOM_STRING"; // CSRF 방지용 상태 값
			const scope = "profile%20openid"; // 요청할 권한

			const lineLoginUrl = "https://access.line.me/oauth2/v2.1/authorize?response_type=code&client_id="
					+ clientId
					+ "&redirect_uri="
					+ redirectUri
					+ "&state="
					+ state + "&scope=" + scope;

			window.location.href = lineLoginUrl;
		};
	</script>

</body>
</html>