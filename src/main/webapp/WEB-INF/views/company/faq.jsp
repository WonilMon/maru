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
<meta name="keywords" content="faq, Contact Us">
<meta name="description" content="">
<title>FAQ</title>
<link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root}css/FAQ.css" media="screen">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script class="u-script" type="text/javascript"
	src="${root}js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="${root}js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">
<meta name="referrer" content="origin">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Noto+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">





<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "${root}images/default-logo.png",
		"sameAs": [
				"https://facebook.com/name",
				"https://twitter.com/name"
		]
}</script>
<meta name="theme-color" content="#fda270">
<meta name="twitter:site" content="@">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="FAQ">
<meta name="twitter:description" content="">
<meta property="og:title" content="FAQ">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
<script>
	var ws;
	var userId = $
	{
		sessionScope.user_idx
	}; // 서버에서 사용자 ID를 가져오는 방법

	function openSocket() {
		ws = new WebSocket("ws://localhost:8078/chat");
		ws.onmessage = function(event) {
			var data = event.data.split(":", 2);
			var senderId = data[0];
			var msgContent = data[1];
			var chatBox = document.getElementById("chat");
			chatBox.innerHTML += `<br>(${senderId}): ${msgContent}`;
		};
	}

	function sendMessage() {
		var receiverId = document.getElementById("receiverId").value;
		var message = document.getElementById("message").value;
		ws.send(userId + ":" + receiverId + ":" + message);
	}

	window.onload = function() {
		openSocket();
	};
