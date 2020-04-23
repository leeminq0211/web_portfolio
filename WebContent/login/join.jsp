<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@ include  file="../inc/header.jsp" %>

<c:if test="${result > 0}">
	<script>alert('이미 아이디가 있습니다.');</script>
</c:if>
<c:if test="${result == 0}">
	<script>alert('사용가능');</script>
</c:if>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=629f8215d649a7297cfeac7795b0f84f&libraries=services"></script>

<script>
jQuery(document).ready(function() {
	var checked=0;
	
	$("input[type=text]").on("propertychange change keyup paste input",function() { 
		var tagReg = /^<(\/)?([a-zA-Z]*)(\s[[a-zA-Z]*[^>])?(\s)*(\/)?>$/;
		if(tagReg.test($(this).val())){
			$(this).val($(this).val().slice(0,-1));
		}
	});
	jQuery("#mid").blur(function() {
		if(jQuery("#mid").val()==""){
			 $("#midCheck").html(	"아이디를 입력해주세요"	);
			return false;
		}
		else{
			var idReg = /^[A-Za-z0-9]{5,12}/g;
	        if( !idReg.test( $("#mid").val() ) ) {
	        	 $("#midCheck").html("아이디는 영문자 또는 숫자  5~12 자리 여야 만 합니다.");
	        	 jQuery("#mid").val("");
	        	 return false;
	        }else{
	        	$.ajax({
					url:"${pageContext.request.contextPath}/idcheck.do",type:"post",dataType:"text",
					data:{"mid" : $('#mid').val()} ,
					success:function(aja){
						console.log(aja);
						if(aja==0){
							$("#midCheck").html("<span style='color:green'>사용가능한 아이디 입니다.</span>");
							checked=1;
						}else{
							$("#midCheck").html("<span style='color:red'>이미 존재하는 아이디 입니다.</span>");
							checked=0;
				            return false;
						}
					},error:function(xhr,textStatus){
						alert(xhr + "(HTML-"+textStatus+"/"+")");
					}
				});//end ajax
	        }
		}
	});
	var nameReg = /^[가-힣]{2,10}$/g;
	jQuery("#mname").blur(function() {
		if(jQuery("#mname").val()==""){
			$("#mnameCheck").html("이름을 입력해주세요");
			return false;
		}else if( !nameReg.test( $("#mname").val() ) ){
			$("#mnameCheck").html(	"이름을 재대로 입력해주세요"	);
			jQuery("#mname").val("");
			return false;
		}
		else{
			$("#mnameCheck").empty();
		}
	});
	var passReg = /^(?=.+[~`!@#$%\^&*()-+=])(?=.+[a-z])(?=.+[A-Z])(?=.+[0-9]).{8,50}$/g;
	jQuery("#mpass").blur(function() {
		if(jQuery("#mpass").val()==""){
			$("#mpassCheck").html(	"패스워드를 입력해주세요"	);
			return false;
		}else if( !passReg.test( $("#mpass").val() ) ){
			$("#mpassCheck").html(	"사용할수 없는 비밀번호 형식입니다(소문자,대문자,숫자,특수기호 조합 8자리 이상)"	);
			jQuery("#mpass").val("");
			return false;
		}
		else{
			$("#mpassCheck").empty();
		}
		
	});
	jQuery("#mpasscheck").blur(function() {
		if(jQuery("#mpasscheck").val()==""){
			$("#mpasscheckCheck").html(	"패스워드 확인을 입력해주세요"	);
			return false;
		}
		
		else if(	!(jQuery("#mpass").val()==jQuery("#mpasscheck").val())	){
			$("#mpasscheckCheck").html(	"비밀번호가 다릅니다.");
			jQuery("#mpasscheck").val("");
			return false;
		}
		else{
			$("#mpasscheckCheck").empty();
		}
	});
	var emailReg = /^[a-zA-Z0-9]+(.[-_]+)*@(?:\w+\.)+\w+$/;
	jQuery("#memail").blur(function() {
		if(jQuery("#memail").val()==""){
			$("#memailCheck").html(	"이메일을 입력해주세요"	);
			return false;
		}else if( !emailReg.test( $("#memail").val() ) ){
			$("#memailCheck").html(	"사용할수 없는 이메일 형식입니다"	);
			jQuery("#memail").val("");
			return false;
		}
		else{
			$("#memailCheck").empty();
		}
	});
	jQuery("#backend3").submit(function() {
		if(checked!=1){
			alert(	"중복확인부탁드립니다."	);
			return false;
		}
		if(jQuery("#mid").val()==""){
			alert(	"아이디를 입력해주세요"	);
			jQuery("#mid").focus();
			return false;
		}
		if(jQuery("#mname").val()==""){
			alert(	"이름을 입력해주세요"	);
			jQuery("#mname").focus();
			return false;
		}
		if(jQuery("#mpass").val()==""){
			alert(	"패스워드를 입력해주세요"	);
			jQuery("#mpass").focus();
			return false;
		}
		if(jQuery("#mpasscheck").val()==""){
			alert(	"패스워드 확인을 입력해주세요"	);
			jQuery("#mpasscheck").focus();
			return false;
		}
		if(jQuery("#memail").val()==""){
			alert(	"이메일을 입력해주세요"	);
			jQuery("#memail").focus();
			return false;
		}
		if(	!(jQuery("#mpass").val()==jQuery("#mpasscheck").val())	){
			alert(	"비밀번호가 다릅니다."	);
			jQuery("#mpasscheck").focus();
			return false;
		}
	});
	mappsetting(37.500063, 127.028972);
	jQuery("#postcode").click(function(){
	    new daum.Postcode({
	        oncomplete: function(data) {
	            console.log(data);
	           $('#zonecode').val(data.zonecode);
	           $('#roadAddress').val(data.roadAddress);
	           $('#bname').val("("+data.bname+")");
	           var geocoder = new kakao.maps.services.Geocoder();
			   geocoder.addressSearch(data.address, function(result, status) {
	             if (status === kakao.maps.services.Status.OK) {
	                mappsetting(result[0].y,result[0].x);
	             }
			   });
	        }
	    }).open();
	});
	function mappsetting(lat,rat){
    	$('#map').html('');
    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { center: new kakao.maps.LatLng(lat, rat), level: 3 };
    	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    	var map = new kakao.maps.Map(mapContainer, mapOption); 
    	var markerPosition = new kakao.maps.LatLng(lat, rat);
    	var marker = new kakao.maps.Marker({ position : markerPosition });
    	marker.setMap(map);
    };
});
</script>	
<!-- Container (About Section) -->
<div class="container-fluid">
	<div class="containerLog">
	<h3>J O I N</h3>
	<p>(*)은 필수입력사항입니다</p>
	<form action="${pageContext.request.contextPath}/join.do" method="post" id="backend3" onsubmit="toEnabled()">
		<fieldset>
			<legend>필수 입력 정보</legend>
			<div class="form-group">
				<label for="mid">(*)아이디</label>
				<input type="text" id="mid" name="mid" class="form-control" placeholder="영문자 또는 숫자  5~12 자리 여야 만 합니다.">
				<p id="midCheck"></p>
			</div>
			<div class="form-group">
				<label for="mname">(*)이름</label>
				<input type="text" id="mname" name="mname" class="form-control">
				<p id="mnameCheck"></p>
			</div>
			<div class="form-group">
				<label for="mpass">(*)비밀번호</label>
				<input type="password" id="mpass" name="mpass" class="form-control" placeholder="소문자,대문자,숫자,특수기호 조합 8자리 이상">
				<p id="mpassCheck"></p>
			</div>
			<div class="form-group">
				<label for="mpasscheck">(*)비밀번호 확인</label>
				<input type="password" id="mpasscheck" name="mpasscheck" class="form-control">
				<p id="mpasscheckCheck"></p>
			</div>
			<div class="form-group">
				<label for="memail">(*)이메일</label>
				<input type="text" id="memail" name="memail" class="form-control">
				<p id="memailCheck"></p>
			</div>
			<div class="form-group">
			<label for="zonecode">(*)주소</label>
			<div class="row">
				<div class="col-sm-6">
					<input type="text" id="zonecode" name="address" placeholder="우편번호" class="form-control">
				</div>
				<div class="col-sm-6">
					<input type="button" id="postcode" value="우편번호 검색" class="form-control btn btn-info">
				</div>
			</div>
			</div>
			<div class="form-group">
				<input type="text" id="roadAddress" name="address" class="form-control" placeholder="주소">
				<input type="text" id="detailAddress" name="address" class="form-control" placeholder="상세주소">
				<input type="text" id="bname" name="address" class="form-control" placeholder="참고항목">
			</div>
			
			<div id="map" style="width:100%;height:350px;margin: auto;"></div>
			
			<div class="form-group">
				<a href="javascript:history.go(-1)"   class="btn btn-default btn-block" title="뒤로" >뒤로</a>       
				<input type="submit" value="확인"  title="확인" class="btn btn-default btn-block"> 
			</div>
		</fieldset>
	</form>
	</div>
</div>
<%@ include  file="../inc/footer.jsp" %>