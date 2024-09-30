<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.Date"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<title>board_write</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/board_write.css" media="screen">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
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
<meta name="twitter:title" content="board_write">
<meta name="twitter:description" content="">
<meta property="og:title" content="board_write">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
<style>
body {
	font-family: 'Noto Sans', sans-serif;
	background-color: #F8EDEB;
	color: #6D6875;
}

.form-wrapper {
	max-width: 1000px;
	margin: 100px auto;
	padding: 30px;
	background-color: #FAE1DD;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

.form-title {
	font-size: 1.5rem;
	font-weight: bold;
	color: #B5838D;
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 8px;
}

.form-group input[type="text"], .form-group textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #B5838D;
	border-radius: 5px;
	font-size: 1rem;
}

.form-group textarea {
	resize: vertical;
	height: 150px;
}

.form-errors {
	color: red;
	font-size: 0.875rem;
}

.upload-section {
	margin-top: 20px;
	text-align: center;
	border: 2px dashed #B5838D;
	padding: 20px;
	border-radius: 10px;
	background-color: #FFF0F0;
}

.upload-section input[type="file"] {
	margin-top: 10px;
}

.upload-section label {
	font-weight: bold;
	color: #B5838D;
}

.form-footer {
	text-align: center;
	margin-top: 30px;
}

.hashtag-item {
	display: inline-block;
	background-color: #FFE5E5;
	color: #B5838D;
	padding: 5px 10px;
	margin: 5px;
	border-radius: 20px;
	font-size: 0.875rem;
}

.hashtag-item button {
	background: none;
	border: none;
	color: #B5838D;
	margin-left: 5px;
	cursor: pointer;
}
</style>

</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="form-wrapper">
		<form:form action="${root}company/notice_write_pro"
			modelAttribute="writeContentBean" method="post"
			enctype="multipart/form-data">

			<form:hidden path="board_info_idx" />

			<div class="form-title">作成</div>

			<div class="form-group">
				<label for="subject">タイトル</label>
				<form:input path="content_subject" class="form-control" />
				<form:errors path="content_subject" class="form-errors" />
			</div>

			<div class="form-group">
				<label>投稿者</label>
				<p>${user_name}</p>
			</div>

			<div class="form-group">
				<label>投稿日</label>
				<p>${now}</p>
			</div>

			<div class="form-group">
				<label for="content">内容</label>
				<form:textarea path="content_text" class="form-control" />
				<form:errors path="content_text" class="form-errors" />
			</div>


			<div class="upload-section">
				<label for="upload_file">画像をアップロード</label>
				<form:input type="file" path="upload_files" accept="image/*"
					multiple="multiple" id="upload_files"></form:input>
				<div id="file-preview"></div>


			</div>

			<div class="form-footer">
				<a href="${root }company/notice_main"
					style="padding: 10px 20px; background-color: #FFCDB2; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">目録</a>
				<form:button type="submit"
					style="padding: 10px 20px; background-color: #E5989B; color: white; border: none; border-radius: 5px;">登録</form:button>
			</div>
		</form:form>
	</section>

	<script src="${root}js/jquery.js"></script>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>


	<script>
		$(document)
				.ready(
						function() {
							$('#upload_files')
									.on(
											'change',
											function() {

												var files = this.files;
												$('#file-preview').empty();
												if (files.length > 0) {
													for (var i = 0; i < files.length; i++) {
														var reader = new FileReader();
														var file = files[i];
														reader.onload = function(
																e) {
															// 이미지 미리보기 추가
															$('#file-preview')
																	.append(
																			'<img src="' + e.target.result + '" alt="Image" style="max-width: 200px; margin: 10px;">');
														}

														reader
																.readAsDataURL(files[i]);
													}
												}
											});
						});
	</script>

	<script>
		const dataTransfer = new DataTransfer();

		$("#upload_files")
				.change(
						function() {

							let fileArr = document
									.getElementById("upload_files").files

							if (fileArr != null && fileArr.length > 0) {

								// =====DataTransfer 파일 관리========
								for (var i = 0; i < fileArr.length; i++) {
									dataTransfer.items.add(fileArr[i])
								}
								document.getElementById("upload_files").files = dataTransfer.files;
								console.log("dataTransfer =>",
										dataTransfer.files)
								console.log("input FIles =>", document
										.getElementById("upload_files").files)
								// ==========================================

							}

						})
	</script>

	<script>
		$(document).ready(
				function() {
					$("button[type='submit']").off("click").on("click",
							function(event) {

								event.stopImmediatePropagation();

								$(this).closest("form").off("submit").submit();
							});
				});
	</script>



</body>
</html>