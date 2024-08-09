<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<section
	class="skrollable u-align-center u-clearfix u-image u-parallax u-shading u-section-1"
	id="sec-ff73" data-image-width="425" data-image-height="425">
	<div class="u-clearfix u-sheet u-sheet-1">
		<p class="u-text u-text-default u-text-1">
			子供の一生、<br>まると一緒。
		</p>
		<div
			class="u-align-center u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-list u-list-1">
			<div class="u-repeater u-repeater-1">
				<div
					class="u-align-left u-border-5 u-border-no-bottom u-border-no-left u-border-no-right u-border-palette-2-base u-container-style u-list-item u-radius u-repeater-item u-shape-round u-white u-list-item-1"
					data-animation-name="customAnimationIn"
					data-animation-duration="1000">
					<div
						class="u-container-layout u-similar-container u-container-layout-1">
						<h4 class="u-align-center u-text u-text-2"
							data-animation-name="customAnimationIn"
							data-animation-duration="1500" data-animation-delay="500">공지사항
						</h4>
						<a href="${root }company/notice"
							class="u-align-center u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-custom-item u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-1">more</a>
					</div>
				</div>
				<div
					class="u-align-left u-border-5 u-border-no-bottom u-border-no-left u-border-no-right u-border-palette-2-base u-container-align-center u-container-style u-list-item u-radius u-repeater-item u-shape-round u-video-cover u-white u-list-item-2"
					data-animation-name="customAnimationIn"
					data-animation-duration="1000">
					<div
						class="u-container-layout u-similar-container u-container-layout-2">
						<h4 class="u-align-center u-text u-text-3"
							data-animation-name="customAnimationIn"
							data-animation-duration="1500" data-animation-delay="500">게시판
						</h4>
						<a href="${root }board/board_prev_main"
							class="u-align-center u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-custom-item u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-2">more</a>
					</div>
				</div>
				<div
					class="u-align-left u-border-5 u-border-no-bottom u-border-no-left u-border-no-right u-border-palette-2-base u-container-style u-list-item u-radius u-repeater-item u-shape-round u-video-cover u-white u-list-item-3"
					data-animation-name="customAnimationIn"
					data-animation-duration="1000">
					<div
						class="u-container-layout u-similar-container u-container-layout-3">
						<h4 class="u-align-center u-text u-text-4"
							data-animation-name="customAnimationIn"
							data-animation-duration="1500" data-animation-delay="500">나눔</h4>
						<a href="${root }sharing/sharing_main"
							class="u-align-center u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-custom-item u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-3">more</a>
					</div>
				</div>
				<div
					class="u-align-left u-border-5 u-border-no-bottom u-border-no-left u-border-no-right u-border-palette-2-base u-container-style u-list-item u-radius u-repeater-item u-shape-round u-video-cover u-white u-list-item-4"
					data-animation-name="customAnimationIn"
					data-animation-duration="1000" data-animation-delay="0">
					<div
						class="u-container-layout u-similar-container u-container-layout-4">
						<h4 class="u-align-center u-text u-text-5"
							data-animation-name="customAnimationIn"
							data-animation-duration="1500" data-animation-delay="500">faq</h4>
						<a href="${root }company/faq"
							class="u-align-center u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-custom-item u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-4">more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>