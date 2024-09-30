<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 (어떤 폴더건 상관없이) -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<%-- 현재경로 --%>
<c:set var="currentPath" value="${pageContext.request.requestURI}" />


<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
	<!-- User Info -->
	<div
		style="background-color: #FAE1DD; padding: 25px 15px 15px; display: flex; align-items: center; gap: 10px; margin-top: 10px;">
		<div class="image">
			<img src="${root}images/maru_logo.png" width="48" height="48"
				alt="User" style="border-radius: 50%;" />
		</div>
		<div class="info-container">
			<div class="name" style="font-weight: bold; font-size: 18px;"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				${loginUserBean.user_nickname}</div>
			<div class="email" style="color: #777777;">
				${loginUserBean.user_email}</div>
		</div>
	</div>


	<!-- #User Info -->
	<!-- Menu -->
	<div class="menu">
		<ul class="list">
			<li class="header">MAIN NAVIGATION</li>
			<li class="${currentPath.endsWith('/admin_index') ? 'active' : ''}">
				<a href="${root}company/admin_index"> <i class="material-icons">home</i>
					<span>ホーム</span>
			</a>
			</li>

			<li class="${currentPath.endsWith('/manage_user') ? 'active' : ''}">
				<a href="${root}company/manage_user"> <i class="material-icons">assignment</i>
					<span>ユーザー管理</span>
			</a>
			</li>
			<li
				class="${currentPath.contains('/manage_content') ? 'active' : ''}">
				<a href="#" class="menu-toggle"> <i class="material-icons">view_list</i>
					<span>掲示板管理</span>
			</a>
				<ul class="ml-menu">
					<li
						class="${currentPath.contains('board_info_idx=1') ? 'active' : ''}">
						<a href="${root}company/manage_content?board_info_idx=1">自由掲示板</a>
					</li>
					<li
						class="${currentPath.contains('board_info_idx=2') ? 'active' : ''}">
						<a href="${root}company/manage_content?board_info_idx=2">匿名掲示板</a>
					</li>
					<li
						class="${currentPath.contains('board_info_idx=3') ? 'active' : ''}">
						<a href="${root}company/manage_content?board_info_idx=3">情報共有掲示板</a>
					</li>
				</ul>
			</li>
			
			<li class="${currentPath.endsWith('/manage_share') ? 'active' : ''}"><a
				href="${root }company/manage_share"> <i class="material-icons">perm_media</i>
					<span>おすそわけポイント管理</span>
			</a></li>

			<li class="${currentPath.endsWith('/manage_faq') ? 'active' : ''}">
				<a href="${root}company/manage_faq"> <i class="material-icons">content_copy</i>
					<span>FAQ管理</span>
			</a>
			</li>

			<li class="header">LABELS</li>
			<li><a href="javascript:void(0);"> <i
					class="material-icons col-red">donut_large</i> <span>Important</span>
			</a></li>
			<li><a href="javascript:void(0);"> <i
					class="material-icons col-amber">donut_large</i> <span>Warning</span>
			</a></li>
			<li><a href="javascript:void(0);"> <i
					class="material-icons col-light-blue">donut_large</i> <span>Information</span>
			</a></li>
		</ul>
	</div>

	<script>
		document.addEventListener("DOMContentLoaded", function() {

			var currentPath = window.location.pathname;
			var menuItems = [ {
				selector : ".sidebar .menu a[href*='/admin_index']",
				activeClass : "active"
			}, {
				selector : ".sidebar .menu a[href*='/manage_user']",
				activeClass : "active"
			}, {
				selector : ".sidebar .menu a[href*='/manage_share']",
				activeClass : "active"
			}, {
				selector : ".sidebar .menu a[href*='/manage_faq']",
				activeClass : "active"
			} ];

			menuItems.forEach(function(menuItem) {
				var element = document.querySelector(menuItem.selector);
				if (element) {
					var href = element.getAttribute("href");
					if (currentPath.indexOf(href) !== -1) {
						element.parentElement.classList
								.add(menuItem.activeClass);
					} else {
						element.parentElement.classList
								.remove(menuItem.activeClass);
					}
				}
			});
		});
	</script>


	<!-- #Menu -->
	<!-- Footer -->
	<div class="legal">
		<div class="copyright">
			&copy; 2024 - 2024 <a href="javascript:void(0);">CAL - MARU
				Design</a>.
		</div>
		<div class="version">
			<b>Version: </b> 1.0.5
		</div>
	</div>
	<!-- #Footer -->
</aside>
<!-- #END# Left Sidebar -->