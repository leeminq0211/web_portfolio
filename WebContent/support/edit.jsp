<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include  file="../inc/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<%@page import="java.sql.*"%>
<div class="container"  style="margin-top:5%; min-height:500px"   >
	<h3>MULTIBOARD - 글수정 </h3>
		<form action="${pageContext.request.contextPath}/edit.do" method="post"  id="editForm"  enctype="multipart/form-data">
		   <fieldset>
		   <legend>	UPDATE</legend>
			<div class="form-group">
			  <label for="bname"  >이름</label>
			  <input type="text"   name="bname"   id="bname"   class="form-control"   value="${dto.bname}"  disabled> 
			</div>			
			<div class="form-group">
			  <label for="bpass"  >비밀번호</label>
			  <input type="password"   name="bpass"   id="bpass"   class="form-control" > 
			  <span>(*) 수정, 삭제시 필수</span>
			</div>																
			<div class="form-group">
			  <label for="btitle"  >제목</label>
			  <input type="text"   name="btitle"   id="btitle"   class="form-control"  value="${dto.btitle}"> 
			</div>	
			<div class="form-group">
			  <label for="bcontent"  >내용</label>
			  <textarea name="bcontent"  id="bcontent"  cols="60"  rows="10"   class="form-control">${dto.bcontent}</textarea>
			</div>
			<div class="form-group">
			 	 <label for="file"  >업로드파일</label>
				<input type="file"   name="file"   id="file"   class="form-control">
 			</div>	
 			<c:if test="${dto.bfile ne null}"><p>${dto.bfile}</p></c:if>						
			<input type="hidden" id="bno" name="bno" value="${dto.bno}">	
			<input type="hidden"   name="file2"   id="file2" value="${dto.bfile}">
			<div class="form-group  text-right">
				<input type="submit"   value="입력"   class="btn btn-danger"  >  
				<input type="reset"    value="취소"  class="btn btn-default"    >  
				<a href="${pageContext.request.contextPath}/list.do"   class="btn btn-default"   >목록보기</a>
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