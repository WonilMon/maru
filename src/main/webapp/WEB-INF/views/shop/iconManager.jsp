<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>아이콘 관리자</title>
    <link id="u-theme-google-font" rel="stylesheet">
</head>
<body data-path-to-root="/" data-include-products="false" class="u-body u-xl-mode">
    <h1>아이콘 관리자</h1>

    <h2>기본 아이콘</h2>
    <div>
        <c:forEach var="defaultImage" items="${defaultImages}">
            <img src="${defaultImage}" alt="기본 아이콘" style="width: 100px; height: 100px;">
        </c:forEach>
    </div>

    <h2>아이콘 목록</h2>
    <c:forEach var="animal" items="${animals}">
        <div>
            <h3>${animal}</h3>
            <c:forEach var="image" items="${animalImages[animal]}">
                <img src="${image}" alt="${animal}" style="width: 100px; height: 100px;">
            </c:forEach>
        </div>
    </c:forEach>

    <h2>아이콘 추가</h2>
    <form:form method="post" action="${pageContext.request.contextPath}/addIcon" modelAttribute="iconBean">
        <div>
            <label for="icon_name">아이콘 이름:</label>
            <form:input path="icon_name" id="icon_name" />
        </div>
        <div>
            <label for="icon_path">아이콘 경로:</label>
            <form:input path="icon_path" id="icon_path" />
        </div>
        <div>
            <label for="user_idx">사용자 ID:</label>
            <form:input path="user_idx" id="user_idx" />
        </div>
        <div>
            <label for="goods_price">상품 가격:</label>
            <form:input path="goods_price" id="goods_price" />
        </div>
        <button type="submit">아이콘 추가</button>
    </form:form>

    <h2>아이콘 일괄 등록</h2>
    <form action="${pageContext.request.contextPath}/shop/uploadIcons" method="get">
        <button type="submit">아이콘 일괄 등록</button>
    </form>
</body>
</html>