<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />



<footer
	class="u-align-center u-clearfix u-container-align-center u-footer u-grey-80 u-footer"
	id="sec-13d2">
	<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
		<div
			class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
			<div class="u-layout">
				<div class="u-layout-col">
					<div class="u-size-30">
						<div class="u-layout-row">
							<div
								class="u-container-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-1">
								<div
									class="u-container-layout u-valign-middle u-container-layout-1">
									<a href="#" class="u-align-left u-image u-logo u-image-1"
										data-image-width="80" data-image-height="40"> <img
										src="${root }images/default-logo.png"
										class="u-logo-image u-logo-image-1">
									</a>
								</div>
							</div>
							<div
								class="u-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-2">
								<div
									class="u-container-layout u-valign-middle u-container-layout-2">
									<p class="u-align-center u-text u-text-default u-text-1">ABOUT
									</p>
									<div class="u-social-icons u-spacing-10 u-social-icons-1">
										<a class="u-social-url" title="facebook" target="_blank"
											href="https://facebook.com/name"><span
											class="u-icon u-social-facebook u-social-icon u-icon-1"><svg
													class="u-svg-link" preserveAspectRatio="xMidYMin slice"
													viewBox="0 0 112 112" style="">
														<use xlink:href="#svg-dbb1"></use></svg> <svg
													class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
													id="svg-dbb1">
														<circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
														<path fill="#FFFFFF"
														d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
										</a> <a class="u-social-url" title="twitter" target="_blank"
											href="https://twitter.com/name"><span
											class="u-icon u-social-icon u-social-twitter u-icon-2"><svg
													class="u-svg-link" preserveAspectRatio="xMidYMin slice"
													viewBox="0 0 112.2 112.2" style="">
														<use xlink:href="#svg-e34e"></use></svg> <svg
													class="u-svg-content" viewBox="0 0 112.2 112.2" x="0px"
													y="0px" id="svg-e34e">
														<circle fill="currentColor" cx="56" cy="56" r="55"></circle>
														<path fill="#FFFFFF"
														d="M63.9,51l22.4-24h-8.6L60.3,45.9L46.9,27H24l23.3,32.8L24,85h8.2L51,64.9L65.3,85H88L63.9,51z M55.3,60.2
l-3.7-5.1L35.7,33.1h8.1l12.3,17.2l3.7,5.1l16.6,23.4h-7.8L55.3,60.2z"></path></svg></span>
										</a> <a class="u-social-url" target="_blank" data-type="Instagram"
											title="Instagram" href=""><span
											class="u-icon u-social-icon u-social-instagram u-icon-3"><svg
													class="u-svg-link" preserveAspectRatio="xMidYMin slice"
													viewBox="0 0 112 112" style="">
														<use xlink:href="#svg-5481"></use></svg> <svg
													class="u-svg-content" viewBox="0 0 112 112" x="0" y="0"
													id="svg-5481">
														<circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle>
														<path fill="#FFFFFF"
														d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
      z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path>
														<path fill="#FFFFFF"
														d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path>
														<path fill="#FFFFFF"
														d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
      C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
      c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
										</a>
									</div>
									<ul class="u-align-center u-text u-text-default u-text-2">
										<a
											class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1"
											data-href="#">
											<li>공지사항</li>
											<li>게시판</li>
											<li>나눔</li>
											<li>FAQ</li>
										</a>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="u-size-30">
						<div class="u-layout-row">
							<div
								class="u-container-style u-layout-cell u-size-30 u-layout-cell-3">
								<div class="u-container-layout u-container-layout-3">
									<p class="u-align-left u-text u-text-default u-text-3">
										<a
											class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2"
											data-href="#">교육청 연동 </a>
									</p>
									<p class="u-align-left u-text u-text-default u-text-4">
										<a
											class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3"
											data-href="#">개인정보 약관 </a>
									</p>
								</div>
							</div>
							<div
								class="u-container-align-right u-container-style u-layout-cell u-size-30 u-layout-cell-4">
								<div
									class="u-container-layout u-valign-bottom u-container-layout-4">
									<p class="u-align-right u-text u-text-default u-text-5">
										Copyright&nbsp;© キャル株式会社 All Rights Reserved.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>