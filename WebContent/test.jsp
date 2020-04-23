<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function(){
	var currency = "";
	$('#selfrom').on('click',function(){
		$('#currfrom').val("");
	});
	$('#selto').on('click',function(){
		$('#currto').val("");
	});
	jQuery("#currfrom").on("propertychange change keyup paste input",function() {
		currency = $('#selfrom').val()+$('#selto').val();
		$.ajax({
			url:'https://earthquake.kr:23490/query/'+currency,
			type: 'GET',
			dataType:"json",
			xhrFields : {withCredentials: false},
			crossDomain : true
			,success: function(data) {
				$('#currto').val(data[currency][0]*$('#currfrom').val());
			},error:function(xhr,textStatus,errorThrown){
				$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThrown+")");
			}
		});
	});	 
	jQuery("#currto").on("propertychange change keyup paste input",function() {
		var curr = $(this).val();
		currency = $('#selto').val()+$('#selfrom').val();
	});	  
});
$()(){};
</script>
<body>
<div class="container panel panel-info">
	<div class="col-sm-8">
		<div id="exchangeSearch" class="tab-pane">
			<div class="form-group">       
				<select title="환율1" id="selfrom" name="selfrom" class="form-controlBox" style="">
					<option value="KRW" selected>대한민국 KRW</option> 
					<option value="USD">미국 USD</option>                     
				</select>       
				<input type="number" id="currfrom" name="currfrom" class="form-control"/>
			</div>
			<p style="text-align: center;"><span class="glyphicon glyphicon-pause" style="font-size:40px;"></span></p>
			<div class="form-group">       
				<select title="환율2" id="selto" name="selto" class="form-controlBox" style="">
					<option value="KRW">대한민국 KRW</option> 
					<option value="USD" selected>미국 USD</option>     
					<option value="AUD">호주</option> 
					<option value="BRL">브라질 BRL</option> 
					<option value="CAD">캐나다 CAD</option> 
					<option value="CHF">스위스 CHF</option> 
					<option value="CNY">중국 CNY</option> 
					<option value="EUR">유로 EUR</option> 
					<option value="GBP">영국 GBP</option> 
					<option value="HKD">홍콩 HKD</option> 
					<option value="INR">인도 INR</option> 
					<option value="JPY">일본 JPY</option> 
					<option value="MXN">맥시코 MXN</option> 
					<option value="RUB">러시아 RUB</option>
					<option value="THB">태국 THB</option> 
					<option value="TWD">대만 TWD</option> 
					<option value="VND">베트남 VND</option> 
				</select>       
				<input type="number" id="currto" name="currto" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="button" id="exchangeGo" name="exchangeGo" value="환율보기" class="btn btn-default btn-block">
			</div>
		</div>
	</div>
	<div class="col-sm-4">
		<ul class="list_menu">
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
			<li><img src="${pageContext.request.contextPath}/img/flag/kor.png" src="kor" style="width:60px;">1200원</li>
		</ul>
	</div>
</div>
</body>
</html>