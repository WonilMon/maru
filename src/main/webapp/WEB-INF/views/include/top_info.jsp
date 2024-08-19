<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<header
	class="u-clearfix u-container-align-center u-header u-palette-4-base u-sticky u-sticky-5e81 u-header"
	id="sec-d1fa">
	<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
		<nav class="u-menu u-menu-hamburger u-offcanvas u-menu-1"
			data-responsive-from="XL">
			<div class="menu-collapse">
				<a class="u-button-style u-nav-link" href="#"
					style="padding: 4px 0px; font-size: calc(1em + 8px);"> <svg
						class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 302 302" style="">
							<use xlink:href="#svg-5247"></use></svg> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="svg-5247" x="0px" y="0px" viewBox="0 0 302 302"
						style="enable-background: new 0 0 302 302;" xml:space="preserve"
						class="u-svg-content">
							<g>
							<rect y="36" width="302" height="30"></rect>
							<rect y="236" width="302" height="30"></rect>
							<rect y="136" width="302" height="30"></rect>
</g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
				</a>
			</div>
			<div class="u-custom-menu u-nav-container">
				<ul class="u-nav u-unstyled u-nav-1">

					<c:choose>
						<c:when test="${loginUserBean.userLogin == true }">

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }main" style="padding: 10px 20px;">home</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/company" style="padding: 10px 20px;">company</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }shop/shop" style="padding: 10px 20px;">shop</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_prev_main" style="padding: 10px 20px;">board_prev_main</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }sharing/sharing_main" style="padding: 10px 20px;">sharing_main</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/faq" style="padding: 10px 20px;">FAQ</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/favorite" style="padding: 10px 20px;">favorite</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/profile_modify" style="padding: 10px 20px;">mypage</a>
							</li>

						</c:when>
						<c:otherwise>

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }main" style="padding: 10px 20px;">home</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/company" style="padding: 10px 20px;">company</a></li>

							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }board/board_prev_main" style="padding: 10px 20px;">board_prev_main</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }sharing/sharing_main" style="padding: 10px 20px;">sharing_main</a>
							</li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }company/faq" style="padding: 10px 20px;">FAQ</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
								href="${root }user/register" style="padding: 10px 20px;">register</a></li>

						</c:otherwise>
					</c:choose>


				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
					<div class="u-inner-container-layout u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
							<c:choose>
								<c:when test="${loginUserBean.userLogin == true }">
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }main">home</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }company/company">company</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }shop/shop">shop</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_prev_main">board_prev_main</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }sharing/sharing_main">sharing_main</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }company/faq">FAQ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }user/favorite">favorite</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }user/profile_modify">mypage</a></li>

								</c:when>
								<c:otherwise>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }main">home</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }company/company">company</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }board/board_prev_main">board_prev_main</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link"
										href="${root }sharing/sharing_main">sharing_main</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }company/faq">FAQ</a></li>
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link" href="${root }user/register">register</a></li>

								</c:otherwise>
							</c:choose>

						</ul>
					</div>
				</div>
				<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
			</div>
		</nav>
		<form action="#" method="get"
			class="u-align-center u-border-1 u-border-grey-30 u-expanded-width-xs u-search u-search-right u-white u-search-1">
			<button class="u-search-button" type="submit">
				<span class="u-search-icon u-spacing-10 u-search-icon-1"> <svg
						class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 56.966 56.966" style="">
							<use xlink:href="#svg-eb5c"></use></svg> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="svg-eb5c" x="0px" y="0px" viewBox="0 0 56.966 56.966"
						style="enable-background: new 0 0 56.966 56.966;"
						xml:space="preserve" class="u-svg-content">
							<path
							d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
				</span>
			</button>
			<input class="u-search-input" type="search" name="search" value=""
				placeholder="Search">
		</form>
		<a href="${root }main" class="u-image u-logo u-image-1"
			data-image-width="80" data-image-height="40" title="home"> <img
			src="${root }images/default-logo.png"
			class="u-logo-image u-logo-image-1">
		</a>
	</div>
</header>