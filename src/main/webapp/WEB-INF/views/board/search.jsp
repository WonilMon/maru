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
	content="Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline, Post 2 Headline, Post 1 Headline, Post 6 Headline, Post 5 Headline, Post 4 Headline, Post 3 Headline">
<meta name="description" content="">
<title>search</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/search.css" media="screen">
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
<meta name="twitter:title" content="search">
<meta name="twitter:description" content="">
<meta property="og:title" content="search">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
<style>
.search-results-container {
	margin-top: 20px;
}

.search-results-header {
	display: grid;
	grid-template-columns: 1fr 3fr 5fr 2fr 2fr 2fr;
	margin: 20px 0 0 0;
	padding: 10px;
	background-color: #FAE1DD;
	border-bottom: 2px solid #ddd;
	font-weight: bold;
	padding: 10px;
}

.search-result-item {
	display: grid;
	grid-template-columns: 1fr 3fr 5fr 2fr 2fr 2fr;
	padding: 10px;
	margin-bottom: 10px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.search-result-item>div {
	padding: 5px;
}

.result-category, .result-title, .result-content, .result-comments,
	.result-date {
	display: block;
}

.result-title {
	font-size: 15px;
	font-weight: bold;
	color: #333;
	text-decoration: none;
	text-overflow: ellipsis;
}

.result-title:hover {
	text-decoration: underline;
	color: #f76c6c;
}

.result-content {
	font-size: 14px;
	color: #555;
	line-height: 1.5;
	max-height: 45px;
	overflow: hidden;
	text-overflow: ellipsis;
}

.result-comments {
	font-size: 13px;
	color: #f76c6c;
	text-align: center;
}

.result-date {
	font-size: 12px;
	color: #888;
	text-align: right;
}

.wonil_pagination {
	margin: 20px;
	text-align: center;
}

.wonil_pagination a {
	display: inline-block;
	padding: 8px 12px;
	margin: 0 5px;
	text-decoration: none;
	color: #333;
	background-color: #f1f1f1;
	border-radius: 4px;
	border: 1px solid #ddd;
}

.wonil_pagination a.active {
	background-color: #f76c6c;
	color: #fff;
}

.wonil_pagination a:hover {
	background-color: #ddd;
}
</style>
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>


	<section class="u-align-center u-clearfix u-section-2" id="sec-ea52">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-left u-text u-text-default u-text-1">검색 결과</p>

			<!-- 검색 결과 헤더 -->
			<div class="search-results-header">
				<div>게시판</div>
				<div>제목</div>
				<div>내용</div>
				<div>작성자</div>
				<div>댓글수</div>
				<div>작성날짜</div>
			</div>

			<!-- 검색 결과 리스트 -->
			<div class="search-results-container">
				<c:forEach var="obj" items="${searchList}">
					<div class="search-result-item">
						<div class="result-category">${obj.board_info_idx}</div>
						<div class="result-title">
							<a href="${result.link}">${obj.content_subject}</a>
						</div>
						<div class="result-content">${obj.content_text}</div>
						<div class="result-comments">${obj.user_idx}</div>
						<div class="result-comments">${obj.user_idx}댓글</div>
						<div class="result-date">${obj.content_date}</div>
					</div>
				</c:forEach>
			</div>

			<!-- 페이지네이션 -->
			<div class="wonil_pagination">
				<c:if test="${pageBean.currentPage > 1}">
					<a
						href="${root}search/main?page=${pageBean.currentPage - 1}&keyWord=${keyWord}">&laquo;</a>
				</c:if>
				<c:forEach var="page" begin="${pageBean.min}" end="${pageBean.max}">
					<c:choose>
						<c:when test="${page == pageBean.currentPage}">
							<a
								href="${root}search/main?page=${page}&keyWord=${keyWord}"
								class="active">${page}</a>
						</c:when>
						<c:otherwise>
							<a
								href="${root}search/main?page=${page}&keyWord=${keyWord}">${page}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pageBean.currentPage < pageBean.pageCnt}">
					<a
						href="${root}company/manage_faq?page=${pageBean.currentPage + 1}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>