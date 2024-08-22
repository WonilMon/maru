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
<title>sharing_read</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/sharing_read.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">







<script type="application/ld+json">{
		"@context": "http://schema.org",X
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
<meta name="twitter:title" content="sharing_read">
<meta name="twitter:description" content="">
<meta property="og:title" content="sharing_read">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-clearfix u-section-2" id="sec-0fc5">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-align-center u-text u-text-default u-text-1">Read</p>
			<p class="u-align-center u-text u-text-default u-text-2">views_${readContent.content_views }</p>
			<p class="u-align-center u-text u-text-default u-text-3">comment_</p>
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
										<p class="u-align-center u-text u-text-default u-text-4">제목
										</p>
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-size-51 u-layout-cell-2">
									<div
										class="u-border-2 u-border-white u-container-layout u-container-layout-2">
										<p class="u-text u-text-default u-text-5">
											${readContent.content_subject }</p>
										<a href="#"
											class="u-border-2 u-border-hover-palette-3-base u-border-palette-1-base u-btn u-btn-round u-button-style u-none u-radius u-text-palette-2-base u-btn-1"><span
											class="u-file-icon u-icon u-text-palette-1-light-1 u-icon-1"><img
												src="${root }images/2099045-6f30adb4.png" alt=""></span> </a>
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
										<p class="u-align-center u-text u-text-default u-text-6">
											작성자<br>
										</p>
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-size-51 u-layout-cell-4">
									<div
										class="u-border-2 u-border-white u-container-layout u-container-layout-4">
										<p class="u-text u-text-default u-text-7">
											${readContent.user_name }</p>
										<span
											class="u-border-2 u-border-palette-1-base u-file-icon u-gradient u-icon u-icon-circle u-icon-2"><img
											src="${root }images/2076218-122ef5be.png" alt=""></span>
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
										<p class="u-align-center u-text u-text-default u-text-8">작성날짜
										</p>
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-size-51 u-layout-cell-6">
									<div
										class="u-border-2 u-border-white u-container-layout u-container-layout-6">
										<p class="u-text u-text-default u-text-9">
											${readContent.content_date }</p>
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
										<p class="u-align-center u-text u-text-default u-text-10">
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
										<p class="u-text u-text-default u-text-11">
											<c:if test="${readContent.content_file != null }">
												<div class="form-group" style="text-align: center;">
													<label for="content_file"></label> <img
														src="${root }upload/${readContent.content_file}"
														width="50%" />
												</div>
											</c:if>

											${readContent.content_text }
										</p>
									</div>
								</div>
							</div>
						</div>
						<!-- 첨부 이미지 띄울 곳 -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-clearfix u-section-3" id="sec-8618">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div class="u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div class="u-container-style u-list-item u-repeater-item">
						<div
							class="u-container-layout u-similar-container u-container-layout-1">
							<a href="#"
								class="u-active-none u-border-2 u-border-active-palette-2-dark-1 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-border-palette-1-base u-btn u-button-style u-custom-item u-hover-none u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-1">hashtag1
							</a>
						</div>
					</div>
					<div class="u-container-style u-list-item u-repeater-item">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<a href="#"
								class="u-active-none u-border-2 u-border-active-palette-2-dark-1 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-border-palette-1-base u-btn u-button-style u-custom-item u-hover-none u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-2">
								hashtag2</a>
						</div>
					</div>
					<div class="u-container-style u-list-item u-repeater-item">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<a href="#"
								class="u-active-none u-border-2 u-border-active-palette-2-dark-1 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-border-palette-1-base u-btn u-button-style u-custom-item u-hover-none u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-3">
								hashtag3</a>
						</div>

					</div>

				</div>

				<div class="u-repeater u-repeater-2"
					style="display: flex; justify-content: flex-end; align-items: center;">
					<div class="u-container-style u-list-item u-repeater-item"
						style="display: flex; gap: 10px;">
						<div>
							<div class="u-container-style u-list-item u-repeater-item">
								<a
									href="${root }board/board_main?board_info_idx=${board_info_idx}"
									class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white ">목록
								</a>
								<c:if test="${readContent.user_idx == user_idx }">
									<a
										href="${root }board/board_modify?content_idx=${content_idx }&board_info_idx=${board_info_idx}"
										class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white ">수정
									</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-center u-clearfix u-section-4" id="sec-8bdb">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-col">
						<div class="u-size-60">
							<div class="u-layout-row" id="commentListArea">
								<div
									class="u-container-align-center u-container-style u-layout-cell u-palette-5-light-2 u-size-9 u-layout-cell-1">
									<div
										class="u-container-layout u-valign-middle u-container-layout-1">
										<p class="u-align-center u-text u-text-default u-text-1"></p>
									</div>
								</div>
								<div
									class="u-container-style u-layout-cell u-size-51 u-layout-cell-2">
									<div class="u-container-layout u-container-layout-2">
										<span class="u-file-icon u-icon u-icon-1"> <img
											src="${root }images/4021546.png" alt="">
										</span> <span class="u-file-icon u-icon u-icon-2"> <img
											src="${root }images/505261.png" alt="">
										</span>
										<p class="u-text u-text-2">
											<br>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 댓글 구간 -->




			 <div class="u-expanded-width u-form u-form-1">
				<form action="${root }board/addComment"
					class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form"
					style="padding: 15px;" source="email">

					<div class="u-form-group u-form-name u-label-none">
						<label for="name-ef64" class="u-label">Name</label> <input
							type="hidden" name="content_idx" id="context_idx"
							value="${product.PRODUCT_CODE }"> <input type="text"
							placeholder="내용을 입력해주세요" id="comment_text"
							class="u-input u-input-rectangle" />
					</div>

					<div class="u-form-group u-form-submit">
						<button type="submit" class="u-btn u-btn-submit u-button-style" id="commentAdd">Submit</button>
						
					</div>
					<input type="hidden" value="" name="recaptchaResponse"> <input
						type="hidden" name="formServices"
						value="50d0594d-1c60-31b9-19af-78b3c1587d79">
				</form>

				<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			 	<script>
			 	$(document).ready(function() {
			 	    $("#commentAdd").on("click", function(event) {
			 	    	
			 	    	console.log(${content_idx});
			 	    	
			 	    	
			 	    	event.preventDefault();
			 	        var comment_text = $("#comment_text").val();
			 	        var user_idx = ${readContent.user_idx};
			 	        var content_idx = ${content_idx};
			 	        
			 	        var param = {};
			 	        param.comment_text = comment_text;
			 	        param.user_idx = user_idx;
			 	        param.content_idx = content_idx;
			 	        
			 	        
			 	       console.log("아작스 시작전");
			 	        $.ajax({
			 	            type: "post",
			 	            url: "${root}board/addComment",
			 	            data: param,
			 	            success: function(result) {
			 	                var msg;
			 	               console.log("아작스 시작후");
			 	                switch (result) {
			 	                    case 1:
			 	                        msg = "댓글이 등록되었습니다.";
			 	                        console.log("댓글등록 확인");
			 	                        $("#comment_text").val("");
			 	                        CommentList();
			 	                        break;
			 	                    case 0:
			 	                        msg = "댓글 등록 실패";
			 	                        break;
			 	                    case -1:
			 	                        msg = "댓글 등록 오류 발생";
			 	                        break;
			 	                }

			 	                alert(msg);
			 	            }
			 	        });
			 	    });

			 	    function CommentList() {
			 	        var content_idx = ${content_idx};
			 	        
			 	       console.log("댓글리스트 확인전");
			 	       console.log("content_idx : ", content_idx);
			 	        $.ajax({
			 	            type: "get",
			 	            url: "${root}board/getCommentList",
			 	            data: {"content_idx": content_idx},
			 	            dataType: "json",
			 	            success: function(rList) {
			 	                var $rArea = $("#commentListArea");
			 	               console.log("댓글리스트 확인후");
			 	                if (rList == "") {
			 	                    $rArea.html("<li>등록된 댓글이 없습니다.</li>");
			 	                } else {
			 	                    $rArea.html("");
									console.log("우우아아")
			 	                    $.each(rList, function(i) { // 콤마로 수정
			 	                        var $li = $("<li>");
			 	                        var $rWriter = $("<span>").prop("class", "rWriter").html(rList[i].user_nickname);
			 	                        var $rDate = $("<span>").prop("class", "wDate").html(rList[i].comment_date);
			 	                        var $rText = $("<p>").prop("class", "comment_text").html(rList[i].comment_text);
			 	                        var $hr = $("<hr>");

			 	                        $li.append($rWriter).append($rDate).append($rText); // 수정된 부분
			 	                        $rArea.append($li).append($hr); // $rArea 오타 수정
			 	                    });
			 	                }
			 	            },
			 	            error: function() {
			 	                console.log("댓글 목록 조회 ajax 통신 실패");
			 	            }
			 	        });
			 	    }

			 	    $(function() {
			 	        CommentList();

			 	        // 10초마다 댓글 갱신
			 	        setInterval(function() {
			 	            CommentList(); // 함수 호출 괄호 추가
			 	        }, 10000);
			 	    });
			 	});

				</script>

			</div>
		</div>

	</section>

	<section class="u-claerfix u-section-5" id="sec-8282">
		<div class="u-clearfix u-sheet u-sheet-1">

			<div class="">
				<span class="" id="comment-number">댓글 수 : </span> <span class=""
					id="comment-count"></span>
			</div>

			<div class="comment-input"></div>
		</div>
	</section>


	<section class="u-clearfix u-section-5" id="sec-5822">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="#"
				class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-1">Next&nbsp;<span
				class="u-icon u-text-white"><svg class="u-svg-content"
						viewBox="0 0 512 512" x="0px" y="0px"
						style="width: 1em; height: 1em;">
						<path
							d="M506.134,241.843c-0.006-0.006-0.011-0.013-0.018-0.019l-104.504-104c-7.829-7.791-20.492-7.762-28.285,0.068 c-7.792,7.829-7.762,20.492,0.067,28.284L443.558,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h423.557 l-70.162,69.824c-7.829,7.792-7.859,20.455-0.067,28.284c7.793,7.831,20.457,7.858,28.285,0.068l104.504-104 c0.006-.006,0.011-.013,0.018-.019C513.968,262.339,513.943,249.635,506.134,241.843z"></path></svg></span>
			</a> <a href="#"
				class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-2"><span
				class="u-file-icon u-icon u-text-white"><img
					src="${root }images/120826-a013365f.png" alt=""></span>&nbsp;Next </a>
		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>