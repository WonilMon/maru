<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var='root' value='${pageContext.request.contextPath}/' />

<script>
	alert('ログインに失敗しました。会員登録ページに移動します。')
	location.href = '${root}user/register'
</script>