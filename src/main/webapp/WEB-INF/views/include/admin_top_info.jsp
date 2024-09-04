<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<header>
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="preloader">
				<div class="spinner-layer pl-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->

	<!-- Top Bar -->
	<nav class="navbar">
		<div class="container-fluid" style="background-color: #FCD5CE;">
			<div class="navbar-header">

				<a href="javascript:void(0);" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false"></a> <a href="javascript:void(0);"
					class="bars"></a>
				<div style="display: flex; align-items: center; gap: 10px;">
					<div class="demo-google-material-icon">
						<a href="${root}main" style="text-decoration: none;"> <img
							src="${root }images/back.png" style="width: 60px; height: 60px;">
						</a>
					</div>
					<a class="navbar-brand" href="${root}company/admin_index"
						style="text-decoration: none; font-size: 24px;">MARU_管理</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- #Top Bar -->
</header>