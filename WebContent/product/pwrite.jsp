<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<script>	
jQuery(document).ready(function(){
	jQuery("#pwriteForm").submit(function(){
		if(jQuery("#dname").val()=="")		{ alert("상품세부명을 입력하세요"); 	$("#dname").focus(); return false; }
		if(jQuery("#ddtail1_1").val()=="")	{ alert("여행설명을 입력하세요"); 	$("#ddtail1_1").focus(); return false;}
		if(jQuery("#ddtail1_2_1").val()=="")	{ alert("여행이미지3장 올려주세요"); 	$("#ddtail1_2_1").focus(); return false;}
		if(jQuery("#ddtail1_2_2").val()=="")	{ alert("여행이미지3장 올려주세요"); 	$("#ddtail1_2_2").focus(); return false;}
		if(jQuery("#ddtail1_2_3").val()=="")	{ alert("여행이미지3장 올려주세요"); 	$("#ddtail1_2_3").focus(); return false;}
		if(jQuery("#ddtail2_1").val()=="")	{ alert("미팅일시를 입력하세요"); 	$("#ddtail2_1").focus(); return false;}
		if(jQuery("#ddtail2_2").val()=="")	{ alert("미팅장소를 입력하세요"); 	$("#ddtail2_2").focus(); return false;}
		if(jQuery("#ddtail3").val()=="")	{ alert("상세설명을 입력하세요"); 	$("#ddtail3").focus(); return false;}			
		if(jQuery("#ddate_1").val()=="")	{ alert("여행기간을 입력하세요"); 	$("#ddate_1").focus(); return false;}
		if(jQuery("#dair_1").val()=="")	{ alert("출발공항을 입력하세요"); 	$("#dair_1").focus(); return false;}
		if(jQuery("#dair_2").val()=="")	{ alert("도착공항을 입력하세요"); 	$("#dair_2").focus(); return false;}
		if(jQuery("#dair_3").val()=="")	{ alert("출발항공을 입력하세요"); 	$("#dair_3").focus(); return false;}
		if(jQuery("#dair_4").val()=="")	{ alert("도착항공을 입력하세요"); 	$("#dair_4").focus(); return false;}
		if(jQuery("#dcity_1").val()=="")	{ alert("주요 방문도시를 입력하세요"); 	$("#dcity_1").focus(); return false;}
		if(jQuery("#dcity_2").val()=="")	{ alert("나라를 입력하세요"); 		$("#dcity_2").focus(); return false;}
		if(jQuery("#dcity_3").val()=="")	{ alert("대륙을 입력하세요"); 		$("#dcity_3").focus(); return false;}
		if(jQuery("#dsit").val()=="")		{ alert("남은 좌석을 입력하세요"); 	$("#dsit").focus(); return false;}
		if(jQuery("#dprice").val()=="")		{ alert("가격을 입력하세요"); 		$("#dprice").focus(); return false; }
	});
	var sqlReg =  /(\|\|\|)/;
	jQuery("#ddtail1_1").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#ddtail2_1").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#ddtail2_2").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#ddtail3").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#ddate_1").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dcity_1").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dcity_2").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dcity_3").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dair_1").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dair_2").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dair_3").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); }});
	jQuery("#dair_4").on("propertychange change keyup paste input",function() { if (sqlReg.test($(this).val())) { $(this).val($(this).val().slice(0,-1)) ; alert("|||는 사용할수 없는 문자열입니다."); 
	}});
});
</script>
<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>상품 - 글쓰기 </h3>
		<form action="${pageContext.request.contextPath}/dwrite.do" method="post"  id="pwriteForm"  enctype="multipart/form-data">
		   <fieldset>
		   <legend>글쓰기</legend>
			<div class="form-group">
			  <label for="dname"  >상품세부명</label>
			  <input type="text"   name="dname"   id="dname"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="ddtail1_1"  >여행설명</label>
			  <textarea name="ddtail1_1"  id="ddtail1_1"  cols="60"  rows="10"   class="form-control" ></textarea>
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="ddtail1_2_1"  >여행이미지</label>
			  <input type="file"   name="ddtail1_2_1"   id="ddtail1_2"   class="form-control" > 
			  <input type="file"   name="ddtail1_2_2"   id="ddtail1_2"   class="form-control" > 
			  <input type="file"   name="ddtail1_2_3"   id="ddtail1_2"   class="form-control" > 
			</div>	
			<div class="form-group">
			  <label for="ddtail2_1"  >미팅일시</label>
			  <input type="date"   name="ddtail2_1"   id="ddtail2_1"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="ddtail2_2"  >미팅장소</label>
			  <input type="text"   name="ddtail2_2"   id="ddtail2_2"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>	
			<div class="form-group">
			  <label for="ddtail2_3"  >호텔이름</label>
			  <input type="text"   name="ddtail2_3"   id="ddtail2_3"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>		
			<div class="form-group">
			  <label for="ddtail2_4"  >포함사항</label>
			  <textarea name="ddtail2_4"  id="ddtail2_4"  cols="60"  rows="5"   class="form-control" ></textarea>
			</div>		
			<div class="form-group">
			  <label for="ddtail2_5">불포함사항</label>
			  <textarea name="ddtail2_5"  id="ddtail2_5"  cols="60"  rows="5"   class="form-control" ></textarea>
			</div>						
			<div class="form-group">
			  <label for="ddtail2_6">전달사항</label>
			  <textarea name="ddtail2_6"  id="ddtail2_6"  cols="60"  rows="5"   class="form-control" ></textarea>
			</div>						
			<div class="form-group">
			  <label for="ddtail3"  >상세설명</label>
			  <textarea name="ddtail3"  id="ddtail3"  cols="60"  rows="10"   class="form-control" ></textarea>
			  <span>(*)필수 입력</span>
			  <input type="file"   name="ddtail3_1"   id="ddtail3_1"   class="form-control" > 
			</div>						
			<div class="form-group">
			  <label for="dcategory">카테고리</label>
			  <select class="form-control" id="dcategory" name="dcategory">
			    <option value="해외패키지">해외패키지</option>
			    <option value="프리미엄">프리미엄</option>
			    <option value="테마">테마</option>
			  </select>
			  <span>(*)필수 입력</span>
			</div>						
			<div class="form-group">
			  <label for="ddate_1"  >여행기간(시작일)</label>
			  <input type="date"   name="ddate_1"   id="ddate_1"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
			  <label for="ddate_2"  >여행기간(종료일)</label>
			  <input type="date"   name="ddate_2"   id="ddate_2"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
			  <label for="dair_1"  >출발공항</label>
			  <input type="text"   name="dair_1"   id="dair_1"   class="form-control" > 
			</div>
			<div class="form-group">
			  <label for="dair_2"  >도착공항</label>
			  <input type="text"   name="dair_2"   id="dair_2"   class="form-control" > 
			</div>
			<div class="form-group">
			  <label for="dair_3"  >출발항공</label>
			  <input type="text"   name="dair_3"   id="dair_3"   class="form-control" > 
			</div>	
			<div class="form-group">
			  <label for="dair_4"  >도착항공</label>
			  <input type="text"   name="dair_4"   id="dair_4"   class="form-control" > 
			</div>
			<div class="form-group">
			  <label for="dcity_1"  >주요방문도시</label>
			  <input type="text"   name="dcity_1"   id="dcity_1"   class="form-control" > 
			  <span>(*)필수 입력 / 방문도시가 여러곳일 경우 - 으로 추가해주세요</span>
			</div>
			<div class="form-group">
			  <label for="dcity_2"  >나라</label>
			  <input type="text"   name="dcity_2"   id="dcity_2"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
			  <label for="dcity_3"  >대륙</label>
			  <select class="form-control" id="dcity_3" name="dcity_3">
			  	<option value="국내">국내</option>
			    <option value="유럽">유럽</option>
			    <option value="아시아">아시아</option>
			    <option value="아메리카">아메리카</option>
			    <option value="아프리카">아프리카</option>
			  </select>
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
			  <label for="dsit"  >남은좌석</label>
			  <input type="number"   name="dsit"   id="dsit"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
			  <label for="dprice"  >가격</label>
			  <input type="number"   name="dprice"   id="dprice"   class="form-control" > 
			  <span>(*)필수 입력</span>
			</div>
			<div class="form-group">
				<input type="text" name="fk_dno" id="fk_dno" value="${param.tno}" class="form-control" readonly>
				<span>(*)상위상품번호</span>
			</div>
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