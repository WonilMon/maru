<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="root" value="${pageContext.request.contextPath }/" />

<header class="u-clearfix u-header u-sticky u-sticky-fd1a" id="sec-9b64"
	data-animation-name="" data-animation-duration="0"
	data-animation-delay="0" data-animation-direction="">
	<div class="u-clearfix u-sheet u-sheet-1">
		<a href="#" class="u-image u-logo u-image-1"> <img
			src="${root }images/default-logo.png"
			class="u-logo-image u-logo-image-1">
		</a>
		<nav
			class="u-dropdown-icon u-menu u-menu-hamburger u-menu-open-right u-offcanvas u-menu-1"
			data-responsive-from="XL">
			<div class="menu-collapse"
				style="font-size: 1rem; letter-spacing: 0px;">
				<a
					class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="#"
					data-lang-en="{&quot;content&quot;:&quot;<svg class=\&quot;u-svg-link\&quot; viewBox=\&quot;0 024 24\&quot;><use
						xlink:href=\&quot;#menu-hamburger\&quot;></use> </svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}"
					data-lang-ko="{&quot;content&quot;:&quot;<svg
						class=\&quot;u-svg-link\&quot; viewBox=\&quot;002424\&quot;>
							<use xlink:href=\&quot;#menu-hamburger\&quot;></use></svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}"
					data-lang-ja="{&quot;content&quot;:&quot;<svg
						class=\&quot;u-svg-link\&quot; viewBox=\&quot;002424\&quot;>
							<use xlink:href=\&quot;#menu-hamburger\&quot;></use></svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;menu-hamburger\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}">
					<svg class="u-svg-link" viewBox="0 0 24 24">
							<use xlink:href="#menu-hamburger"></use></svg> <svg
						class="u-svg-content" version="1.1" id="menu-hamburger"
						viewBox="0 0 16 16" x="0px" y="0px"
						xmlns:xlink="http://www.w3.org/1999/xlink"
						xmlns="http://www.w3.org/2000/svg">
							<g>
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</g></svg> </a>
			</div>
			<div class="u-custom-menu u-nav-container">
				<ul class="u-nav u-unstyled u-nav-1"
					data-animation-name="customAnimationIn"
					data-animation-duration="1000">
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="${root }company/company" style="padding: 10px 20px;">Company</a>
					</li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="${root }user/register" style="padding: 10px 20px;">Register</a></li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="${root }user/myPage" style="padding: 10px 20px;">MyPage</a></li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="${root }company/faq" style="padding: 10px 20px;">Favorite</a></li>
					<li class="u-nav-item"><a
						class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="${root }company/admin" style="padding: 10px 20px;">Admin</a></li>
				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-container-style u-custom-color-1 u-inner-container-layout u-opacity u-opacity-95 u-sidenav u-sidenav-1"
					data-offcanvas-width="264.737">
					<div class="u-inner-container-layout u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-custom-font u-nav u-popupmenu-items u-spacing-0 u-unstyled u-nav-2"
							data-responsive-from="MD">
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }company/company">company</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }user/register">Register</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }user/myPage">MyPage</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }company/faq">Favorite</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }user/admin">Admin</a></li>
						</ul>
					</div>
				</div>
				<div class="u-grey-75 u-menu-overlay u-opacity u-opacity-70"></div>
			</div>
		</nav>
		<nav
			class="u-align-center u-menu u-menu-dropdown u-offcanvas u-menu-2"
			data-responsive-from="MD">
			<div class="menu-collapse u-custom-font"
				style="font-size: 1rem; letter-spacing: 0px; font-weight: 700; font-family: &amp; amp;">
				<a
					class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-text-active-color u-custom-text-color u-custom-text-decoration u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link"
					href="#"
					data-lang-en="{&quot;content&quot;:&quot;<svg class=\&quot;u-svg-link\&quot; viewBox=\&quot;0 024 24\&quot;><use
						xlink:href=\&quot;#svg-6ef2\&quot;></use> </svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;svg-6ef2\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}"
					data-lang-ko="{&quot;content&quot;:&quot;<svg
						class=\&quot;u-svg-link\&quot; viewBox=\&quot;002424\&quot;>
							<use xlink:href=\&quot;#svg-6ef2\&quot;></use></svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;svg-6ef2\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}"
					data-lang-ja="{&quot;content&quot;:&quot;<svg
						class=\&quot;u-svg-link\&quot; viewBox=\&quot;002424\&quot;>
							<use xlink:href=\&quot;#svg-6ef2\&quot;></use></svg> <svg
						class=\&quot;u-svg-content\&quot; version=\&quot;1.1\&quot;
						id=\&quot;svg-6ef2\&quot; viewBox=\&quot;0
						0 16 16\&quot; x=\&quot;0px\&quot; y=\&quot;0px\&quot;
						xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot;
						xmlns=\&quot;http://www.w3.org/2000/svg\&quot;>    <g>        <rect
							y=\&quot;1\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;7\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>        <rect
							y=\&quot;13\&quot; width=\&quot;16\&quot; height=\&quot;2\&quot;></rect>    </g></svg>&quot;,&quot;href&quot;:&quot;#&quot;}">
					<svg class="u-svg-link" viewBox="0 0 24 24">
							<use xlink:href="#svg-6ef2"></use></svg> <svg class="u-svg-content"
						version="1.1" id="svg-6ef2" viewBox="0 0 16 16" x="0px" y="0px"
						xmlns:xlink="http://www.w3.org/1999/xlink"
						xmlns="http://www.w3.org/2000/svg">
							<g>
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</g></svg> </a>
			</div>
			<div class="u-custom-menu u-nav-container">
				<ul class="u-custom-font u-nav u-unstyled u-nav-3">
					<li class="u-nav-item"><a
						class="u-border-2 u-border-active-grey-30 u-border-grey-30 u-border-hover-grey-30 u-border-no-bottom u-border-no-left u-border-no-top u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-90 u-text-hover-custom-color-2"
						href="${root }main" style="padding: 0px 20px;">Home</a></li>
					<li class="u-nav-item"><a
						class="u-border-2 u-border-active-grey-30 u-border-grey-30 u-border-hover-grey-30 u-border-no-bottom u-border-no-left u-border-no-top u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-90 u-text-hover-custom-color-2"
						href="${root }board/write" style="padding: 0px 20px;">공지사항</a></li>
					<li class="u-nav-item"><a
						class="u-border-2 u-border-active-grey-30 u-border-grey-30 u-border-hover-grey-30 u-border-no-bottom u-border-no-left u-border-no-top u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-90 u-text-hover-custom-color-2"
						href="${root }board/write" style="padding: 0px 20px;">게시판</a>
						<div class="u-nav-popup">
							<ul
								class="u-border-1 u-border-grey-30 u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-white"
									href="${root }board/write">자유게시판</a></li>
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-white"
									href="${root }board/write">질문게시판</a></li>
								<li class="u-nav-item"><a
									class="u-button-style u-nav-link u-white"
									href="${root }board/write">정보공유게시판</a></li>
							</ul>
						</div></li>
					<li class="u-nav-item"><a
						class="u-border-2 u-border-active-grey-30 u-border-grey-30 u-border-hover-grey-30 u-border-no-bottom u-border-no-left u-border-no-top u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-90 u-text-hover-custom-color-2"
						href="${root }board/sharing_list" style="padding: 0px 20px;">나눔</a></li>
					<li class="u-nav-item"><a
						class="u-border-2 u-border-active-grey-30 u-border-grey-30 u-border-hover-grey-30 u-border-no-bottom u-border-no-left u-border-no-top u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-90 u-text-hover-custom-color-2"
						href="${root }company/faq" style="padding: 0px 20px;">건의사항</a></li>
				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
					<div class="u-inner-container-layout u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-5">
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }main">Home</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }board/write">공지사항</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }board/write">게시판</a>
								<div class="u-nav-popup">
									<ul
										class="u-border-1 u-border-grey-30 u-h-spacing-20 u-nav u-unstyled u-v-spacing-10">
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="${root }board/write">자유게시판</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="${root }board/write">질문게시판</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="${root }board/write">정보공유게시판</a></li>
									</ul>
								</div></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }board/write">나눔</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="${root }company/faq">건의사항</a></li>
						</ul>
					</div>
				</div>
				<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
			</div>
		</nav>
		<span class="u-file-icon u-icon u-icon-1"> <img
			src="${root }images/149302.png" alt=""></span> <span
			class="u-file-icon u-icon u-icon-2" data-href="${root }shop/shop">
			<img src="${root }images/869696.png" alt="">
		</span>
	</div>
</header>