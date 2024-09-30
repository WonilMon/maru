<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath}/'/>
<script>
	alert('投稿の編集に成功しました。')
	location.href = '${root }board/board_read?content_idx=${content_idx}&board_info_idx=${board_info_idx}'
</script>