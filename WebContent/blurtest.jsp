<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>타이틀 적는 곳</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
	      <a href="/promotion/promotionDetail.yb?mstNo=20000014850">
			<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002141246295441410002001091.jpg" alt="최고의 계절 봄 아테네">
	      </a>
      </div>
	  <div class="item">
	      <a href="/promotion/promotionDetail.yb?mstNo=20000014850">
			<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002181400560621410002001093.jpg" alt="뉴질랜드">
	      </a>
      </div>
	  <div class="item">
	      <a href="/promotion/promotionDetail.yb?mstNo=20000014850">
			<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002111215551561410002001038.jpg" alt="서유럽 핀에어">
	      </a>
      </div>
      <div class="item">
	      <a href="/promotion/promotionDetail.yb?mstNo=20000014850">
			<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002170858590971410002001067.jpg" alt="크로아티아를 가볍게">
	      </a>
      </div>
      <div class="item">
	      <a href="/promotion/promotionDetail.yb?mstNo=20000014850">
			<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002131702599561102001001095.jpg" alt="사이판 PIC">
	      </a>
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<script>
$(function(){
	$.ajax({
        url : '/CMMN/headerBannerList.ajax',
        timeout : 0,
        beforeSend : function(xhr) { xhr.setRequestHeader("Accept", "application/json"); },
		success:function(data){
			if( data.list.length > 0 ){
	    		var hBnrList = data.list
				var $ele;
				var obj = $('div.top_banner > div.bnr_block > ul.top_slide');
				var $fragment = $(document.createDocumentFragment());
				
				$fragment.append(
					hBnrList.map(function(itm,idx){
						return $('<li/>',{ "aria-hidden" : true}).append( $('<a/>',{ "href" : itm.link , "target" : itm.target }).append( $('<img/>',{ "src" : itm.srcPath , "alt" : itm.alt }) ) )
					})		
				)
				obj.append($fragment);
				
				if( hBnrList.length > 1 ){
					$(".top_slide").bxSlider({
						  mode: "vertical",
						  captions: false,
						  pager: false,
						  infiniteLoop:true,
						  hideControlOnEnd:true,
						  minSlides: 1,
						  maxSlides: 1,
						  moveSlides: 1,
						  slideWidth: 275
					  });
				}
	    	}
        }
	});
	function mainSpotInit() {
		$(".num_slide").bxSlider({
			auto : true,
			autoControls : true,
			autoControlsCombine : true,
			stopAutoOnClick : true,
			pager : true,
			pagerType : 'short',
			hideControlOnEnd : true,
		});
	});
});
</script> 
</body>
</html>
