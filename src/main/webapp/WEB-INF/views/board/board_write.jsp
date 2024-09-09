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
		<form:form action="${root}board/board_write_pro"
			modelAttribute="writeContentBean" method="post"
			enctype="multipart/form-data">
			<form:hidden path="content_idx" />
			<form:hidden path="board_info_idx" />

			<div class="form-title">글쓰기</div>

			<div class="form-group">
				<label for="subject">제목</label>
				<form:input path="content_subject" class="form-control" />
				<form:errors path="content_subject" class="form-errors" />
			</div>

			<div class="form-group">
				<label>작성자</label>
				<span><c:choose>
													<c:when test="${img == anonymousOff }">
														${user_name }
														<form:hidden path="content_isAnonymous" value="false" />
													</c:when>
													<c:otherwise>
														익명
														<form:hidden path="content_isAnonymous" value="true" />
													</c:otherwise>
												</c:choose></span>
												<c:if test="${board_info_idx == 2 }">
											<a
												class="u-border-2 u-border-hover-palette-3-base u-border-palette-1-base u-btn u-btn-round u-button-style u-none u-radius u-text-palette-2-base u-btn-1"
												id="anonymousBtn"> <span
												class="u-file-icon u-gradient u-icon u-icon-circle u-icon-1">
													<img src="${root }${img }">
											</span>
											</a>
											</c:if>
			</div>

			<div class="form-group">
				<label>작성날짜</label>
				<p>${today}</p>
			</div>

			<div class="form-group">
				<label for="content">내용</label>
				<form:textarea path="content_text" class="form-control" />
				<form:errors path="content_text" class="form-errors" />
			</div>


			<div class="upload-section">
				<label for="upload_file">이미지 첨부</label>
				<form:input type="file" path="upload_files" accept="image/*"
					multiple="multiple" id="upload_files"></form:input>
				<div id="file-preview"></div>


			</div>

			<input type="hidden" id="hashtag-input-hidden" name="hashtags"
				value="" />

			<div class="form-group">
				<label for="hashtag-input">해시태그</label> <input type="text"
					id="hashtag-input" class="form-control" placeholder="해시태그 입력 후 엔터" />
				<div id="hashtag-container"></div>
			</div>


			<div class="form-footer">
			
			<c:choose>
				<c:when test="${board_info_idx == 4}">
					<a href="board_main_share?board_info_idx=${writeContentBean.board_info_idx}"
					style="padding: 10px 20px; background-color: #FFCDB2; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">취소</a>
				</c:when>
				<c:otherwise>
					<a href="board_main?board_info_idx=${writeContentBean.board_info_idx}"
					style="padding: 10px 20px; background-color: #FFCDB2; color: #6D6875; text-decoration: none; border-radius: 5px; margin-right: 10px;">취소</a>
				</c:otherwise>
			</c:choose>
			<form:button type="submit" style="padding: 10px 20px; background-color: #E5989B; color: white; border: none; border-radius: 5px;">등록</form:button>
			</div>
		</form:form>
	</section>

	<script src="${root}js/jquery.js"></script>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script>

	$(document).ready(function() {
	    var hashtagList = [];

	    // 엔터키로 해시태그 추가
	    $('#hashtag-input').on('keypress', function(e) {
	        if (e.which === 13) {
	            e.preventDefault();
	            var hashtag = $(this).val().trim();  
	            if (hashtag !== '' && !hashtagList.includes(hashtag)) {
	                hashtagList.push(hashtag);
	                updateHashtagContainer();
	                $(this).val(''); 
	            }
	        }
	    });

	    // 해시태그 삭제
	    $(document).on('click', '.remove-hashtag', function() {
	        var hashtagToRemove = $(this).data('hashtag');
	        hashtagList = hashtagList.filter(function(tag) {
	            return tag !== hashtagToRemove;
	        });
	        updateHashtagContainer();
	    });

	    // 해시태그 목록 업데이트
        function updateHashtagContainer() {
            var container = $('#hashtag-container');
            container.empty();
            hashtagList.forEach(function(tag) {
                container.append(`
                    <span class="hashtag-item">#` + tag + `
                        <button class="remove-hashtag" data-hashtag=` + tag + `>x</button>
                    </span>
                `);
            });
            $('#hashtag-input-hidden').val(hashtagList.join(',')); 
        }
    });
</script>


	<script>
    $(document).ready(function() {
        $('#upload_files').on('change', function() {

            var files = this.files;
            $('#file-preview').empty();
            if (files.length > 0) {
                for (var i = 0; i < files.length; i++) {
                    var reader = new FileReader();
                    var file = files[i];
                    reader.onload = function(e) {
                        // 이미지 미리보기 추가
                        $('#file-preview').append('<img src="' + e.target.result + '" alt="Image" style="max-width: 200px; margin: 10px;">');
                    }

     		 reader.readAsDataURL(files[i]); 
                }
            }
        });
    });
</script>

	<script>
const dataTransfer = new DataTransfer();

$("#upload_files").change(function(){
   
    let fileArr = document.getElementById("upload_files").files

    if(fileArr != null && fileArr.length>0){

      // =====DataTransfer 파일 관리========
        for(var i=0; i<fileArr.length; i++){
            dataTransfer.items.add(fileArr[i])
        }
        document.getElementById("upload_files").files = dataTransfer.files; 
        console.log("dataTransfer =>",dataTransfer.files)
        console.log("input FIles =>", document.getElementById("upload_files").files)
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
<script>
		$(document).ready(function() {
			$("#anonymousBtn").on("click",function(event) {
			event.preventDefault();
				var user_idx = ${loginUserBean.user_idx};
				var anonymous_img = '${img}';
				var anonymousOff = '${anonymousOff}';
				var anonymousOn = '${anonymousOn}';
				var param = {};
				param.user_idx = user_idx;
				$.ajax({
					type : "post",
					url : "${root}board/anonymous",
					data : param,
					success : function() {
						if (anonymous_img === anonymousOff) {
								alert("익명으로 변경되었습니다.");
							} else if (anonymous_img === anonymousOn) {
								alert("익명이 해지되었습니다.");
							}
							location.href = "${root}board/board_write?board_info_idx=${board_info_idx}";
						}
					})
				})
			})
	</script>


</body>
</html>