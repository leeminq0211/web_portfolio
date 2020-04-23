<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include  file="../inc/header.jsp" %>
<script>
$(document).ready(function(){
	
	$('.tab_page').hide();
	$('.tab_fir').show();
	$("#tabList > li").on('click',function(){//id값 클릭시
		event.preventDefault();
		var warp = $(this).parent();
		$("> li",warp).removeClass('on').eq( $(this).index() ).addClass('on');
		$('> div',warp.next()).hide().eq( $(this).index() ).show();
		warp=null;
	});	
});

$(document).ready(function(){
	$('#popupclose').click(function(){
		event.preventDefault();
		$('.popup_notice').fadeOut();
		if($("#subpop").is(":checked")){
			console.log("checked");
			$.ajax({
				url:"${pageContext.request.contextPath}/setCookie.do",type:"get",dataType:"json",
				success:function(item){
						
				},error:function(xhr,textStatus,errorThrown){
					console.log(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
				}
			});//end ajax
		}
	});
});
</script>

<c:if test="${empty cookie.cookiepop.value}">
	<div class="container panel paenl-default popup_notice">
		<h3 class="panel-heading">포트폴리오 NOTICE</h3>
		<p>본사이트는 상업적목적이 아닌 개인 포트폴리오 용도로 제작되었습니다.<br>
			홈페이지의 일부내용과 기타이미지 등은 그 출처가 따로 있음을 밝힙니다</p>
		<p>
			<input type="checkbox" id="subpop" name="subpop">
			<label for="subpop">오늘하루동안 이찰열지 않음</label>
			<a href="#" class="btn btn-default" id="popupclose">[CLOSE]</a>
		</p>	
	</div>
</c:if>
<!-- 메인슬라이드 -->

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
			<a href="${pageContext.request.contextPath}/tdtailview.do?dno=12&fk_dno=4"> 
				<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002141246295441410002001091.jpg" alt="최고의 계절 봄 아테네">
			</a>
		</div>
		<div class="item">
			<a href="${pageContext.request.contextPath}/tdtailview.do?dno=16&fk_dno=5"> 
				<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002181400560621410002001093.jpg" alt="뉴질랜드">
			</a>
		</div>
		<div class="item">
			<a href="${pageContext.request.contextPath}/tdtailview.do?dno=10&fk_dno=3"> 
				<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002111215551561410002001038.jpg" alt="서유럽 핀에어">
			</a>
		</div>
		<div class="item">
			<a href="${pageContext.request.contextPath}/tdtailview.do?dno=21&fk_dno=6"> 
				<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002170858590971410002001067.jpg" alt="크로아티아를 가볍게">
			</a>
		</div>
		<div class="item">
			<a href="${pageContext.request.contextPath}/tdtailview.do?dno=6&fk_dno=1"> 
				<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002131702599561102001001095.jpg" alt="사이판 PIC">
			</a>
		</div>
	</div>
	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span> <span
		class="sr-only">Next</span>
	</a>
</div>
<!-- 메인슬라이드 -->
<div class="containerMain">
<script>
jQuery(function(){
	var dateS="";
	var dateE="";
	var search="";
	jQuery("#searchBox").keyup(function() {
		if(this.value.length>=2){
			search=$('#searchBox').val();
			searchs(search,dateS,dateE);
		}else{
			$('.searchResult').html('');
			$('#searchbutton').hide();
		}
	});
	jQuery("#searchDateS").on("change",function() {
		dateS=$('#searchDateS').val();
		searchs($('#searchBox').val(),dateS,dateE);
	});
	jQuery("#searchDateE").on("change",function() {
		dateE=$('#searchDateE').val();
		searchs($('#searchBox').val(),dateS,dateE);
	});
	$(document).on('click', '#searchAll ', function(){
		location.href="${pageContext.request.contextPath}/indexSearchArr.do?search="+search+"&dateS="+dateS+"&dateE="+dateE;
	});
	$(document).on('click', '.panelindex ', function(){
		if($(this).attr('id').substring( 9 )!=0){
			location.href="${pageContext.request.contextPath}/indexSearchArr.do?search="+search+"&tno="+$(this).attr('id').substring( 9 )+"&dateS="+dateS+"&dateE="+dateE;
		}
		//alert($(this).attr('id').substring( 9 ));
	});
	var trans=0;
	$('.bx-prev').on('click',function(){
		event.preventDefault();
		
		if(trans==0){
			$('.bx-next').removeClass('disabled').addClass('.bx-next');
			$(this).addClass('bx-prev disabled');
		}else{
			trans+=310;	
			$('#sliderDetail').attr('style','width: 4215%; position: relative; transition-duration: 0s; transform: translate3d('+trans+'px, 0px, 0px);');
		}
	});
	$('.bx-next').on('click',function(){
		event.preventDefault();
		if(trans==-1240){
			$('.bx-prev').removeClass('disabled').addClass('.bx-prev');
			$(this).addClass('bx-next disabled');
		}else{
			trans-=310;
			$('#sliderDetail').attr('style','width: 4215%; position: relative; transition-duration: 0s; transform: translate3d('+trans+'px, 0px, 0px);');
		}
		
	});
});
var searchs = function( search,dateS,dateE ) {
	$.ajax({
		url:"${pageContext.request.contextPath}/indexSearch.do",type:"get",dataType:"json",
		data:{"search" : search,"dateS":dateS,"dateE":dateE} ,
		success:function(mainList){
			$('.searchResult').html('');
			if(mainList.length==0){
				var span = $('<span class="thumb_list">').append($('<strong>').html("결과가 없습니다"));
				$('.searchResult').append($('<div class="panelindex">').attr('id','searching0').append(span));
			}else{
				for(var i=0;i<mainList.length;i++){
					var span = $('<span class="thumb_list">').append($('<img>').attr('src',"${pageContext.request.contextPath}/upload/"+mainList[i].timage));
					var indexList = $('<div class="pdt_list_reportIndex indexList">').append($('<div>').append( $('<ul class="pdt_num_score">').append($('<li>').html(mainList[i].tno)).append( $('<li class="star">').html('<em class="star">'+mainList[i].avgReview+'</em>/5') ) ));
					indexList.append('<h5 class="tit_list_block">'+mainList[i].ttitle+'</h5> <span class="list_date">'+mainList[i].minDate+' ~ '+mainList[i].maxDate+'</span> <span class="list_price"> <em><strong>'+mainList[i].minPrice+'</strong> 원~</em></span>');
					$('<div class="panelindex">').append(span)
					$('.searchResult').append($('<div class="panelindex">').attr('id','searching'+mainList[i].tno).append(span).append(indexList));
					$('#searchbutton').show();
					span=null;indexList=null;
				}
			}
		},error:function(xhr,textStatus,errorThrown){
			$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
		}
	});//end ajax
	return;
}


</script>

<!-- 검색 -->
<div class="subMainbox">
	<div class="searchBox">
		<div class="row">
			<div class="col-sm-6">
				<label for="searchBox"><strong class="tit">여행지</strong></label>
				<input type="text" name="searchBox" placeholder="아시아를 검색해보세요!" id="searchBox" class="form-control">
			</div>
			<div class="col-sm-6" >
				<label for="searchDate"><strong class="tit">출발날짜</strong></label>
				<div class="row">
					<div class="col-sm-6">
						<input type="date" name="searchDateS" id="searchDateS" class="form-control">
					</div>
					<div class="col-sm-6">
						<input type="date" name="searchDateE" id="searchDateE" class="form-control">
					</div>
				</div>
			</div>
		</div>
		<div class="tagArea">
			<div class="row">
				<div class="col-sm-2 text-center" >
					<strong class="tit">봄바람을타고</strong>
				</div>
				<div class="col-sm-6" >
					<p class="box_link">
						<a href="${pageContext.request.contextPath}/tdtailview.do?dno=10&fk_dno=3">#영국</a>
						<a href="${pageContext.request.contextPath}/tdtailview.do?dno=11&fk_dno=4">#이태리</a>
						<a href="${pageContext.request.contextPath}/tdtailview.do?dno=22&fk_dno=7">#제주</a>
						<a href="${pageContext.request.contextPath}/tdtailview.do?dno=5&fk_dno=1">#방콕</a>
					</p>
				</div>
				<div class="col-sm-4 text-right" id="searchbutton" style='display: none;'>
					<button class="btn_wit_g" name="searchAll" id="searchAll">전체 검색</button>
				</div>
			</div>
		</div>
		<div class="searchResult">


		</div>
	</div>
</div>

<!-- 고객님을 위한 맞춤 상품 슬라이드 -->
<div class="subMain">
	<h2 class="stit_con_title">새로운 여행</h2>
	<div class="slide_blocks">
		<div class="bx-wrapper" style="max-width: 900px;">
			<div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 200px;">
				<ul class="slider" id="sliderDetail" style="width: 4215%; position: relative; overflow:hidden; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
					
					<c:forEach var="mainList" items="${mainList}" varStatus="mainListStatus">
					<li style="float: left; list-style: none; position: relative; width: 298px; margin-right: 10px;" aria-hidden="true">
						<a href="${pageContext.request.contextPath}/tMainList.do?month=0&order=ddate&no=${mainList.tno}">
							<img src="${pageContext.request.contextPath}/upload/${mainList.timage}" alt="${mainList.timage}"  onerror="this.src='${pageContext.request.contextPath}/img/thumb_noimg.png'"  style="width:300px">
							<div class="mainPic">
								<h5 class="tit_list_main">${mainList.ttitle}</h5>
								<span class="list_price_main">
		                        	<em><strong><fmt:formatNumber value="${mainList.minPrice}" pattern="#,###,###"/></strong> 원~</em>									
								</span>
							</div>
						</a>
					</li>
					</c:forEach>
					
				</ul>
			</div>
			<div class="bx-controls bx-has-controls-direction bx-has-pager">
				<div class="bx-controls-direction">
					<a class="bx-prev" href="">Prev</a>
					<a class="bx-next" href="">Next</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 탭회색 -->
<div class="subMain">
<h2 class="stit_con_title">추천여행</h2>
<div class="box_guide_trips tab_wrap tabWrap bg-grey" id="tripDetail">
	<ul class="tab_page_cont tabs_fixed tabPageCont fix" id="tabList" style="display: table;">
	    <li class="on"><a href="#">빛나는 베가스</a></li>
	    <li><a href="#">요들 스위스로</a></li>
	    <li><a href="#">ALL IN ONE</a></li>
	    <li><a href="#">청정 제주</a></li>
	</ul>	
	<div class="cont_tabs">		
		<div class="tab_page tab_fir"> 	
			<div class="tab_body">
			<a href="${pageContext.request.contextPath}/tMainList.do?where=아메리카&month=0&order=ddate&no=6">
				<table style="width:100%;">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				  <tr>
				    <th scope="col"><p class="mtitle">인생의 최고의 하루를 만들기 위해 떠나요</p><p class="msub">당신의 운을 확인해보세요</p><button type="button" class="btn_nor cfrm">GO</button></th>
				   	<th scope="col"><img src="${pageContext.request.contextPath}/upload/vegas.png" alt="vegas" style="width: 100%;height: 75%;"></th>
				  </tr>
				</table>
			</a>
			</div>
		</div>
		<div class="tab_page"> 			
			<div class="tab_body">
			<a href="${pageContext.request.contextPath}/tMainList.do?where=유럽&month=0&order=ddate&no=3">
				<table style="width:100%;">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				  <tr>
				    <th scope="col">
				    	<p class="mtitle">3개국이 만나는 스위스 산맥</p>
				    	<p class="msub">안전한 여행을 위해</p>
				    	<button type="button" class="btn_nor cfrm">GO</button>
				    </th>
				     <th scope="col">
				    	<img src="${pageContext.request.contextPath}/upload/swiss.png" alt="swiss" style="width: 100%;height: 75%;">
				    </th>
				  </tr>
				</table>
			</a>
			</div>
		</div>
		<div class="tab_page"> 			
			<div class="tab_body">
			<a href="${pageContext.request.contextPath}/tMainList.do?where=아시아&month=0&order=ddate&no=2">
				<table style="width:100%;">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				  <tr>
				    <th scope="col">
				    	<p class="mtitle">모든걸 다 포함한 패키지</p>
				    	<p class="msub">no 추가금,no 판매,no 팁</p>
				    	<button type="button" class="btn_nor cfrm">GO</button>
				    </th>
				    <th scope="col">
				    	<img src="${pageContext.request.contextPath}/upload/allinone.jpg" alt="allinone" style="width: 100%;height: 75%;">
				    </th>
				  </tr>
				</table>
			</a>
			</div>
		</div>
		<div class="tab_page"> 			
			<div class="tab_body">
			<a href="${pageContext.request.contextPath}/tMainList.do?where=국내&month=0&order=ddate&no=7">
				<table style="width:100%;">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				  <tr>
				    <th scope="col">
				    	<p class="mtitle">아름다운 우리섬 제주</p>
				    	<p class="msub">안전한 국내여행</p>
				    	<button type="button" class="btn_nor cfrm">GO</button>
				    </th>
				    <th scope="col">
				    	<img src="${pageContext.request.contextPath}/upload/jeju.png" alt="jeju" style="width: 100%;height: 75%;">
				    </th>
				  </tr>
				</table>
			</a>
			</div>
		</div>
    </div>
</div>
</div>
<!-- 탭회색 end-->
<div class="subMain">
	<div class="col-sm-8">
	<h2 class="tit_main_title left">공지 사항</h2>
	<div class="btn_right">
		<a href="${pageContext.request.contextPath}/notice.do?pstartno=0&table=notice" class="link_line">더보기</a>
    </div>
	<table class="table table-striped">
		<caption>새로운 공지</caption>
		<colgroup>
		        <col style="width:10%">
		        <col style="width:60%">
		        <col style="width:30%">
		        <col>
		    </colgroup>
		<thead>
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${list}" begin="0" end="4" step="1" varStatus="status">
				<tr>
					<td>${status.index+1}</td>
					<td ><a href="${pageContext.request.contextPath}/noticeDetail.do?no=${item.no}&table=notice">${item.title}</a></td>
					<td>${fn:substring(item.date, 0, 10)}</td>
				</tr>	
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div class="col-sm-4">
              <h2 class="tit_main_title">자주하는 질문</h2>
              <div class="btn_right">
                  <a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon" class="link_line">더보기</a>
              </div>
              <ul class="list_menu">
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=6">예약조회</a></li>
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=11">상품결제</a></li>
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=5">환불처리</a></li>
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=3">마일리지</a></li>
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=10">현금연수증</a></li>
					<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon&num=9">카드결제</a></li>
              </ul>
	</div>
</div> 
</div>
<%@ include  file="../inc/footer.jsp" %>
