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

<link rel="stylesheet" href="${root }css/wonil_modal.css" media="screen">



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
<style>

.mk-u-size-60 {
	flex: 60 0 auto;
	justify-content: center;
	background-color: #F8EDEB;
}

.mk-comment-section {
	width: 100%;
	max-width: 600px;
	margin: 0 auto;
	font-family: Arial, sans-serif;
}

.mk-comment, .mk-reply-comment {
	padding: 10px;
	border: 1px solid #e0e0e0;
	border-radius: 10px;
	margin-bottom: 10px;
	background-color: #f9f9f9;
}

.mk-reply-comment {
	margin-left: 40px;
	background-color: #f4f8fc;
}

.mk-comment-header {
	display: flex;
	align-items: center;
	margin-bottom: 5px;
}

.mk-avatar {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	margin-right: 10px;
}

.mk-author {
	font-weight: bold;
	margin-right: 10px;
}

.mk-badge {
	background-color: #FEC89A;
	color: white;
	padding: 3px 5px;
	border-radius: 3px;
	font-size: 12px;
	margin-left: 5px;
}

.mk-timestamp {
	color: #888;
	font-size: 12px;
	margin-left: auto;
}

.mk-comment-content {
	margin-bottom: 10px;
	text-align: left;
}

.mk-comment-footer {
	text-align: right;
}

.mk-reply {
	color: #000000;
	cursor: pointer;
	font-size: 14px;
	background-color: #FEC89A;
	padding: 3px 5px;
	border-radius: 3px;
}

.mk-comment-input {
	display: flex;
	align-items: center;
	padding: 10px;
	border: 1px solid #e0e0e0;
	border-radius: 10px;
	background-color: #f9f9f9;
}

.mk-comment-input input {
	flex: 1;
	border: none;
	outline: none;
	padding: 10px;
	margin-right: 10px;
	border-radius: 5px;
	font-size: 14px;
}

.mk-comment-input .mk-submit-button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

.mk-comment-input .mk-submit-button:hover {
	background-color: #45a049;
}

.mk-reply-item {
    padding: 10px;
    background-color: #f5f5f5;
    border-left: 3px solid #B5838D;
    margin-left: 20px; /* 부모 댓글과 시각적 구분을 위해 들여쓰기 */
    margin-bottom: 10px;
    border-radius: 5px;
    box-shadow: none;
    position: relative;
}

.mk-reply-item::before {
    content: "↳";
    position: absolute;
    left: -15px; /* 대댓글 앞에 위치할 수 있도록 조정 */
    top: 10px;
    font-size: 16px;
    color: #888;
}

.comment-box {
	width: 100%;
	border: 1px solid #e0e0e0;
	border-radius: 8px;
	padding: 10px;
	box-sizing: border-box;
	background-color: #fff;
	font-family: Arial, sans-serif;
}

/* 댓글 입력 구간 css */
.mk2-comment-box {
	width: 100%;
	width: 600px; /* 너비 조정 */
	border: 1px solid #e0e0e0;
	border-radius: 8px;
	padding: 10px;
	box-sizing: border-box;
	background-color: #fff;
	font-family: Arial, sans-serif;
}

.mk2-comment-section {
	width: 100%;
	max-width: 600px;
	margin: 0 auto;
	font-family: Arial, sans-serif;
}

.mk2-comment-header {
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 5px;
	text-align: left; /* 중앙 정렬 */
}

.mk2-comment-input {
	width: 100%;
	height: 60px;
	border: none;
	resize: none;
	outline: none;
	font-size: 14px;
	color: #333;
	background-color: #f9f9f9; /* 연한 배경색 */
	padding: 10px;
	box-sizing: border-box;
	border-radius: 4px;
	margin-bottom: 10px;
}

