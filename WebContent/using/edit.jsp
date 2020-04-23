<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include  file="/inc/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<%@page import="java.sql.*"%>
<div class="container"  style="margin-top:5%; min-height:500px"   >
	<h3>글수정 </h3>
		<form action="${pageContext.request.contextPath}/usingUpdate.do?table=usinggreenballoon" method="post"  id="editForm"  enctype="multipart/form-data">
		   <fieldset>
		   <legend>글수정하기</legend>
			<div class="form-group">
			  <label for="category"  >카테고리</label>
			  <input type="text"   name="category"   id="category"   class="form-control"   value="${dto.category}"> 
			</div>															
			<div class="form-group">
			  <label for="title"  >제목</label>
			  <input type="text"   name="title"   id="title"   class="form-control"  value="${dto.title}"> 
			</div>	
			<div class="form-group">
			  <label for="content"  >내용</label>
			  <textarea name="content"  id="content"  cols="60"  rows="10"   class="form-control">${dto.content}</textarea>
			</div>
			<div class="form-group">
			 	 <label for="file"  >업로드파일</label>
				<input type="file"   name="file"   id="file"   class="form-control">
 			</div>	
 			<c:if test="${dto.file ne null}"><p>${dto.file}</p></c:if>						
			<input type="hidden" id="no" name="no" value="${dto.no}">	
			<input type="hidden"   name="file2"   id="file2" value="${dto.file}">
			<div class="form-group  text-right">
				<input type="submit"   value="입력"   class="btn btn-danger"  >  
				<input type="reset"    value="취소"  class="btn btn-default"    >  
				<a href="${pageContext.request.contextPath}/using.do?table=usinggreenballoon"   class="btn btn-default"   >목록보기</a>
			</div>
		 </fieldset>		
		</form> <!-- end form -->	
</div>
<script>	
	jQuery(document).ready(function(){
		jQuery("#editForm").submit(function(){
			if(jQuery("#bpass").val()==""){
				alert("비밀번호를 입력하세요");
				$("#bpass").focus();
				return false;
			}
			if(jQuery("#btitle").val()==""){
				alert("제목을 입력하세요");
				$("#btitle").focus();
				return false;
			}
			if(jQuery("#bcontent").val()==""){
				alert("내용을 입력하세요");
				$("#bcontent").focus();
				return false;
			}
		});
	});
</script>
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>