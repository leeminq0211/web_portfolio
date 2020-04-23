<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>녹색풍선</title>
<!-- Latest compiled and minified CSS -->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="img/icon.png" type="image/x-icon">
<link rel="icon" href="img/icon.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/stylePortfolio1.css" type="text/css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<div class="mq_header">
		<h1 class="myhidden">포트폴리오명(상호명)</h1>
		<nav class="navbar navbar-default navbar-fixed-top mybg">
			<h2 class="myhidden">주메뉴</h2>
			<div class="container  mycss">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand logo"
						href="${pageContext.request.contextPath}/index.jsp"><img
						alt="logo" src="${pageContext.request.contextPath}/img/logo.png">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav myul">
						<li><a href="${pageContext.request.contextPath}/tMainList.do?where=국내&month=0">국내 <span class="mq_tri"></span></a></li>
						<li><a href="${pageContext.request.contextPath}/tMainList.do?where=유럽&month=0">유럽 <span class="mq_tri"></span></a></li>
						<li><a href="${pageContext.request.contextPath}/tMainList.do?where=아시아&month=0">아시아 <span class="mq_tri"></span></a></li>
						<li><a href="${pageContext.request.contextPath}/tMainList.do?where=아메리카&month=0">아메리카 <span class="mq_tri"></span></a></li>
						<li><a href="${pageContext.request.contextPath}/javaPortfolio.do">자바포트폴리오 <span class="mq_tri"></span></a></li>
						<c:if test="${sessionScope.mid eq 'admin'}">
							<li><a href="${pageContext.request.contextPath}/tMainListTest.do">상품등록 <span class="mq_tri"></span></a></li>
						</c:if>
					</ul>
					<ul class="mqcss_nav">
						<li><a href="#search" class="total_search top"><img
								alt="search"
								src="${pageContext.request.contextPath}/img/btn_search.png"></a>
								<ul class="mqcss_search_sub" style='display: none;'>
									<li class="search_li">
									<input type="text" name="searchText" id="searchText" class="searchT" placeholder="코끼리를 검색해보세요!"/></li>
									<li class="search_li"><a href="#" class="text_search">검색</a></li>
								</ul>
						</li>
						<li><a  href="#" id="categrory"><img alt="categrory"
								src="${pageContext.request.contextPath}/img/btn_all_categrory.png">
								<span class="caret"></span></a>
							  <ul  class="mqcss_nav_sub" style='display: none;'>
						      	<li><a href="${pageContext.request.contextPath}/notice.do?pstartno=0&table=notice">공지사항 </a></li>
						        <li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon">자주묻는질문</a></li>
						        <li><a href="${pageContext.request.contextPath}/list.do?pstartno=0">1:1상담</a></li>
					          </ul>		
						</li>
					</ul>
					<!-- sub -->
					<!-- sub -->
          <script>
          jQuery(function(){
        	  jQuery(".mqcss_nav li .mqcss_nav_sub").hide();
        	  jQuery(".mqcss_nav >li >#categrory").click(function(){
        		  jQuery(".mqcss_nav li .mqcss_nav_sub").show();
        		  return false;
        	  });
        	  jQuery(".mqcss_nav >li > .mqcss_nav_sub").mouseleave(function(){
        		  jQuery(".mqcss_nav li .mqcss_nav_sub").hide();
        		  return false;
        	  });
        	  $('.mqcss_search_sub').hide();
        	  $('.total_search').click(function(){
        		  if($('.mqcss_search_sub').attr('style')=='display: none;'){
        			  $('.mqcss_search_sub').show();
        		  }else{
        			  $('.mqcss_search_sub').hide();
        		  }
        	  }); 
        		$("#sidetabList > li").on('click',function(){//id값 클릭시
        			event.preventDefault();
        			var warp = $(this).parent();
        			$("> li",warp).removeClass('on').eq( $(this).index() ).addClass('on');
        			$('> div',warp.next()).hide().eq( $(this).index() ).show();
        			warp=null;
        		});	
        		var source = "ko";
        		var target = "en";
        		$("#searchGo").click(function(){
        			  $("#text").val("");
        			  $.ajax({
        					url:"${pageContext.request.contextPath}/papago.do",type:"post",dataType:"json",
        					data:{"search" : $('#papagoIn').val() , "source" : source , "target" : target } ,
        					success:function(data){
        						console.log(data);
        						console.log(source + "//" + target);
        						var result = data.message.result.translatedText;
        						$("#text").val(result);
        					},error:function(xhr,textStatus,errorThrown){
        						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThrown+")");
        					}
        				});//end ajax
        			});
        		  $("#change").click(function(){
        			 	if($("#change").val()=="한->영"){
        			 		$("#change").val("영->한");
        			 		source = "en";
        			 		target = "ko";
        			 	}else{
        			 		$("#change").val("한->영");
        			 		source = "ko";
        			 		target = "en";
        			 	}
        		  });
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
        						console.log(data);
        						$('#currto').val(data[currency][0]*$('#currfrom').val());
        						currency=null;
        					},error:function(xhr,textStatus,errorThrown){
        						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThrown+")");
        						currency=null;
        					}
        				});
        			});	 
        			jQuery("#currto").on("propertychange change keyup paste input",function() {
        				currency = $('#selto').val()+$('#selfrom').val();
        				$.ajax({
        					url:'https://earthquake.kr:23490/query/'+currency,
        					type: 'GET',
        					dataType:"json",
        					xhrFields : {withCredentials: false},
        					crossDomain : true
        					,success: function(data) {
        						console.log(data);
        						$('#currfrom').val(data[currency][0]*$('#currto').val());
        						currency=null;
        					},error:function(xhr,textStatus,errorThrown){
        						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThrown+")");
        						currency=null;
        					}
        				});
        			});	  
        	  $('.text_search').click(function(){
        		  event.preventDefault();
        		  var searching = "${pageContext.request.contextPath}/searchList.do?searching="+$('#searchText').val();
        		  location.href=searching;
        	  });
			if(window.location.pathname=='/portfolio/index.do'||window.location.pathname=='/portfolio/tdtailview.do'){
        		  $('.leftarrow').fadeIn();
        		  $('.leftarrow').click(function(){
        			  console.log($('.leftside').css("width"));
            		  if($('.leftarrow').css( "left" )=='0px'){
            			  $('.leftside').fadeIn();
                		  $( '.leftarrow' ).css( "left", $('.leftside').css("width") );
                		  $( '.leftarrow' ).attr('src','${pageContext.request.contextPath}/img/leftclose.png')
            		  }else{
            			  $('.leftside').fadeOut();
                		  $( '.leftarrow' ).css( "left", "0%" );
                		  $( '.leftarrow' ).attr('src','${pageContext.request.contextPath}/img/leftopen.png')

            		  }
            	  });
  				if(window.location.pathname=='/portfolio/index.do'){
					$('.leftarrow ').hide();
					$(window).scroll(function () {
						console.log($(window).scrollTop());
						console.log($(window).height());
						console.log($('#myCarousel').offset().top);
						console.log($(window).scrollTop() <=$('#myCarousel').offset().top+10);
					if ($(window).scrollTop() <=$('#myCarousel').offset().top+50) {
							$('.leftarrow ').fadeOut();
	                		  $( '.leftarrow' ).css( "left", "0%" );
	                		  $( '.leftarrow' ).attr('src','${pageContext.request.contextPath}/img/leftopen.png')
							$('.leftside ').fadeOut();
						}
						else{
							$('.leftarrow').fadeIn();
						}
					});
				}
          	  }else if(window.location.pathname=='/portfolio/tdtailview.do'){
          		  $('.leftarrow').fadeIn();
          	  }
        	 
          });
          </script>
					<!-- sub -->
					<!-- sub -->
					<ul class="nav navbar-nav login">
						<c:choose>
							<c:when test="${sessionScope.mid eq null}">
								<li><a
									href="${pageContext.request.contextPath}/login_view.do">로그인</a></li>
								<li><a
									href="${pageContext.request.contextPath}/login/join_agree.jsp">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/mypage.do">${sessionScope.mid}</a></li>
								<li><a
									href="${pageContext.request.contextPath}/login/logout.jsp">로그아웃</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<img alt="arrow" src="${pageContext.request.contextPath}/img/leftopen.png" class="leftarrow"/>
	<div class="box_guide_trip tab_wrap tabWrap leftside" id="sidetripDetail" style="display: none;">
	<ul class="tab_page_cont tabs_fixed tabPageCont fix lefttap" id="sidetabList" style="display: table;">
	    <li class="on"><a href="#">번역기</a></li>
	    <li><a href="#">환율계산기</a></li>
	</ul>	
	<div class="cont_tabs paddincon">		
		<div class="tab_page tab_fir" id="side_tab_page_fir"> 	
			<div class="box_tabs" data-group="tabArea">
				 <div class="cont_tabs paddincon" data-name="tabCont">
					<div id="papagoSearch" class="tab-pane">
						<div class="form-group">
						<label for="search">번역할 문장</label>
							<textarea style="resize: none;" name="papagoIn"  id="papagoIn"  cols="60"  rows="2"   class="form-control" ></textarea>
						</div>
						<div class="form-group">
							<div id="papago">
								<label for="text">번역한 문장</label>
								<textarea style="resize: none;" name="text"  id="text"  cols="60"  rows="2"   class="form-control" readonly></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="transbuttons">
								<div class="col-sm-search">
									<input type="button" id="searchGo" name="searchGo" value="검색" class="btn btn-default btn-block">
								</div>
								<div class="col-sm-langch">
									<input type="button" id="change" name="change" value="한->영" class="btn btn-default btn-block"><br>
								</div>
							</div>
						</div>
				    </div>
				</div>
			</div>
		</div>
		<div class="tab_page"> 		
			<div class="box_tabs" data-group="tabArea">
				<div class="cont_tabs" data-name="tabCont">	
					<div id="exchangeSearch" class="tab-pane">
						<div class="form-group">       
							<select title="환율1" id="selfrom" name="selfrom" class="form-controlBox" style="">
								<option value="KRW" selected>대한민국 KRW</option> 
								<option value="USD">미국 USD</option>                     
							</select>       
							<input type="number" id="currfrom" name="currfrom" class="form-control"/>
						</div>
						<p style="text-align: center;"><span class="glyphicon glyphicon-pause" style="font-size:20px;"></span></p>
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
					</div>
				</div>
			</div>
		</div>
    </div>
</div>