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
<meta name="keywords" content="My Profile​, Change profile​">
<meta name="description" content="">
<title>profile_modify</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/profile_modify.css"
	media="screen">
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
<script>
	function checkUserNickNameExist() {

		let user_nickname = $("#user_nickname").val() // 사용자가 입력한 nickname값 가져오기

		if (user_nickname.length == 0) {
			alert("닉네임을 입력하세요")
			return

		}

		/* 새로고침 없이 바로 반응할수있게 하는게 에이잭스 */
		$.ajax({

			/* RestController, api는 페이지를 반환하는 게 아니라 데이터를 반환함 */
			url : '${root}/user/checkUserNickNameExist_profile/'
					+ user_nickname, // 요청할 페이지의 주소 (아이디를 붙인 주소를 getmapping을통해 RestApiController로)
			type : 'get', // 요청타입
			dataType : 'text',
			success : function(result) {
				setBackgroundColorBasedOn();
				if (result.trim() == "true") {
					alert("사용할 수 있는 닉네임입니다")
					$("#userNickNameExist").val("true")
				} else {
					alert("사용할 수 없는 닉네임입니다")
					$("#userNickNameExist").val("false")
				}
				setBackgroundColorBasedOn();
			}

		})

	}
	function setBackgroundColorBasedOn() {
		
		var userNickNameExist = $("#userNickNameExist").val();
		var inputElement = $("#user_nickname");
		
		if(userNickNameExist === "false"){
			inputElement.css("background-color", "#FFCCCC");
		}else if(userNickNameExist === "true"){
			inputElement.css("background-color", "#E0FFFF");
		}
		
	}

	//사용자 NickName란에 키보드 입력 시 무조건 false 만드는
	function resetUserNickNameExist() {
		$("#userNickNameExist").val("false")
	}
</script>
<script>
	let isEditMode = false;

	function toggleEditMode() {
		const input = document.getElementById('user_statustext');
		const button = document.getElementById('changeStatusTextBtn');

		if (!isEditMode) {
			// Switch to edit mode
			input.removeAttribute('readonly');
			input.focus();
			button.textContent = '확인';
			button.classList.remove('edit-mode');
			button.classList.add('save-mode');
		} else {
			// Switch back to view mode
			input.setAttribute('readonly', 'true');
			button.textContent = '변경';
			button.classList.remove('save-mode');
			button.classList.add('edit-mode');

			// Perform AJAX request
			const user_statustext = input.value;
			const user_idx = document.getElementById('user_idx').value;

			var xhr = new XMLHttpRequest();
			xhr.open("POST", "${root}user/updateStatus", true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4 && xhr.status === 200) {
					if (xhr.responseText === "success") {
						alert("상태 메시지가 변경되었습니다.");
					} else {
						alert("상태 메시지 변경에 실패했습니다.");
					}
				}
			};
			xhr.send("user_statustext=" + encodeURIComponent(user_statustext)
					+ "&user_idx=" + encodeURIComponent(user_idx));
		}

		isEditMode = !isEditMode;
	}
</script>



<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="profile_modify">
<meta name="twitter:description" content="">
<meta property="og:title" content="profile_modify">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
<style>
.status-container {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin: 20px 0;
}

.status-container label {
	margin-bottom: 10px; /* Space between label and input */
	font-size: 16px; /* Adjust label font size if needed */
	text-align: center; /* Center-align label text */
}

.input-container {
	display: flex;
	align-items: center;
	width: 100%; /* Adjust full width */
	max-width: 400px; /* Limit the maximum width if needed */
	gap: 10px; /* Space between input and button */
	justify-content: center; /* Center-align the content horizontally */
}

#user_statustext {
	padding: 5px;
	border: 1px solid #ddd; /* Light border for input */
	border-radius: 5px; /* Slightly rounded corners */
	background-color: #f0f0f0;
	/* Light gray background for readonly input */
	width: 250px; /* Set a fixed width for the input field */
}

