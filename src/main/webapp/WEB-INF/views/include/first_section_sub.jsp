<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<section
	class="skrollable u-align-center u-clearfix u-image u-parallax u-shading u-section-1"
	id="sec-ff73"
	style="background-image: url('${root}images/child.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat;"
	data-image-width="425" data-image-height="425">
	<div class="u-clearfix u-sheet u-sheet-1">
		<p class="u-text u-text-default u-text-1">
			子供の一生、<br>まると一緒。
		</p>
		<div
			class="u-align-center u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-list u-list-1">
			<div class="u-repeater u-repeater-1"></div>
		</div>
	</div>
</section>