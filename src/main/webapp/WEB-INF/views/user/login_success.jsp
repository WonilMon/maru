<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var='root' value='${pageContext.request.contextPath }/'/>

<script>
   alert('ログインに成功しました')
   location.href = '${root}main'
</script>