button {
	padding: 5px 10px;
	font-size: 16px;
	cursor: pointer;
	border: none;
	border-radius: 5px;
	background-color: #FCD5CE; /* Soft pink background */
	color: #333; /* Dark text color for contrast */
}
</style>
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">


	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-clearfix u-container-align-center u-section-2"
		id="sec-8d10">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-subtitle u-text u-text-default u-text-1">My
				Profile</h2>
			<div
				class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-palette-3-light-3 u-radius u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-row">
						<div
							class="u-size-29-lg u-size-29-sm u-size-29-xl u-size-29-xs u-size-60-md">
							<div class="u-layout-col">
								<div class="u-size-60">
									<div class="u-layout-row">
										<div
											class="u-container-align-center u-container-style u-layout-cell u-size-60 u-layout-cell-1">
											<div
												class="u-container-layout u-valign-middle u-container-layout-1">
												<div
													class="custom-expanded u-carousel u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1"
													data-interval="5000" data-u-ride="carousel"
													id="carousel-4e64">
													<!--  
													<ol
														class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
														<li data-u-target="#carousel-4e64" data-u-slide-to="0"
															class="u-active u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
														<li data-u-target="#carousel-4e64" data-u-slide-to="1"
															class="u-grey-70 u-shape-circle"
															style="width: 10px; height: 10px;"></li>
													</ol>
													-->
													<div class="u-carousel-inner u-gallery-inner"
														role="listbox">
														<div
															class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
															<div class="u-back-slide">
																<c:choose>
																	<c:when test="${img != null }">
																		<img id="profileImage" src="${root}getProfileImage/${img}" class="u-back-image u-expanded" alt="프로필 이미지">
																	</c:when>
																	<c:otherwise>
																		<img id="profileImage" src="${root}images/90fc53c9.svg" class="u-back-image u-expanded" alt="프로필 이미지">
																	</c:otherwise>
																</c:choose>
																
															</div>
															<div class="u-over-slide u-over-slide-1"></div>
														</div>
														 <!--  
														<div
															class="u-carousel-item u-gallery-item u-carousel-item-2">
															<div class="u-back-slide">
																<img class="u-back-image u-expanded"
																	src="${root }images/90fc53c9.svg">
															</div>
															<div class="u-over-slide u-over-slide-2"></div>
														</div>
														-->
													</div>
													<!--  
													<a
														class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
														href="#carousel-4e64" role="button" data-u-slide="prev">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.847 451.847">
                                                <path
																	d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
													</span> <span class="sr-only"> <svg
																viewBox="0 0 451.847 451.847">
                                                <path
																	d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
													</span>
													</a> <a
														class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2"
														href="#carousel-4e64" role="button" data-u-slide="next">
														<span aria-hidden="true"> <svg
																viewBox="0 0 451.846 451.847">
                                                <path
																	d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
													</span> <span class="sr-only"> <svg
																viewBox="0 0 451.846 451.847">
                                                <path
																	d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
													</span>
													</a>
													-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="u-size-31-lg u-size-31-sm u-size-31-xl u-size-31-xs u-size-60-md">
							<div class="u-layout-col">
								<div
									class="u-container-style u-layout-cell u-size-60 u-layout-cell-2">
									<div class="u-container-layout u-container-layout-2">
										<h2 class="u-align-center u-subtitle u-text u-text-2">${modifyUser.user_nickname}</h2>

										<div class="status-container">
											<label for="user_statustext">상태메시지</label>
											<div class="input-container">
												<input type="text" id="user_statustext"
													name="user_statustext"
													value="${modifyUser.user_statustext}" readonly />
												<button id="changeStatusTextBtn" onclick="toggleEditMode()">변경</button>
											</div>
										</div>

										<a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-1">
											change icon</a>
										<a href="#" id="changeImageBtn"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-2">
											change image</a>
											<input type="file" id="imageFileInput" style="display: none;" />
										<a href="#"
											class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-3">
											chat_log</a>

										<form action="${root}user/deleteUser" method="get">
											<input type="hidden" name="user_idx" value="${user_idx}" />
											<button
												class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-palette-2-base u-none u-radius u-text-body-color u-text-hover-white u-btn-4">delete</button>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<section
		class="u-align-center u-clearfix u-container-align-center u-gradient u-section-3"
		id="sec-7f48" data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">Register</h2>
			<p class="u-align-center u-text u-text-default u-text-2">
				<a
					class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
					data-href="#">문의사항 : www.maru.faq.com </a>
			</p>
			<div class="u-form u-radius-20 u-white u-form-1">
				<form:form action="${root }user/profile_modify_pro"
					class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form"
					modelAttribute="modifyUser" style="padding: 28px;" method="post" onsubmit="return validateForm();">
					<button class="u-button-1" onclick="checkUserNickNameExist()"
						type="button"
						style="position: absolute; top: 10px; right: 10px; background-color: #FCD5CE; border: 2px solid #FAE1DD; color: #000000; border-radius: 8px; padding: 10px 20px;">
						nick check</button>

					<form:hidden path="user_idx" />
					<form:hidden path="userNickNameExist" />

					<div class="u-form-group u-form-name">
						<form:label path="user_nickname" class="u-label">NickName</form:label>
						<form:input type="text" path="user_nickname"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							placeholder="${modifyUser.user_nickname }"
							style="color: #666666; opacity: 1;" />
						<form:errors path="user_nickname" style="color:red" />
					</div>
					<div class="u-form-email u-form-group">
						<form:label path="user_email" class="u-label">Email</form:label>
						<form:input type="email" placeholder="${modifyUser.user_email }"
							id="email-4c18" path="user_email"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							readonly="true"
							style="color: #666666; opacity: 1; background-color: #F0F0F0;" />
					</div>
					<div class="u-form-group u-form-group-3">
						<form:label path="user_pass" class="u-label">Password</form:label>
						<form:password placeholder="입력" path="user_pass"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							required="required" />
						<form:errors path="user_pass" style="color:red" />
					</div>
					<div class="u-form-group u-form-group-3">
						<form:label path="user_pass2" class="u-label">Password2</form:label>
						<form:password placeholder="입력" path="user_pass2"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" />
						<form:errors path="user_pass2" style="color:red" />
					</div>
					<div class="u-form-date u-form-group u-form-group-4">
						<form:label path="user_age" class="u-label">Date</form:label>
						<form:input type="text" path="user_age"
							placeholder="${modifyUser.user_age }"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							readonly="true"
							style="color: #666666; opacity: 1; background-color: #F0F0F0;" />

					</div>

					<div class="u-form-group u-form-select u-form-group-5">
						<form:label path="user_gender" class="u-label">gender of parents</form:label>
						<div class="u-form-select-wrapper">
							<form:input type="text" path="user_gender"
								class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
								placeholder="${modifyUser.user_gender }" readonly="true"
								style="color: #666666; opacity: 1; background-color: #F0F0F0;" />
						</div>
					</div>

					<div class="u-form-agree u-form-group u-form-group-6">

						<label for="agree-a472"
							class="u-agree-label u-block-4c4f-16 u-field-label" style="">
							위 내용으로 프로필을 변경합니다. </label>
					</div>
					<div class="u-align-right u-form-group u-form-submit">
						<button type="submit"
							class="u-active-palette-4-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-2-base u-radius-10 u-btn-2">
							변경하기</button>

					</div>

				</form:form>
			</div>

		</div>
	</section>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

	<script>
	    document.getElementById('changeImageBtn').addEventListener('click', function() {
	        document.getElementById('imageFileInput').click(); // 파일 입력 요소 클릭
	    });
	
	    document.getElementById('imageFileInput').addEventListener('change', function(event) {
	        var file = event.target.files[0];
	        if (file) {
	            var formData = new FormData();
	            formData.append('profileImage', file);
	
	            var xhr = new XMLHttpRequest();
	            xhr.open('POST', '${root}user/uploadProfileImage', true);
	            xhr.onload = function () {
	                if (xhr.status === 200) {
	                    alert('이미지가 성공적으로 변경되었습니다.');
	                    var response = xhr.responseText;
	                    var newImagePath = '${root}getProfileImage/' + response.split(': ')[1];
	                    document.getElementById('profileImage').src = newImagePath;
	                } else {
	                    alert('이미지 변경에 실패했습니다.');
	                }
	            };
	            xhr.send(formData);
	        }
	    });
	</script>

	<script>
		let originalUserNickname;

		$(document)
				.ready(
						function() {
							originalUserNickname = $("#user_nickname").val(); // 처음 로드 시 닉네임 값을 저장
							
							setBackgroundColorBasedOn();
							
							$("button[type='submit']")
									.off("click")
									.on("click", function(event) {
												var form = $(this).closest('form');

												// 중복 체크 상태 확인
												var userNickNameExist = $("#userNickNameExist").val();

												// 닉네임이 변경되지 않았고, 기존 중복 체크 상태가 false인 경우
												if ($("#user_nickname").val() === originalUserNickname
														&& userNickNameExist === "false") {
													form.off("submit").submit();
												} else if (userNickNameExist === "false") {
													alert("닉네임 중복 체크를 완료해 주세요.");
													event.preventDefault();
												} else {
													form.off("submit").submit();
												}
								setBackgroundColorBasedOn();
							});
							
							function setBackgroundColorBasedOn() {
								
								var userNickNameExist = $("#userNickNameExist").val();
								var inputElement = $("#user_nickname");
								
								if(userNickNameExist === "false"){
									inputElement.css("background-color", "#FFCCCC");
								}else if(userNickNameExist === "true"){
									inputElement.css("background-color", "#CCFFFF");
								}
								
							}
							
						});
	</script>

	<script>
		function validateForm() {
		    var password = document.querySelector('input[name="user_pass"]').value;
		    var password2 = document.querySelector('input[name="user_pass2"]').value;
		    
		    if (password.trim() === '' || password2.trim() === '') {
		        alert('패스워드를 입력해주세요.');
		        return false; // 폼 제출 방지
		    }
		    
		    return true; // 폼 제출 허용
		}
	</script>
</body>
</html>