.mk2-comment-footer {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.mk2-comment-icons {
	display: flex;
	gap: 8px;
}

.mk2-icon-button {
	border: none;
	background: none;
	cursor: pointer;
	padding: 0;
	font-size: 14px; /* 텍스트 크기 */
	display: flex;
	align-items: center;
}

.mk2-icon-button img {
	width: 20px;
	height: 20px;
	margin-right: 5px; /* 아이콘과 텍스트 사이 간격 */
}

.mk2-comment-actions {
	display: flex;
	gap: 10px;
	justify-content: right;
}

.mk2-cancel-button, .mk2-submit-button {
	font-size: 14px;
	border: none;
	background: none;
	cursor: pointer;
	color: #888;
}

.mk2-submit-button {
	color: #1e88e5;
	font-weight: bold;
}

.mk-reply-arrow {
    font-size: 14px; /* 적절한 크기로 설정 */
    color: #888; /* 화살표 색상 설정 */
    display: inline-block; /* 블록 요소로 설정하여 정렬 문제 해결 */
    margin-right: 5px; /* 화살표와 텍스트 사이의 여백 설정 */
}





/* write와 같은 css */




/* 공통 스타일 */
body {
    font-family: 'Noto Sans', sans-serif;
    background-color: #F8EDEB;
    color: #6D6875;
}

.form-wrapper, .read-wrapper {
    max-width: 1000px;
    margin: 30px auto;
    padding: 30px;
    background-color: #FAE1DD;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

.mk-header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;
    padding: 10px;
}

/* 글쓰기 페이지의 타이틀 스타일 */
.form-title, .read-title {
    font-size: 1.5rem;
    font-weight: bold;
    color: #B5838D;
    text-align: center;
    margin-bottom: 20px;
}

/* 입력 필드 및 텍스트 영역 스타일 */
.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
}

/* 글 읽기 페이지의 테이블 스타일 추가 */
.read-group {
    display: flex;
    flex-direction: column;
    margin-bottom: 20px;
}

.read-group label {
    font-weight: bold;
    color: #6D6875;
    margin-bottom: 8px;
}

.read-group .content {
    background-color: #FFF0F0;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #B5838D;
    margin-bottom: 20px;
}

/* 이미지가 튀어나오지 않도록 조정 */
.read-group img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    margin-top: 10px;
}

/* 업로드 섹션 */
.upload-section {
    margin-top: 20px;
    text-align: center;
    border: 2px dashed #B5838D;
    padding: 20px;
    border-radius: 10px;
    background-color: #FFF0F0;
}

/* 업로드 파일의 텍스트 스타일 */
.upload-section input[type="file"] {
    margin-top: 10px;
}

.upload-section label {
    font-weight: bold;
    color: #B5838D;
}

/* 해시태그 스타일 */
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

/* 푸터 */
.form-footer {
    text-align: center;
    margin-top: 30px;
}


.mk-form-content {
    width: 900px; /* 좌우 길이 900px */
    background-color: #fff; /* 흰색 배경 */
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    text-align: center;
}




/* 즐겨찾기버튼 */
.u-file-icon img {
    border-radius: 50%; /* 이미지를 원형으로 */
    border: 2px solid #f4a261; /* 테두리 추가, 필요에 따라 색상 조정 */
    width: 100px; /* 이미지 크기 조정 */
    height: 100px; /* 이미지 크기 조정 */
    object-fit: cover; /* 이미지가 영역을 꽉 채우도록 */
}


/* 우측정렬을 시키기 위한 부모값 */
.parent-element {
    display: flex;
    justify-content: flex-end;
}

.mk-hash-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;
    padding: 10px;
   	margin: 10px;
}

.iconSize {
    width: 50px; /* 가로 크기 */
    height: 50px; /* 세로 크기 */
    object-fit: cover; /* 이미지 비율을 유지하며 잘라냄 */
}

</style>
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

