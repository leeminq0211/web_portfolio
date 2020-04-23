<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<script>	
jQuery(document).ready(function(){
	jQuery("#rwriteForm").submit(function(){
		
//rtitle , rdetail ,rdate
		if(jQuery("#rtitle").val()=="")		{ alert("제목을 입력하세요"); 	$("#rtitle").focus(); return false; }
		if(jQuery("#rdetail").val()=="")	{ alert("설명을 입력하세요"); 	$("#rdetail").focus(); return false;}
		if(jQuery("#rdate").val()=="")	{ alert("날짜를 입력하세요"); 	$("#rdate").focus(); return false;}
	});
});
</script>
<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>리뷰 - 글쓰기 </h3>
		<form action="${pageContext.request.contextPath}/rwrite.do" method="post"  id="rwriteForm">
		   <fieldset>
		   <legend>글쓰기</legend>
			<div class="form-group">
			  <label for="rtitle"  >리뷰제목</label>
			  <input type="text"   name="rtitle"   id="rtitle"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="리뷰평점"  >리뷰내용</label>
			  <textarea name="rdetail"  id="rdetail"  cols="60"  rows="10"   class="form-control" ></textarea>
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="rstar">리뷰평점</label>
			  <select class="form-control" id="rstar" name="rstar">
			    <option value="1">1점</option>
			    <option value="2">2점</option>
			    <option value="3">3점</option>
			    <option value="4">4점</option>
			    <option value="5">5점</option>
			  </select>
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="rtype">여행유형</label>
			  <select class="form-control" id="rtype" name="rtype">
			    <option value="가족(아이동반)">가족(아이동반)</option>
			    <option value="가족">가족</option>
			    <option value="친구/커플">친구/커플</option>
			    <option value="혼자(싱글)">혼자(싱글)</option>
			    <option value="단체/기타">단체/기타</option>
			  </select>
			  <span>(*)필수 입력</span>
			</div>		
			<div class="form-group">
			  <label for="rdate"  >여행날짜</label>
			  <input type="date"   name="rdate"   id="rdate"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<input type="hidden"   name="rname"   id="rname"   value="${sessionScope.mid}">								
			<input type="hidden"   name="fk_rno"   id="fk_rno"   value="2">								
			<div class="form-group  text-right">
				<input type="submit"   value="입력"  class="btn btn-default"  style="color:white; background-color:#f4511e"   >  
				<input type="reset"    value="취소"  class="btn btn-default"    >  
				<a href="${pageContext.request.contextPath}/dlist.do"   class="btn btn-default"   >목록보기</a>
			</div>
		 </fieldset>		
		</form> <!-- end form -->	
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>