</script>
</head>
<body data-path-to-root="/" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">

	<c:import url="/WEB-INF/views/include/top_info.jsp"></c:import>
	<c:import url="/WEB-INF/views/include/first_section_sub.jsp"></c:import>

	<section class="u-align-center u-clearfix u-section-2"
		id="carousel_769b">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">

			<h2 class="u-text u-text-default u-text-1" style="font-size: 48px;">よくあるご質問</h2>
			<div
				class="u-accordion u-expanded-width u-faq u-spacing-20 u-accordion-1">
				<div class="u-accordion-item">
					<a
						class="active u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-1"
						id="link-accordion-6327" aria-controls="accordion-6327"
						aria-selected="true"> <span class="u-accordion-link-text">掲示板に投稿するにはどうすればいいですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-2c6d"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-2c6d" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div
						class="u-accordion-active u-accordion-pane u-container-style u-accordion-pane-1"
						id="accordion-6327" aria-labelledby="link-accordion-6327">
						<div class="u-container-layout u-container-layout-1">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>掲示板への投稿は、まずアカウントを作成・ログインする必要があります。ログイン後、「掲示板」セクションに移動し、「新規投稿」ボタンをクリックして投稿内容を入力してください。
									タイトルやカテゴリーも選択できるので、わかりやすく設定しましょう。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-2"
						id="link-accordion-4aab" aria-controls="accordion-4aab"
						aria-selected="false"> <span class="u-accordion-link-text">掲示板に不適切な投稿があった場合、どうすればいいですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-2"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-937a"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-937a" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-2"
						id="accordion-4aab" aria-labelledby="link-accordion-4aab">
						<div class="u-container-layout u-container-layout-2">
							<div class="u-clearfix u-rich-text u-text">
								<p>不適切な投稿を見つけた場合は、御手数ですが、当ページ下部のお問い合わせにて、管理者に報告してください。
									報告を受けた内容は、迅速に確認し、必要に応じて対処いたします。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-3"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">投稿した内容を編集・削除することはできますか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-3"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-4086"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-4086" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-3"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-3">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>はい、自分の投稿はいつでも編集や削除が可能です。投稿の右上にある「編集」または「削除」ボタンをクリックしてください。
									ただし、他のユーザーがすでに返信している場合、削除できない場合があります。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">おすそわけでアイテムを出品するにはどうすればいいですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>出品するには、ログイン後に「おすそわけ」セクションに移動し、「新規出品」ボタンをクリックします。
									出品したい育児用品の写真、説明、希望条件（例：無償でのお渡し、手渡し場所など）を入力してください。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">使わなくなった育児用品はどんなものでも出品できますか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>基本的に、使用可能な状態であり、育児に関連する用品であれば、どんなものでも出品可能です。
									ただし、安全性に問題があるものや、衛生面で懸念があるものはご遠慮ください。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">出品をキャンセルしたい場合はどうすればいいですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>出品をキャンセルする場合は、出品した商品ページから「出品削除」ボタンを押してください。
									また、すでに受け取り希望者がいる場合は、その方に連絡をしてキャンセルの旨をお伝えください。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">送料はどちらが負担するのですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>おすそわけショップでは、基本的に送料は受け取り希望者が負担することが多いですが、出品者と受け取り希望者の間で話し合って決定することが可能です。
									出品時にその旨を説明しておくと良いでしょう。</p>
							</div>
						</div>
					</div>
				</div>

				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">アカウントを削除するにはどうすればいいですか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>アカウント削除は、プロフィールから「アカウント管理」へ移動し、「アカウント削除」オプションを選択してください。
									削除を選択すると、すべての投稿や出品が削除されますのでご注意ください。</p>
							</div>
						</div>
					</div>
				</div>
				<div class="u-accordion-item u-expanded-width">
					<a
						class="u-accordion-link u-active-grey-5 u-border-1 u-border-active-palette-5-dark-2 u-border-hover-palette-5-dark-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-2 u-button-style u-palette-3-light-3 u-text-body-color u-accordion-link-4"
						id="link-accordion-eb1f" aria-controls="accordion-eb1f"
						aria-selected="false"> <span class="u-accordion-link-text">個人情報はどのように保護されていますか？</span><span
						class="u-accordion-link-icon u-icon u-icon-circle u-text-palette-1-base u-icon-4"><svg
								class="u-svg-link" preserveAspectRatio="xMidYMin slice"
								viewBox="0 0 16 16" style="">
								<use xlink:href="#svg-df61"></use></svg> <svg class="u-svg-content"
								viewBox="0 0 16 16" x="0px" y="0px" id="svg-df61" style="">
								<path
									d="M8,10.7L1.6,5.3c-0.4-0.4-1-0.4-1.3,0c-0.4,0.4-0.4,0.9,0,1.3l7.2,6.1c0.1,0.1,0.4,0.2,0.6,0.2s0.4-0.1,0.6-0.2l7.1-6
	c0.4-0.4,0.4-0.9,0-1.3c-0.4-0.4-1-0.4-1.3,0L8,10.7z"></path></svg></span>
					</a>
					<div class="u-accordion-pane u-container-style u-accordion-pane-4"
						id="accordion-eb1f" aria-labelledby="link-accordion-eb1f">
						<div class="u-container-layout u-container-layout-4">
							<div class="fr-view u-clearfix u-rich-text u-text">
								<p>当サイトでは、ユーザーの個人情報を厳重に保護しています。個人情報は暗号化され、第三者に提供することはありません。
									また、利用者の情報は法律に基づいて適切に管理されています。詳しくは当サイト内のプライバシーポリシーをご確認ください。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="u-align-center u-clearfix u-section-3" id="sec-72bd">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<h2 class="u-text u-text-default u-text-1">お問い合わせ</h2>
			<div class="u-form u-form-1">
				<form:form action="${root }company/faq_pro"
					modelAttribute="addFaqBean" method="get"
					class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form"
					style="padding: 10px">
					<div class="u-form-email u-form-group u-label-none">
						<form:label path="faq_user_email" class="u-label">Email</form:label>
						<form:input path="faq_user_email" placeholder="メールアドレスを入力してください"
							class="u-input u-input-rectangle" />
					</div>
					<div class="u-form-group u-form-message u-label-none">
						<form:label path="faq_user_text" class="u-label">Message</form:label>
						<form:textarea path="faq_user_text"
							placeholder="お問い合わせ内容を入力してください" rows="4" cols="50"
							class="u-input u-input-rectangle"></form:textarea>
					</div>
					<div class="u-align-left u-form-group u-form-submit">
						<button type="submit" class="u-btn u-btn-submit u-button-style">送信する</button>
					</div>
				</form:form>
			</div>
		</div>
	</section>


	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
	<script>
		$(document).ready(
				function() {
					$("button[type='submit']").off("click").on("click",
							function(event) {
								// 기존의 이벤트 방지
								event.stopImmediatePropagation();
								// form 강제 제출
								$(this).closest("form").off("submit").submit();
							});
				});
	</script>
</body>
</html>