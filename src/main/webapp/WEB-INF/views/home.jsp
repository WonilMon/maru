<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="kr.co.softsoldesk.beans.LineProfile"%>
<html>
<head>
<title>Maru/home</title>
</head>
<body>
	<h1>Welcome</h1>

	<%
	LineProfile userProfile = (LineProfile) session.getAttribute("userProfile");
	if (userProfile != null) {
	%>
	<p>
		User ID:
		<%=userProfile.getUserId()%></p>
	<p>
		Display Name:
		<%=userProfile.getDisplayName()%></p>
	<p>
		<img src="<%=userProfile.getPictureUrl()%>" alt="Profile Picture" />
	</p>
	<%
	} else {
	%>
	<p>
		Please <a href="login.jsp">login</a> first.
	</p>
	<%
	}
	%>
</body>
</html>
