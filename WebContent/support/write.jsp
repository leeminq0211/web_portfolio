<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<script>	
	jQuery(document).ready(function(){
		jQuery("#writeForm").submit(function(){
			if(jQuery("#bname").val()==""){ alert("이름을 입력하세요"); $("#bname").focus(); return false; }
			if(jQuery("#bpass").val()==""){ alert("비밀번호를 입력하세요"); $("#bpass").focus(); return false; }
			if(jQuery("#btitle").val()==""){ alert("제목을 입력하세요"); $("#btitle").focus(); return false; }
			if(jQuery("#bcontent").val()==""){ alert("내용을 입력하세요"); $("#bcontent").focus(); return false; }
		});
	});
</script>
<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>1:1문의 - 글쓰기 </h3>
		<form action="${pageContext.request.contextPath}/pwrite.do" method="post"  id="writeForm"  enctype="multipart/form-data">
		   <fieldset>
		   <legend>글쓰기</legend>
			<div class="form-group">
			  <label for="bname"  >이름</label>
			  <input type="text"   name="bname"   id="bname"   value="${sessionScope.mid}" class="form-control" disables> 
			</div>			
			<div class="form-group">
			  <label for="bpass"  >비밀번호</label>
			  <input type="password"   name="bpass"   id="bpass"   class="form-control" > 
			  <span>(*) 수정, 삭제시 필수</span>
			</div>																
			<div class="form-group">
			  <label for="btitle"  >제목</label>
			  <input type="text"   name="btitle"   id="btitle"   class="form-control" > 
			</div>	
			<div class="form-group">
			  <label for="bcontent"  >내용</label>
			  <textarea name="bcontent"  id="bcontent"  cols="60"  rows="10"   class="form-control" ></textarea>
			</div>	
			<div class="form-group">
			 	 <label for="file"  >업로드파일</label>
				<input type="file"   name="file"   id="file"   class="form-control" > 
 			</div>			
			<div class="form-group  text-right">
				<input type="submit"   value="입력"  class="btn btn-default"  style="color:white; background-color:#f4511e"   >  
				<input type="reset"    value="취소"  class="btn btn-default"    >  
				<a href="${pageContext.request.contextPath}/list.do"   class="btn btn-default"   >목록보기</a>
			</div>
		 </fieldset>		
		</form> <!-- end form -->	
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>