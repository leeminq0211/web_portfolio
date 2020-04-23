<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function() {
	jQuery("#backend3").submit(function() {
		if(jQuery("#mpass").val()==""){
			alert(	"빈칸입니다\n확인해주세요"	);
			jQuery("#mpass").focus();
			return false;
		}
		if(	!(jQuery("#newmpass").val()==jQuery("#newmpassCheck").val())	){
			alert(	"비밀번호가 다릅니다."	);
			jQuery("#newmpassCheck").focus();
			return false;
		}
	});
	var passReg = /^[0-9a-zA-Z-_]{5,20}$/g;
	jQuery("#newmpass").blur(function() {
		if(jQuery("#newmpass").val()==""){
			$("#newmpass").attr("placeholder",	"패스워드를 입력해주세요"	);
			return false;
		}else if( !passReg.test( $("#newmpass").val() ) ){
			$("#newmpass").attr("placeholder",	"사용할수 없는 비밀번호 형식입니다(영문숫자조합 5자리 이상)"	);
			jQuery("#newmpass").val("");
			return false;
		}
		else{
			$("#newmpass").attr("placeholder","");
		}
		
	});
	jQuery("#newmpassCheck").blur(function() {
		if(jQuery("#newmpassCheck").val()==""){
			$("#newmpassCheck").attr("placeholder",	"패스워드를 입력해주세요"	);
			return false;
		}else if( !(jQuery("#newmpass").val()==jQuery("#newmpassCheck").val()) ){
			$("#newmpassCheck").attr("placeholder",	"비밀번호가 다릅니다"	);
			jQuery("#newmpassCheck").val("");
			return false;
		}
		else{
			$("#newmpassCheck").attr("placeholder","");
		}
		
	});
	var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	jQuery("#memail").blur(function() {
		if(jQuery("#memail").val()==""){
			$("#memail").attr("placeholder",	"이메일을 입력해주세요"	);
			return false;
		}else if( !emailReg.test( $("#memail").val() ) ){
			$("#memail").attr("placeholder",	"사용할수 없는 이메일 형식입니다"	);
			jQuery("#memail").val("");
			return false;
		}
		else{
			$("#memail").attr("placeholder","");
		}
	});
});
</script>	
<div class="container-fluid">
	<div class="containerLoggedIn">
	<h3>MYPAGE</h3>
	<form action="${pageContext.request.contextPath}/medit.do" method="post" id="backend3">
		<fieldset>
			<legend>바꾸실 정보를 입력해주세요</legend>
				<table class="table table-striped">
					<caption>회원정보</caption>
						<tbody>
							<tr><th scope="row">아이디</th> 
							<td>${dto.mid}</tr>
							<tr><th scope="row">이전 비밀번호</th> 
							<td><input type="password" id="mpass" name="mpass" class="form-control"></td></tr>
							
							<tr><th scope="row">새 비밀번호</th> 
							<td><input type="password" id="newmpass" name="newmpass" class="form-control"></td></tr>

							<tr><th scope="row">새 비밀번호 확인</th> 
							<td><input type="password" id="newmpassCheck" name="newmpassCheck" class="form-control"></td></tr>
							<tr><th scope="row">이름</th> 
							<td><input type="text" id="mname" name="mname" placeholder="${dto.mname}" class="form-control"></td></tr>
							
							<tr><th scope="row">이메일</th> 
							<td><input type="text" id="memail" name="memail" placeholder="${dto.memail}" class="form-control"></td></tr>
							
							<tr><th scope="row">가입날짜</th> 
							<td>${dto.mdate}</td></tr>
						</tbody>
				</table>
				<div class="text-center">
					<a href="javascript:history.go(-1)"   class="btn btn-default" title="뒤로" >뒤로</a>        
					<input type="submit" value="회원정보수정"  title="회원정보수정" class="btn btn-default">
				</div>
		</fieldset>
	</form>
	</div>
</div>

<%@ include  file="../inc/footer.jsp" %>