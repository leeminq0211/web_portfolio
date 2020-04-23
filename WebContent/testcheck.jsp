<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!-- 메인슬라이드 -->
<script>
$(function(){
	var enCheck = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{5,100}$/;
	$('#test').click(function(){
		if(!enCheck.test($('#text').val())){
			alert("5글자 이상 작성해주세요");
		}
	});
});
</script>
<div class="container">

  <input type="text" id="text" class="form-control">

  <button id="test" class="btn btn-danger">test</button>
</div>


<%@ include  file="../inc/footer.jsp" %>
