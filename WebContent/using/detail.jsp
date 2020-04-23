<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/header.jsp" %>
<%@page import="java.sql.*"%>
<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>상세보기</h3> 			
	<div class="panel">
	  <div  class="panel-body">
	  		<span class="glyphicon glyphicon-plus">제목</span> 
			<p>${dto.title}</p>
		</div>
	</div>				
	<div class="panel">
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus">내용</span>
	  	<p>${dto.content}</p>
	  </div> 
	</div>	
	<div class="panel"  >
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus">  업로드파일</span>
	  	<p><a href="${pageContext.request.contextPath}/upload/${dto.file}"><img src="${pageContext.request.contextPath}/upload/${dto.file}" alt="${dto.file}"     /></a></p>
	  </div> 
	</div>	
	<div class="text-right"    >
		 <a href="${pageContext.request.contextPath}/usingUpdateView.do?no=${dto.no}&table=notice"  class="btn btn-danger" >수정</a> 
		 <a href="${pageContext.request.contextPath}/usingDelete.do?no=${dto.no}&table=notice" class="btn btn-danger" >삭제</a>      
		 <a href="${pageContext.request.contextPath}/notice.do?pstartno=0&table=notice"  class="btn btn-info" >목록보기</a> 
	</div>						 
</div>	
<%@ include file="../inc/footer.jsp" %>
