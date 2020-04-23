<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% 
pageContext.setAttribute("crcn","\r\n"); 
pageContext.setAttribute("br","<br/>"); 
%>
<%@ include file="../inc/header.jsp" %>
<%@page import="java.sql.*"%>
<c:choose>
	<c:when test="${requestScope.result==-1}">
		<script>alert('작성자가 아닙니다.');location.href='${pageContext.request.contextPath}/list.do' ;</script>
	</c:when>
</c:choose>


<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>MULTIBOARD 상세보기</h3> 					
	<div class="panel" >
	  <div  class="panel-body"> 
	  		<span class="glyphicon glyphicon-plus">  조회수</span>
	  		<p>${dto.bhit}</p>
	</div>	
	</div>	
	<div class="panel"  >
	  <div  class="panel-body">
	  		<span class="glyphicon glyphicon-plus">  이름</span> 
			<p>${dto.bname}</p>
		</div>
	</div>				
	<div class="panel"  >
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus">  제목</span> 
	     <p>${dto.btitle}</p>
	  </div>	
	</div>
	<div class="panel"  >
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus">  내용</span>
	  	<p>${fn:replace(dto.bcontent, crcn, br)}</p>
	  </div> 
	</div>	
	<div class="panel"  >
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus">  업로드파일</span>
	  	<p><a href="${pageContext.request.contextPath}/upload/${dto.bfile}"><img src="${pageContext.request.contextPath}/upload/${dto.bfile}" alt="${dto.bfile}"     /></a></p>
	  </div> 
	</div>	
	<div class="text-right"    >
		 <a href="${pageContext.request.contextPath}/edit_VIEW.do?getBno=${dto.bno}"  class="btn btn-danger" >수정</a> 
		 <a href="${pageContext.request.contextPath}/delete_view.do?getBno=${dto.bno}" class="btn btn-danger" >삭제</a>    
		 <a href="${pageContext.request.contextPath}/reply_view.do?getBno=${dto.bno}" class="btn btn-danger" >답글쓰기</a>    
		 <a href="${pageContext.request.contextPath}/list.do"  class="btn btn-info" >목록보기</a> 
	</div>						 
</div>	
<%@ include file="../inc/footer.jsp" %>
