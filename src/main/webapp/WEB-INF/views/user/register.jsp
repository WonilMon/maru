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
<meta name="keywords" content="Register">
<meta name="description" content="">
<title>register</title>
<link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/register.css" media="screen">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%-- <script class="u-script" type="text/javascript"
	src="${root }js/jquery.js" defer=""></script> --%>
<script class="u-script" type="text/javascript"
	src="${root }js/nicepage.js" defer=""></script>
<!-- Google reCAPTCHA -->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
<meta name="twitter:title" content="register">
<meta name="twitter:description" content="">
<meta property="og:title" content="register">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">

<!-- Flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/flatpickr.min.css">

<!-- Flatpickr JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/flatpickr.min.js"></script>

<script>
	function checkUserNickNameExist() {

		let user_nickname = $("#user_nickname").val() // 사용자가 입력한 nickname값 가져오기

		if (user_nickname.length == 0) {
			alert("ニックネームを入力してください")
			return

		}

		/* 새로고침 없이 바로 반응할수있게 하는게 에이잭스 */
		$.ajax({

			/* RestController, api는 페이지를 반환하는 게 아니라 데이터를 반환함 */
			url : '${root}/user/checkUserNickNameExist/' + user_nickname, // 요청할 페이지의 주소 (아이디를 붙인 주소를 getmapping을통해 RestApiController로)
			type : 'get', // 요청타입
			dataType : 'text',
			success : function(result) {

				if (result.trim() == "true") {
					alert("使用可能なニックネームです")
					$("#userNickNameExist").val("true")
				} else {
					alert("そのニックネームは既に存在します")
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
	function checkUserEmailExist() {

		let user_email = $("#user_email").val() // 사용자가 입력한 email 값 가져오기

		if (user_email.length == 0) {
			alert("メールアドレスを入力してください")
			return

		}

		/* 새로고침 없이 바로 반응할수있게 하는게 에이잭스 */
		$.ajax({

			/* RestController, api는 페이지를 반환하는 게 아니라 데이터를 반환함 */
			url : '${root}/user/checkUserEmailExist/' + user_email, // 요청할 페이지의 주소 (아이디를 붙인 주소를 getmapping을통해 RestApiController로)
			type : 'get', // 요청타입
			dataType : 'text',
			success : function(result) {

				if (result.trim() == "true") {
					alert("使用可能なメールアドレスです")
					$("#userEmailExist").val("true")
				} else {
					alert("そのメールアドレスは既に登録済みです")
					$("#userEmailExist").val("false")
				}
				setBackgroundColorBasedOn2();
			}

		})

	}
	function setBackgroundColorBasedOn2() {
		
		var userEmailExist = $("#userEmailExist").val();
		var inputElement = $("#user_email");
		
		if(userEmailExist === "false"){
			inputElement.css("background-color", "#FFCCCC");
		}else if(userEmailExist === "true"){
			inputElement.css("background-color", "#E0FFFF");
		}
		
	}

	//사용자 Email란에 키보드 입력 시 무조건 false 만드는
	function resetUserEmailExist() {
		$("#userEmailExist").val("false")
	}
</script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		flatpickr("#user_age", {
			dateFormat : "Y-m-d",
			locale : {
				firstDayOfWeek : 1,
				weekdays : {
					shorthand : [ '日', '月', '火', '水', '木', '金', '土' ],
					longhand : [ '日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日',
							'土曜日' ]
				},
				months : {
					shorthand : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月',
							'8月', '9月', '10月', '11月', '12月' ],
					longhand : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月',
							'8月', '9月', '10月', '11月', '12月' ]
				}
			}
		});
	});
</script>

</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>

	<section
		class="u-align-center u-clearfix u-container-align-center u-gradient u-section-1"
		id="carousel_de12" data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-align-center u-text u-text-default u-text-1">新規会員登録</h2>
			<p class="u-align-center u-text u-text-default u-text-2">
				<a
					class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
					data-href="#">お問い合わせ : www.maru.faq.com </a>
			</p>
			<div class="u-form u-radius-20 u-white u-form-1">

				<form:form modelAttribute="addUserBean"
					action="${root }user/register_pro" method="post"
					class="u-clearfix u-form-spacing-15 u-form-vertical
					u-inner-form"
					source="email" name="form" style="padding: 28px;">
					<form:hidden path="userEmailExist" />
					<form:hidden path="userNickNameExist" />

					<button class="u-button-1" onclick="checkUserNickNameExist()"
						type="button"
						style="position: absolute; top: 10px; right: 150px; background-color: #FCD5CE; border: 2px solid #FAE1DD; color: #000000; border-radius: 8px; padding: 10px 20px;">
						ネーム重複確認</button>

					<button class="u-button-2" onclick="checkUserEmailExist()"
						type="button"
						style="position: absolute; top: 10px; right: 10px; background-color: #FCD5CE; border: 2px solid #FAE1DD; color: #000000; border-radius: 8px; padding: 10px 20px;">
						メール重複確認</button>

					<div class="u-form-group u-form-name">
						<form:label path="user_nickname" class="u-label">ニックネーム</form:label>
						<form:input type="text" path="user_nickname"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle"
							placeholder="ニックネームを入力してください" onkeypress="resetUserNickNameExist()" />
						<form:errors path="user_nickname" style="color:red" />
					</div>
					<div class="u-form-email u-form-group">
						<form:label path="user_email" class="u-label">メールアドレス</form:label>

						<c:choose>
							<c:when test="${api_email != ''}">
								<form:input type="email" path="user_email" placeholder="メールアドレスを入力してください"
									onkeypress="resetUserEmailExist()"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" value="${api_email }"></form:input>
							</c:when>
							<c:otherwise>
								<form:input type="email" placeholder="メールアドレスを入力してください" path="user_email"
									onkeypress="resetUserEmailExist()"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" />
							</c:otherwise>
						</c:choose>

						<form:errors path="user_email" style="color:red" />
					</div>
					<div class="u-form-group u-form-group-3">
						<form:label path="user_pass" class="u-label">パスワード</form:label>
						<form:password placeholder="半角英数字4~20文字で入力してください" path="user_pass"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" />
						<form:errors path="user_pass" style="color:red" />
					</div>
					<div class="u-form-group u-form-group-3">
						<form:label path="user_pass2" class="u-label">パスワード再入力</form:label>
						<form:password placeholder="確認のため、もう一度入力してください" path="user_pass2"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" />
						<form:errors path="user_pass2" style="color:red" />
					</div>

					<div class="u-form-date u-form-group u-form-group-4">
						<form:label path="user_age" class="u-label">生年月日</form:label>
						<form:input type="text" placeholder="YYYY-MM-DD" path="user_age"
							class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" />
						<form:errors path="user_age" style="color:red"></form:errors>
					</div>

					<div class="u-form-group u-form-select u-form-group-5">
						<form:label path="user_gender" class="u-label">性別</form:label>
						<div class="u-form-select-wrapper">
							<form:select path="user_gender"
								class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
								<option value="선택" data-calc="">---あなたの性別---</option>
								<option value="남" data-calc="">男性</option>
								<option value="여" data-calc="">女性</option>
								<option value="어느 쪽도 아님" data-calc="">その他</option>

							</form:select>
						</div>
						<form:errors path="user_gender" style="color:red"></form:errors>
					</div>
					
			        <div style="margin: 10px 10px 10px 20px;" class="g-recaptcha" data-sitekey="6LclwjAqAAAAAJnIj0aIVdzw245ymUeEn-9vZmmY"></div>
					
					<div class="u-align-right u-form-group u-form-submit">
						<button type="submit"
							class="u-active-palette-4-light-1 u-border-active-palette-4-light-1 u-border-hover-palette-4-light-1 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-4-light-1 u-palette-2-base u-radius-10 u-btn-2">登録する</button>
					</div>
				</form:form>

			</div>

		</div>
	</section>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

	<script>
		$(document).ready(
				function() {
					$("button[type='submit']").off("click")
							.on(
									"click",
									function(event) {
										// 현재 버튼이 속한 폼을 찾기
										var form = $(this).closest('form');

										// 중복 체크 상태를 확인 
										var userNickNameExist = $(
												"#userNickNameExist").val();
										var userEmailExist = $(
												"#userEmailExist").val();

										if (userNickNameExist === "false") {
											alert("ニックネーム重複チェックを行ってください");
											event.preventDefault();
										} else if (userEmailExist === "false") {
											alert("メールアドレス重複チェックを行ってください");
											event.preventDefault();
										} else {
											form.off("submit").submit();
										}
									});
				});
	</script>
</body>
</html>