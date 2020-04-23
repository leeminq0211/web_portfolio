<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<script>	
jQuery(document).ready(function(){
	jQuery("#twriteMainForm").submit(function(){
		if(jQuery("#ttitle").val()=="")		{ alert("메인 제목을 입력하세요"); 	$("#ttitle").focus(); return false; }
		if(jQuery("#timage").val()=="")		{ alert("메인 이미지을 입력하세요"); 	$("#timage").focus(); return false; }
	});
	var sqlReg =  /(\|\|\|)/;
	jQuery("#ttitle").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다.");
	}});
});
</script>
<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>메인상품 - 글쓰기 </h3>
		<form action="${pageContext.request.contextPath}/twriteMain.do" method="post"  id="twriteMainForm"  enctype="multipart/form-data">
		   <fieldset>
		   <legend>글쓰기</legend>
		   <!-- 
			private int tno;
			private String ttitle;
			private String timage
		   -->
		  	<div class="form-group">
			  <label for="ttitle"  >메인 제목</label>
			  <input type="text"   name="ttitle"   id="ttitle"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="timage"  >메인 이미지</label>
			  <input type="file"   name="timage"   id="timage"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group  text-right">
				<input type="submit"   value="입력"  class="btn btn-default"  style="color:white; background-color:#f4511e"   >  
				<input type="reset"    value="취소"  class="btn btn-default"    >  
				<a href="${pageContext.request.contextPath}/tlistMain.do"   class="btn btn-default"   >목록보기</a>
			</div>
		 </fieldset>		
		</form> <!-- end form -->	
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>