<section class="form-wrapper" id="sec-0fc5">
	<div class="mk-header-container">
       	<div class="parent-element">
       		<div class="u-border-2 u-border-hover-palette-3-base u-border-palette-1-base u-btn u-btn-round u-button-style u-none u-radius u-text-palette-2-base u-btn-1" id="addfavorite">
					<img class="iconSize" src= "${root }${img}"/>					
			</div>
		</div>
		<div class="read-title">${readContent.content_subject}</div>
		<div>조회수 : ${readContent.content_views }</div>
	</div>
        <div class="form-group">
            <label>작성자</label>
             <c:choose>
				<c:when test="${readContent.content_isAnonymous eq false}">
					<button class="wonil_modal_user_button u-text u-text-default u-text-7" id="wonil_modal_user_name">
						${readContent.user_name}
					</button>
				</c:when>
				<c:otherwise>
					익명
				</c:otherwise>
			</c:choose>
        </div>

        <div class="form-group">
            <label>작성 날짜</label>
            <p class="form-control">${readContent.content_date}</p>
        </div>
 		<label>내용</label>
        <div class="mk-form-content">
            											<c:if test="${not empty readContent.content_files}">
												<div style="text-align: center;">
													<c:forEach var="file" items="${readContent.content_files}">
														<label for="content_file"></label>
														<img src="${root}getProfileImage/${file}" width="50%"
															style="margin-bottom: 10px;" />
													</c:forEach>
												</div>
											</c:if>
											${readContent.content_text }
        </div>
        
        <div id="hashtag-container">
        	<div></div>
        </div>
        <!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓모달입니다↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
		<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓모달입니다↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->

						<div id="wonil_modal" class="wonil_modal">
							<div class="wonil_modal_content">
								<span class="wonil_modal_close">&times;</span>
								<div class="wonil_modal_body">
									<img id="wonil_modal_user_img" src="" alt="User Image"
										class="wonil_modal_user_img">
									<div class="wonil_modal_user_info">
										<p class="user_combined_info"
											id="wonil_modal_user_nickname_gender"></p>
										<p id="wonil_modal_user_statustext"></p>
										<p id="wonil_modal_user_zodiac"></p>
										<button class="wonil_modal_button profile">상세 프로필</button>
										<button class="wonil_modal_button chat">1:1 chat</button>
									</div>
								</div>
							</div>
						</div>

		<!-- ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑모달입니다↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ -->
		<!-- ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑모달입니다↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ -->

        
        
        <div class="mk-hash-container">
        <div>
        	<label>해시태그</label>
       		<c:forEach var="hashtag" items="${hashTag}">
          	  <a class="hashtag-items">#${hashtag}  </a>
      		</c:forEach>
        </div>
        <div>
        <c:if test="${readContent.user_idx == user_idx }">
				<a href="${root }board/board_modify?content_idx=${content_idx }&board_info_idx=${board_info_idx}"
				style="padding: 10px 20px; background-color: #FFCDB2; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">수정</a>
			</c:if>
		<c:choose>
			<c:when test="${board_info_idx == 4}">
				<a href="${root }board/board_main_share?board_info_idx=${board_info_idx}"
				style="padding: 10px 20px; background-color: #E5989B; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">목록</a>
			</c:when>
			<c:otherwise>
				<a href="${root }board/board_main?board_info_idx=${board_info_idx}"
				style="padding: 10px 20px; background-color: #E5989B; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">목록</a>
			</c:otherwise>
		</c:choose>
			</div>
		</div>
