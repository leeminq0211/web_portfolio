<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function() {
	jQuery("#backend3").submit(function() {
		if(jQuery("#mid").val()==""){
			alert(	"아이디를 입력해주세요"	);
			jQuery("#mid").focus();
			return false;
		}
		if(jQuery("#mpass").val()==""){
			alert(	"패스워드를 입력해주세요"	);
			jQuery("#mpass").focus();
			return false;
		}
	});
	$("#custom-login-btn").click(function(){
  		location.href = 'https://kauth.kakao.com/oauth/authorize?client_id=aebe97ba7e2f11cbcbff8a77dc2e8b85&redirect_uri=http://leeminq0211.cafe24.com/portfolio/KakaoLogin&response_type=code';
	});
});
</script>	

<!-- Container (About Section) -->
<div class="container-fluid">
	<div class="containerLog">
	<form action="${pageContext.request.contextPath}/login.do" method="post" id="backend3">
		<fieldset>
			<legend>로그인</legend>
			<div class="form-group">
				<label for="mid">아이디:</label>
				<input type='text' id='mid' name='mid' value='${cookieid}' class='form-control'>
			</div>
			<div class="form-group">
				<label for="mpass">비밀번호:</label>
				<input type="password" id="mpass" name="mpass" class="form-control">
			</div>
			<div class="form-group row">
				<div class="col-md-4">
					<input type="checkbox" name="remember" id="remember" value="remember" checked="${cookieid}">
					<label for="remember">아이디저장</label>
			</div>
				<div class="col-md-8 text-right">
					<input type="submit" value="로그인"  title="로그인" class="btn btn-default"> 
					<a href="${pageContext.request.contextPath}/login/join_agree.jsp"   class="btn btn-default" title="회원가입" >회원가입</a>       
					<a id="custom-login-btn" href="#">
						<img src="${pageContext.request.contextPath}/img/btn_fnb_sns3.png" width="35px" class="kakaoimg"/>
					</a>
				</div>
			</div>
		</fieldset>
	</form>
	</div>
</div>
<%@ include  file="../inc/footer.jsp" %>