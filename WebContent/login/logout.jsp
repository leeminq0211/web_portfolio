<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	session.invalidate();
%>
<script>location.href='${pageContext.request.contextPath}/login_view.do'</script>