</section>
	<section class="u-align-center u-clearfix u-section-4" id="sec-8bdb">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-layout-wrap-1">
				<div class="u-layout">
						<div class="u-layout-col" style="background-color: #F8EDEB;">
						<div class="mk-u-size-60">

							<!-- 댓글 출력 구간 -->
							<div class="mk2-comment-box">
								<div>댓글 수 : ${count}</div>
								<div class="mk-comment-section" id="commentListArea"></div>
							</div>
						</div>
						<!-- 댓글 입력 구간 -->
						<form action="${root }board/addComment"
							class="mk2-comment-section">
							<div class="mk2-comment-box">
								<div class="mk2-comment-header">
									<c:choose>
										<c:when test="${readContent.user_idx == loginUserBean.user_idx}">
											<c:choose>
												<c:when test="${readContent.content_isAnonymous}">
													익명
												</c:when>
												<c:otherwise>
													${loginUserBean.user_nickname }
												</c:otherwise>
											</c:choose>
										</c:when>
											<c:otherwise>
												${loginUserBean.user_nickname }
											</c:otherwise>
										</c:choose>
								</div>
								<textarea class="mk2-comment-input" placeholder="내용을 입력해주세요"
									id="comment_text"></textarea>
								<div class="mk2-comment-footer"></div>
								<div class="mk2-comment-actions">
									<button class="mk-reply" type="submit" id="commentAdd">등록</button>
									<!-- <button class="mk2-cancel-button">취소</button> -->
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>

		<!-- 댓글 구간 -->
		<div class="u-expanded-width u-form u-form-1">
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script>
			$(document).ready(function() {
			    $("#commentAdd").on("click", function(event) {
			        event.preventDefault();
			        var comment_text = $("#comment_text").val();
			        var user_idx = ${loginUserBean.user_idx};
			        var content_idx = ${content_idx};
			        var param = {};
			        param.comment_text = comment_text;
			        param.user_idx = user_idx;
			        param.content_idx = content_idx;
			        
			        if (comment_text !== "") {
			            $.ajax({
			                type: "post",
			                url: "${root}board/addComment",
			                data: param,
			                success: function(result) {
			                    var msg;
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
			        } else {
			            alert("내용을 입력해 주세요.");
			        }
			    });
			    
			    // 댓글을 출력 및 삭제 수정 버튼 AJAX
			    function CommentList() {
			        var content_idx = ${content_idx};
			        var user_idx = ${loginUserBean.user_idx};
			        var anonymous = ${readContent.content_isAnonymous};
			        var writer_idx = ${readContent.user_idx};
			        var user_name = "${user_name}";
			        
			        console.log("content_idx : ", content_idx);
			        $.ajax({
			            type: "get",
			            url: "${root}board/getCommentList",
			            data: {"content_idx": content_idx},
			            dataType: "json",
			            success: function(rList) {
			                var $rArea = $("#commentListArea");
			                if (rList.length === 0) {
			                    $rArea.html("<li>등록된 댓글이 없습니다.</li>");
			                } else {
			                    $rArea.html("");
			                    $.each(rList, function(i) {
			                    	var $comment = $("<div>").prop("class", "mk-comment");
			                        var $commentHeader = $("<div>").prop("class", "mk-comment-header");
			                       	if (rList[i].comment_step == 1) {
			                       		$comment = $("<div>").prop("class", "mk-reply-item");
			                       	}
			                        var $author = $("<span>").prop("class", "mk-author").html(rList[i].user_nickname);
			                        
			                       	if(rList[i].user_idx == writer_idx) {
			                        	if(anonymous == true) {
			                        		$author.html("익명");
			                        	}else {
			                        		$author.html(rList[i].user_nickname);
			                        	}
			                        } else {
			                        	$author.html(rList[i].user_nickname);
			                        }
			                        var $timestamp = $("<span>").prop("class", "mk-timestamp").html(rList[i].comment_date);
			                        var $commentContent = $("<div>").prop("class", "mk-comment-content").html(rList[i].comment_text);
			                        var $comment1 = rList[i].comment_parent_idx;
			                        var $comment2 = rList[i].comment_idx;
			                        var $commentFooter = $("<div>").prop("class", "mk-comment-footer");
			                        if (rList[i].user_idx == writer_idx) {
			                        	var $badge = $("<span>").prop("class", "mk-badge").html("작성자");
			                        }
			                     	
			                        //답글달기 버튼
			                        	 var $reply = $("<button>")
				                            .prop("class", "mk-reply")
				                            .text("답글 달기")
				                            .on("click", function() {
				                            	$(this).text("취소 하기");
			                            	
			                            	//답글창 중복 방지
			                            	var $existingReplyBox = $reply.closest('.mk-comment-section').find(".mk2-comment-box");
											
											if ($existingReplyBox.length > 0) {
												console.log("답글 박스가 이미 존재합니다. 제거합니다.");
											    $existingReplyBox.remove();
											    $(this).text("답글 달기");
											    return;
			                                }
			                                var $commentBox = $("<div>").prop("class", "mk2-comment-box");
			                                var $header = $("<div>").prop("class", "mk2-comment-header");
			                                var $name = $("<span>").prop("class", "mk-author").html(user_name);
			                                
			                                if(user_idx == writer_idx) {
					                        	if(anonymous == true) {
					                        		$name.html("익명");
					                        	}else {
					                        		$name.html(user_name);
					                        	}
					                        } else {
					                        	$name.html(user_name);
					                        }
			                                
			                                var $text = $("<textarea>").prop("id", "comment_text").prop("class", "mk2-comment-input");
			                                var $action = $("<div>").prop("class", "mk2-comment-actions");
			                                //var $writer_name = $("<div>").prop("class", "mk-author").text("댓글 작성자 ").html(rList[i].user_nickname);
			                                var $addReply = $("<button>")
			                                    .text("등록")
			                                    .prop("class", "mk2-submit-button")
			                                    .on("click", function() {
			                                        var comment_parent_idx = $comment1;
			                                        var comment_text = $text.val();
			                                        var user_idx = ${loginUserBean.user_idx};
			                                        var content_idx = ${content_idx};
			                                        var type = "reply";
			                                        var param2 = {
			                                            comment_text: comment_text,
			                                            user_idx: user_idx,
			                                            content_idx: content_idx,
			                                            comment_parent_idx: comment_parent_idx,
			                                            type : type
			                                        };
			                                        $.ajax({
			                                            type: "post",
			                                            url: "${root}board/addComment",
			                                            data: param2,
			                                            success: function(result) {
			                                                var msg;
			                                                switch (result) {
			                                                    case 1:
			                                                        msg = "답글이 등록되었습니다.";
			                                                        console.log("답글등록 확인");
			                                                        $commentBox.remove();
			                                                        CommentList();
			                                                        break;
			                                                    case 0:
			                                                        msg = "답글 등록 실패";
			                                                        break;
			                                                    case -1:
			                                                        msg = "답글 등록 오류 발생";
			                                                        break;
			                                                }
			                                                alert(msg);
			                                            }
			                                        });
			                                    });
			                                $commentBox.append($header).append($text).append($action);
			                                $header.append($name);
			                                $action.append($addReply);
			                                $(this).closest('.mk-comment').after($commentBox);
			                            });
			                        
			                        //삭제 버튼
			                        
			                        var $deleteIcon = $("<button>")
			                            .css({
			                                "background-image": "url('${root}images/4021546.png')",
			                                "background-size": "cover",
			                                "cursor": "pointer",
			                                "background-color": "transparent",
			                                "width": "25px",
			                                "height": "25px",
			                                "border": "none"
			                            })
			                            .on("click", function(){
			                                var comment_idx = $comment2;
			                                
			                                if (confirm("댓글을 삭제하시겠습니까?")) {
			                                    $.ajax({
			                                        type: "get",
			                                        url: "${root}board/deleteComment",
			                                        data: {"comment_idx": comment_idx},
			                                        dataType: "json",
			                                        success: function() {
			                                            alert("댓글이 삭제되었습니다");
			                                            CommentList();
			                                        },
			                                        error: function() {
			                                            console.log("제발 삭제하게 해줘");
			                                        }
			                                    });
			                                }
			                            });
			                        var isEditMode = false;
			                        var $modifyIcon = $("<button>")
			                            .css({
			                                "background-image": "url('${root}images/505261.png')",
			                                "background-size": "cover",
			                                "cursor": "pointer",
			                                "background-color": "transparent",
			                                "width": "25px",
			                                "height": "25px",
			                                "border": "none"
			                            }).on("click", function() {
			                            if (!isEditMode) {
			                            	$commentContent.attr("contenteditable", "true");
			                                $commentContent.focus();
			                                $(this).text("확인");
			                            } else {
			                                $commentContent.attr("contenteditable", "false");
			                                const updatedCommentText = $commentContent.html();
			                                const comment_idx = rList[i].comment_idx;
			                                $.ajax({
			                                    type: "post",
			                                    url: "${root}board/modifyComment",
			                                    data: JSON.stringify({
			                                        "comment_text": updatedCommentText,
			                                        "comment_idx": comment_idx
			                                    }),
			                                    contentType: "application/json",
			                                    success: function(response) {
			                                        console.log("응답 데이터:", response);
			                                        CommentList();
			                                    }
			                                });
			                            }
			                            isEditMode = !isEditMode;
			                        });
			                        if (rList[i].user_idx == ${loginUserBean.user_idx}) {
			                            $commentFooter.append($modifyIcon).append($deleteIcon);
			                        }
			                        $commentHeader.append($author).append($badge).append($timestamp);
			                        $comment.append($commentHeader);
			                        $comment.append($commentContent);
			                        if(rList[i].comment_step == 0){
			                        	$commentFooter.append($reply);
			                        }
			                        $comment.append($commentFooter);
			                        
			                        $rArea.append($comment);
			                    });
			                }
			            },
			            error: function() {
			                console.log("댓글 목록 조회 ajax 통신 실패");
			            }
			        });
			    }
			    CommentList();
			});
				</script>
				
				<!-- 즐겨찾기 버튼 ajax -->
				<script>
				$(document).ready(function() {
					$("#addfavorite").on("click", function(event) {
						event.preventDefault();
						var user_idx = ${loginUserBean.user_idx};
						var content_idx = ${content_idx};
						var favorite_img = '${img}';
						var favoriteOn = '${favoriteOn}';
						var favoriteOff = '${favoriteOff}';
						
						var param = {};
						param.user_idx = user_idx;
						param.content_idx = content_idx;
						
						console.log(content_idx);
						console.log(user_idx);
						
						$.ajax({
							type:"post",
							url: "${root}board/addfavorite",
							data: param,
							success: function() {
								if(favorite_img === favoriteOff) {
									alert("즐겨찾기에 추가되었습니다.");
								} else if(favorite_img === favoriteOn) {
									alert("즐겨찾기에서 제외되었습니다.");
								}
								location.href="${root}board/board_read?content_idx=${content_idx}&board_info_idx=${board_info_idx}";
							}
						})
					})
				})
				</script>
		</div>
	</section>
	<section class="u-clearfix u-section-5" id="sec-5822">
		<div class="u-clearfix u-sheet u-sheet-1">
		<c:if test="${not empty nextContent}">
			<a href="${root}/board/board_read?content_idx=${nextContent.content_idx}&board_info_idx=${board_info_idx}"
				class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-1">Next&nbsp;<span
				class="u-icon u-text-white">
			<svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px"
						style="width: 1em; height: 1em;">
						<path
							d="M506.134,241.843c-0.006-0.006-0.011-0.013-0.018-0.019l-104.504-104c-7.829-7.791-20.492-7.762-28.285,0.068 c-7.792,7.829-7.762,20.492,0.067,28.284L443.558,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h423.557 l-70.162,69.824c-7.829,7.792-7.859,20.455-0.067,28.284c7.793,7.831,20.457,7.858,28.285,0.068l104.504-104 c0.006-.006,0.011-.013,0.018-.019C513.968,262.339,513.943,249.635,506.134,241.843z"></path></svg></span>
			</a>
			</c:if>
			<c:if test="${empty nextContent}">
			<a class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-1" id="nextButton">없음&nbsp;<span
				class="u-icon u-text-white">
			<svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px"
						style="width: 1em; height: 1em;">
						<path
							d="M506.134,241.843c-0.006-0.006-0.011-0.013-0.018-0.019l-104.504-104c-7.829-7.791-20.492-7.762-28.285,0.068 c-7.792,7.829-7.762,20.492,0.067,28.284L443.558,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h423.557 l-70.162,69.824c-7.829,7.792-7.859,20.455-0.067,28.284c7.793,7.831,20.457,7.858,28.285,0.068l104.504-104 c0.006-.006,0.011-.013,0.018-.019C513.968,262.339,513.943,249.635,506.134,241.843z"></path></svg></span>
			</a>
			</c:if>
			
			<c:if test="${not empty previousContent}">
	    		<a href="${root}/board/board_read?content_idx=${previousContent.content_idx}&board_info_idx=${board_info_idx}"
				class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-2">
				<span class="u-file-icon u-icon u-text-white">
				<img src="${root }images/120826-a013365f.png" alt=""></span>&nbsp;Next </a>
			</c:if>
			<c:if test="${empty previousContent}">
			<a class="u-btn u-btn-round u-button-style u-hover-palette-1-light-2 u-palette-1-base u-radius u-btn-2" id="previousButton">
  			  <span class="u-file-icon u-icon u-text-white">
				<img src="${root }images/120826-a013365f.png" alt=""></span>&nbsp;없음 </a>
			</c:if>

		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

	<script>
   		document.getElementById("wonil_modal_user_name").onclick = function() {
        var userName = this.innerText;
        var root = "${root}"; 
        var sender_idx = "${loginUserBean.user_idx}";

        fetch('${root}/getUserInfo?user_name=' + encodeURIComponent(userName))
            .then(response => response.text()) 
            .then(text => {
                try {
                    const data = JSON.parse(text);
                    const imageUrl = root + '/getProfileImage/' + data.user_img;  
                    const profileUrl = `${root}user/profile?user_idx=` + data.user_idx;
                    const chatUrl = `${root }chat/room?sender_idx=` + sender_idx + `&receiver_idx=` + data.user_idx;
                    
                    
                    document.getElementById("wonil_modal_user_img").src = imageUrl;
                   	/* document.getElementById("wonil_modal_user_nickname").innerText = data.user_nickname;
                    document.getElementById("wonil_modal_user_gender").innerText = data.user_gender; */
                    document.getElementById('wonil_modal_user_nickname_gender').innerText = data.user_nickname + " (" + data.user_gender + ")";
                    document.getElementById("wonil_modal_user_statustext").innerText = "'" + data.user_statustext + "'";
                    document.getElementById("wonil_modal_user_zodiac").innerText = data.user_zodiac;
                    
                    document.querySelector('.wonil_modal_button.profile').onclick = function() {
                        location.href = profileUrl;
                    };
                    document.querySelector('.wonil_modal_button.chat').onclick = function() {
                    	const width = 800;
                        const height = 600;
                        const left = (window.screen.width - width) / 2;
                        const top = (window.screen.height - height) / 2;
                        window.open(chatUrl, 'ChatRoomWindow', 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
                    };
                    
                    document.getElementById("wonil_modal").style.display = "block";
                } catch (error) {
                    console.error('Parsing error:', error);
                    console.error('Received text:', text);  
                    alert("사용자 정보를 불러오는데 실패했습니다. 다시 시도해주세요.");
                    document.getElementById("wonil_modal").style.display = "block";
                }
            })
            .catch(error => {
                console.error('Error fetching user info:', error);
                alert("사용자 정보를 불러오는데 실패했습니다. 다시 시도해주세요.");
                document.getElementById("wonil_modal").style.display = "block";
            });
    };

    document.querySelector(".wonil_modal_close").onclick = function() {
        document.getElementById("wonil_modal").style.display = "none";
    };

    
    window.onclick = function(event) {
        if (event.target == document.getElementById("wonil_modal")) {
            document.getElementById("wonil_modal").style.display = "none";
        }
    };
</script>

<script>

$(document).ready(function() {
    var previousButton = document.getElementById("previousButton");
    if (previousButton) {
        previousButton.addEventListener("click", function() {
            alert("가장 마지막글입니다.");
        });
    }
});

$(document).ready(function() {
    var previousButton = document.getElementById("nextButton");
    if (previousButton) {
        previousButton.addEventListener("click", function() {
            alert("가장 최신글입니다.");
        });
    }
});

</script>


</body>
</html>