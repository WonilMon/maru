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
<meta name="keywords" content="">
<meta name="description" content="">
<title>board_write</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/board_write.css" media="screen">
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
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-clearfix u-section-2" id="sec-b8b2">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-text u-text-default u-text-1">Modify</p>

			<form:form modelAttribute="modifyContent"
				action="${root }board/board_modify_pro" method="post"
				enctype="multipart/form-data">
				<form:hidden path="content_idx" values="${content_idx }"/>
				<form:hidden path="board_info_idx" values="${board_info_idx }"/>
				<div
					class="data-layout-selected u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-palette-3-light-3 u-layout-wrap-1">
					<div class="u-layout">
						<div class="u-layout-col">
							<div class="u-size-12">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-9 u-layout-cell-1">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-1">
											<p class="u-align-center u-text u-text-default u-text-2">제목
											</p>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-51 u-layout-cell-2">
										<div
											class="u-border-2 u-border-white u-container-layout u-container-layout-2">
											<p class="u-text u-text-default u-text-3">
												<form:input path="content_subject" class="form-control"
													name="${modifyContent.content_subject }" />
												<form:errors path="content_subject" style="color:red;" />
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-12">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-9 u-layout-cell-3">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-3">
											<p class="u-align-center u-text u-text-default u-text-4">
												작성자<br>
											</p>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-51 u-layout-cell-4">
										<div
											class="u-border-2 u-border-white u-container-layout u-container-layout-4">
											<p class="u-text u-text-default u-text-5">
												${modifyContent.user_name }</p>
											<span
												class="u-file-icon u-gradient u-icon u-icon-circle u-icon-1"><img
												src="${root }images/11272422-db773b7e.png" alt=""></span>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-12">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-9 u-layout-cell-5">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-5">
											<p class="u-align-center u-text u-text-default u-text-6">작성날짜
											</p>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-51 u-layout-cell-6">
										<div
											class="u-border-2 u-border-white u-container-layout u-container-layout-6">
											<p class="u-text u-text-default u-text-7">
												${modifyContent.content_date }</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-12">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-60 u-layout-cell-7">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-7">
											<p class="u-align-center u-text u-text-default u-text-8">
												내용<br>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-12">
								<div class="u-layout-row">
									<div
										class="cell-temp-clone u-container-style u-layout-cell u-size-60 u-layout-cell-8">
										<div
											class="u-border-2 u-border-white u-container-layout u-container-layout-8">
											<p class="u-text u-text-default u-text-9">
												<form:textarea path="content_text" class="form-control"
													rows="18" style="width: 100%;" />
												<form:errors path="content_text" style="color:red;" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-layout-wrap-2">
					<div class="u-layout">
						<div class="u-layout-col">
							<div class="u-size-30">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-60 u-layout-cell-9">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-9">
											<p class="u-align-center u-text u-text-default u-text-10">
												<span style="font-weight: 700; font-size: 1.25rem;">이미지</span>
												<br>* 본문 가장 위에 삽입<br>* 일반 파일 첨부는 전체 용량 150MB, 3개까지
												첨부가능, 파일 하나의 용량이 50MB를 초과할 수 없습니다.
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-30">
								<div class="u-layout-row">
									<div
										class="u-container-align-center u-container-style u-layout-cell u-size-60 u-layout-cell-10">
										<div
											class="u-border-2 u-border-white u-container-layout u-valign-middle u-container-layout-10">
											<a
												class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius u-btn-1">
												<form:input type="file" path="upload_file" accept="images/*"
													class="u-align-center u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius u-btn-1" />
												<form:errors path="upload_file" />
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="u-form u-form-1">
					<%-- <form action="https://forms.nicepagesrv.com/v2/form/process"
						class="u-clearfix u-form-horizontal u-form-spacing-10 u-inner-form"
						source="email" name="form" style="padding: 10px;">
						<div class="u-form-email u-form-group">
							<label for="email-5fb5" class="u-label">Hashtag</label> <input
								type="email" placeholder="입력" id="email-5fb5" name="text"
								class="u-input u-input-rectangle" required="">
						</div>
						<div class="u-align-left u-form-group u-form-submit">
							<a href="#" class="u-btn u-btn-submit u-button-style">Submit</a>
							<input type="submit" value="submit" class="u-form-control-hidden">
						</div>
						<div class="u-form-send-message u-form-send-success">Thank
							you! Your message has been sent.</div>
						<div class="u-form-send-error u-form-send-message">Unable to
							send your message. Please fix errors then try again.</div>
						<input type="hidden" value="" name="recaptchaResponse"> <input
							type="hidden" name="formServices"
							value="50d0594d-1c60-31b9-19af-78b3c1587d79">
					</form> --%>
				</div>
				<div class="u-list u-list-1">
					<div class="u-repeater u-repeater-1">
						<div class="u-container-style u-list-item u-repeater-item">
							<div
								class="u-container-layout u-similar-container u-container-layout-11">
								<p class="u-custom-item u-text u-text-default u-text-11">해시태그
									입력받는 곳</p>
							</div>
						</div>
						<div class="u-container-style u-list-item u-repeater-item">
							<div
								class="u-container-layout u-similar-container u-container-layout-12">
								<p class="u-custom-item u-text u-text-default u-text-12">해시태그
									입력받는 곳</p>
							</div>
						</div>
						<div class="u-container-style u-list-item u-repeater-item">
							<div
								class="u-container-layout u-similar-container u-container-layout-13">
								<p class="u-custom-item u-text u-text-default u-text-13">해시태그
									입력받는 곳</p>
							</div>
						</div>
					</div>
				</div>

				<div
					style="display: flex; justify-content: flex-end; gap: 10px; border-radius: 12px;">
					<a
						href="${root }board/board_read?board_info_idx=${board_info_idx}&content_idx=${content_idx}"
						class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white ">목록
					</a> <a href="${root }board/board_delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}"
						class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white ">삭제
					</a>
					<button
						type="submit" class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white ">수정</button>
				</div>
			</form:form>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

 	<!-- jquary무시하고 강제 실행 -->
 	<script>
		$(document).ready(
				function() {
					$("button[type='submit']").off("click").on("click",
							function(event) {
								event.preventDefault(); // 기본 동작 중단 (이 부분은 선택사항입니다)
								$(this).closest("form").submit(); // 폼을 제출합니다
							});
				});
	</script>
</body>

</html>