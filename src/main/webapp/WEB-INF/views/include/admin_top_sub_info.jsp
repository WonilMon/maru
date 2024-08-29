<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!-- Widgets -->
<div class="row clearfix">
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="info-box bg-orange hover-expand-effect">
			<div class="icon">
				<i class="material-icons">person_add</i>
			</div>
			<div class="content">
				<div class="text">NEW USER</div>
				<div class="number count-to" data-from="0" data-to="${loginUserBean.newUserCount }"
					data-speed="1000" data-fresh-interval="20"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="info-box bg-pink hover-expand-effect">
			<div class="icon">
				<i class="material-icons">playlist_add_check</i>
			</div>
			<div class="content">
				<div class="text">NEW CONTENTS</div>
				<div class="number count-to" data-from="0" data-to="${loginUserBean.newContentCount }"
					data-speed="1000" data-fresh-interval="20"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="info-box bg-light-green hover-expand-effect">
			<div class="icon">
				<i class="material-icons">forum</i>
			</div>
			<div class="content">
				<div class="text">NEW COMMENTS</div>
				<div class="number count-to" data-from="0" data-to="${loginUserBean.newCommentCount }"
					data-speed="1000" data-fresh-interval="20"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="info-box bg-cyan hover-expand-effect">
			<div class="icon">
				<i class="material-icons">help</i>
			</div>
			<div class="content">
				<div class="text">NEW FAQ</div>
				<div class="number count-to" data-from="0" data-to="${loginUserBean.newFaqCount }"
					data-speed="1000" data-fresh-interval="20"></div>
			</div>
		</div>
	</div>
</div>
<!-- #END# Widgets -->