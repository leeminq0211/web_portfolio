<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>	#test{   width:300px;  position:fixed; top:45%;  left:5%;   }   </style>
</head>
<body  style="min-height:3000px;">
	<div class="container panel panel-info"  id="test" >
		<h3 class="panel-heading">TEST</h3>
		<p><a href="#"   id="top">TOP</a></p>
	</div>
	<script>
	$(function(){
		$("#test").hide();
		$(window).scroll(function(){
			if(  $(this).scrollTop()   > 300  ){   $("#test").fadeIn();   }
			else{  $("#test").fadeOut();   }
			$("#top").click(function(){   $("body, html").animate({"scrollTop":"0"} , 800);   return false; });
		});
	});
	</script>
</body>
</html>






