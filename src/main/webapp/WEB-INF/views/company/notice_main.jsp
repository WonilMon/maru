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
	content="Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline">
<meta name="description" content="">
<title>about</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/about.css" media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">




<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "${root }images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="about">
<meta name="twitter:description" content="">
<meta property="og:title" content="about">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 20px;
}

.container {
	width: 65%;
	margin: 100px auto 100px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	margin-top: 0;
}

.controls {
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
}

button {
	padding: 5px 10px;
	border: 1px solid #ccc;
	background-color: #fff;
	cursor: pointer;
}

button:hover {
	background-color: #f1f1f1;
}

label {
	margin-right: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

thead {
	background-color: #f1f1f1;
}

th, td {
	padding: 10px;
	border: 1px solid #ddd;
	text-align: center;
}

th {
	font-weight: bold;
}

.label {
	background-color: #ff6666;
	color: white;
	padding: 5px 8px;
	border-radius: 4px;
	font-size: 12px;
	display: inline-block;
}

tr:hover {
	background-color: #f9f9f9;
}

@media ( max-width : 768px) {
	.container {
		width: 100%;
		padding: 10px;
	}
	th, td {
		font-size: 14px;
		padding: 8px;
	}
}

.wonil_pagination {
	margin: 0 0 100px 0;
}

.wonil_pagination a {
	margin: 0 10px;
	text-decoration: none;
	padding: 7px 12px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
}

.wonil_pagination a.active {
	background-color: #ff7f7f;
	color: white;
	border-color: #ff7f7f;
}
</style>

</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-align-center u-clearfix u-section-2"
		id="carousel_d4e3">
		<div class="container">
			<h2>お知らせ</h2>
			<div class="controls">

				<c:if test="${loginUserBean.user_role eq '管理者' }">
					<button>
						<a href="${root }company/notice_write">作成</a>
					</button>
				</c:if>

				<select>
					<option value="15">15個ずつ</option>
					<option value="20">20個ずつ</option>
				</select>
			</div>
			<table>
				<thead>
					<tr>
						<th>ラベル</th>
						<th>タイトル</th>
						<th>投稿者</th>
						<th>投稿日時</th>
						<th>閲覧</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="list" items="${noticeList}">
						<tr>
							<td><span class="label">必読</span></td>
							<td><a
								href="${root }company/notice_read?board_info_idx=5&content_idx=${list.content_idx}">${list.content_subject}</a></td>
							<td>${list.user_name }</td>
							<td>${list.content_date }</td>
							<td>${list.content_views }</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<div class="wonil_pagination">
				<c:if test="${pageBean.currentPage > 1}">
					<a
						href="${root}company/notice?page=${pageBean.currentPage - 1}">&laquo;</a>
				</c:if>
				<c:forEach var="page" begin="${pageBean.min}" end="${pageBean.max}">
					<c:choose>
						<c:when test="${page == pageBean.currentPage}">
							<a
								href="${root}company/notice?page=${page}"
								class="active">${page}</a>
						</c:when>
						<c:otherwise>
							<a
								href="${root}company/notice?page=${page}">${page}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
					<a
						href="${root}company/notice?page=${pageBean.currentPage + 1}">&raquo;</a>
				</c:if>
			</div>

		</div>

	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>


</body>
</html>