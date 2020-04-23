<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ include file="../inc/header.jsp"%>

<script>


	$(document).ready(function(){
		$('.box_booking').hide();
		 $('.rightarrow').fadeIn();
		  $('.reserveicon').click(function(){
   		  if($('.box_booking').attr('class')!='lnb_block box_booking lnb_fixed disable'){
			$('.box_booking').fadeIn();
   			$('.box_booking').addClass('disable');
   			$('.box_booking').removeClass('enable');
			$( '.reserveicon' ).attr('src','${pageContext.request.contextPath}/img/reservedicon.png');
   		  }else{
 			$('.box_booking').fadeOut();
   			$('.box_booking').addClass('enable');
   			$('.box_booking').removeClass('disable');
			$( '.reserveicon' ).attr('src','${pageContext.request.contextPath}/img/reserveicon.png');
   		  }
   	  });

		
		var fk_dno = location.search.split('fk_dno=')[1];
		if(fk_dno==undefined){
			fk_dno = '<c:out value="${fk_dno}"/>';
		}
		console.log(fk_dno);
		rvwEvent.init(0,fk_dno);//rtype,fk_rno
		rvwEvent.star(fk_dno);
		reviewView.init(fk_dno,0);//fk_rno,pstartno
		$('#sliderDetail > li').click(function(){
			event.preventDefault();
			console.log( $(this).children().children().attr('src') );
			var img = $('<img>').attr('src',$(this).children().children().attr('src')).attr('style','width: 100%;');
			$('.modal-body').html("");
			$('.modal-body').append(img);
			$("#myModal").modal();
			img=null;
		});
		$('#adultCnt').on("change",function(){
			$('#priceSummary').html((($('#oriPrice').val()*$('#adultCnt').val())+($('#oriPrice').val()*$('#chdCnt').val()))+(($('#oriPrice').val()*0.4)*$('#infCnt').val()));
		});
		$('#chdCnt').on("change",function(){
			$('#priceSummary').html((($('#oriPrice').val()*$('#adultCnt').val())+($('#oriPrice').val()*$('#chdCnt').val()))+(($('#oriPrice').val()*0.4)*$('#infCnt').val()));
		});
		$('#infCnt').on("change",function(){
			$('#priceSummary').html((($('#oriPrice').val()*$('#adultCnt').val())+($('#oriPrice').val()*$('#chdCnt').val()))+(($('#oriPrice').val()*0.4)*$('#infCnt').val()));
		});
		$("#rwriteForm").submit(function(){
			//rtitle , rdetail ,rdate
			var enCheck = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{5,100}$/;
			if(jQuery("#rtitle").val()=="")		{ alert("제목을 입력하세요"); 	$("#rtitle").focus(); return false; }
			if(!enCheck.test($('#rtitle').val())){ alert("5글자 이상 작성해주세요");	$("#rtitle").focus(); return false; }
			if(jQuery("#rdetail").val()=="")	{ alert("설명을 입력하세요"); 	$("#rdetail").focus(); return false;}
			if(!enCheck.test($('#rdetail').val())){ alert("10글자 이상 작성해주세요");	$("#rdetail").focus(); return false; }
			if(jQuery("#rdate").val()=="")	{ alert("날짜를 입력하세요"); 	$("#rdate").focus(); return false;}
			enCheck=null;
		});
		$(".tab_page").css("display", "none");//div 안의 내용들
		$(".tab_day").css("display", "block");//첫번째
		$("#tabList > li").on('click',function(){//id값 클릭시
			event.preventDefault();
			var warp = $(this).parent();
			$("> li",warp).removeClass('on').eq( $(this).index() ).addClass('on');
			$('> div',warp.next()).hide().eq( $(this).index() ).show();
			$("html, body").scrollTop($("#tripDetail").position().top);
			warp=null;
		});
		$("#_rvwTab > li").on('click',function(){
			event.preventDefault();
			var warp = $(this).parent();
			$("> li",warp).removeClass('on').eq( $(this).index() ).addClass('on');
			$("html, body").scrollTop($("#_rvw").position().top);
			rvwEvent.init($(this).index(),fk_dno);
			reviewView.init(fk_dno, $(this).find('em').html());
			warp=null;
		});
		$("#_rvwListOrder li").on('click',function(){
			event.preventDefault();
			$(this).parent().find('li').removeClass('on').eq( $(this).index() ).addClass('on');
		});
		$(document).on('click', '#tsub2 > .reviews_accordion > .box_tit', function(){
			event.preventDefault();
			var warp = $(this).parent().parent();
			if($('> .reviews_accordion',warp).eq($(this).parent().index()).hasClass('open')){
				$('> .reviews_accordion',warp).removeClass('open');
				$("> .reviews_accordion > .box_txt",warp).attr('style',"");
			}
			else{
				$("> .reviews_accordion",warp).removeClass('open');
				$("> .reviews_accordion > .box_txt",warp).attr('style',"");
				$("> .reviews_accordion",warp).eq($(this).parent().index()).addClass('open');
				$("> .reviews_accordion > .box_txt",warp).eq($(this).parent().index()).attr('style',"display: block;");
			}
			warp=null;
		});
		$('#writereview').click(function(){
			if(jQuery("#rtitle").val()==""){ alert(	"제목을 입력해주세요"	); jQuery("#rtitle").focus(); return false; }
			if(jQuery("#rcontent").val()==""){ alert(	"내용을 입력해주세요"	); jQuery("#rcontent").focus(); return false; }
			if(jQuery("input[name='rstar']").val()==""){ alert(	"별점을주세요"	); jQuery("#rcontent").focus(); return false; }
			if(jQuery("#rdate").val()=="")	{ alert("날짜를 입력하세요"); 	$("#rdate").focus(); return false;}
			var parent = $(this).parent().parent();
			var star = $('ul > li > :radio[name="starCNT"]:checked',parent).val();
			
			parent=null;star=null;
		});
		$(document).on('click', '.page > a', function(){
			event.preventDefault();
			if( $(this).html()=="" ){
				reviewView.init(fk_dno,$(this).attr('class'));
			}else{
				reviewView.init(fk_dno,$(this).html()-1);
			}
		});
		$("#_rvwListOrder li").on('click',function(){
			event.preventDefault();
			reviewView.init(fk_dno,$(this).attr('data-field') );
		});
		$('.bx-prev').on('click',function(){
			event.preventDefault();
			$('.bx-next').removeClass('disabled').addClass('.bx-next');
			$(this).addClass('bx-prev disabled');
			$('#sliderDetail').attr('style','width: 4215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);');
		});
		$('.bx-next').on('click',function(){
			event.preventDefault();
			$('.bx-prev').removeClass('disabled').addClass('.bx-prev');
			$(this).addClass('bx-next disabled');
			$('#sliderDetail').attr('style','width: 4215%; position: relative; transition-duration: 0s; transform: translate3d(-35px, 0px, 0px);');
		});
		$(document).on('click', '.btn_like', function(){
			var mid = '<%=session.getAttribute("mid") %>';
			$(this).closest('div.box_txt').prev().find( 'span.bluelike' ).html(Number($(this).closest('div.box_txt').prev().find( 'span.bluelike' ).html())+1);
			if(mid != "null"){
				$(this).attr('class','btn_like_done');
				reviewView.rlike($(this).attr('id').substring(8),1);
			}else{
				alert('로그인후 이용해주세요');
				location.href="${pageContext.request.contextPath}/login_view.do";
			}
			mid=null;
		});
		$(document).on('click', '.btn_like_done', function(){
			var mid = '<%=session.getAttribute("mid") %>';
			$(this).closest('div.box_txt').prev().find( 'span.bluelike' ).html(Number($(this).closest('div.box_txt').prev().find( 'span.bluelike' ).html())-1);
			if(mid != "null"){
				$(this).attr('class','btn_like');
				reviewView.rlike($(this).attr('id').substring(8),-1);
			}else{
				alert('로그인후 이용해주세요');
			}
		});
		$(document).on('click', '#showwritereview', function(){
			$("#myModal2").modal();
		});
		$('#side_tab_page').hide();
		$('#side_tab_page_fir').show();
	  	/*$(window).scroll(function () {
	  		if ($(window).scrollTop() + $(window).height()>=$('#footer').offset().top+10) {
   				$('.scroll_action ').fadeOut();
   			}
   			else{
   				$('.scroll_action').fadeIn();
   			}

	  	});*/
	});
	var rvwEvent = {
			state : { 
				star : 0
			}
			,init : function(rtype,fk_rno){
				$.ajax({
					url:"${pageContext.request.contextPath}/rchart.do",type:"get",dataType:"json",
					data:{"rtype" : rtype,"fk_rno":fk_rno} ,
					success:function(chart){
						var item;var star;var deci;var legend;
						$('#_rvwGraphList').html("");
						item= chart.list;
						console.log(chart.avglist[0].star);
						$('.reviews_score > em').html(chart.avglist[0].star); 
						$('.reviews_total').html('('+chart.avglist[0].count+"건)"); 
						star = Math.floor(chart.avglist[0].star);
						deci = (chart.avglist[0].star*10)-(Math.floor(chart.avglist[0].star)*10);
						if(deci>=5){
							$('#_rvwStar > img').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'_5.png');
						}else{
							$('#_rvwStar > img').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'.png');
						}
						legend = ["최악","별로","보통","좋음","아주좋음"];
						for(var i=0;i<item.length;i++){
							var id = "_rvwGraphList"+item[i].rstar;
							var rstar= parseInt(item[i].rstar)-1;
							var per = item[i].per+'%';
							var count = item[i].count;
							var li = $('<li>');
							var span1 = $('<span class="graph_bar">').attr('id',id);
							var span2 = $('<span class="graph_legend">').append(legend[rstar]);
							var span3 = $('<span class="graph_count">').append(count);
							li.append(span1).append(span2).append(span3);
							$('#_rvwGraphList').append(li);
							$("#"+id).animate({ width: per }, { duration: 1000, specialEasing: { width: 'linear' } });
							id=null;rstar=null;per=null;count=null; li=null; span1=null; span2=null; span3=null;
						}
						item=null;star=null;deci=null;legend=null;
					},error:function(xhr,textStatus,errorThrown){
						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
					}
				});//end ajax
			}
			,star : function(fk_rno){
				$.ajax({
					url:"${pageContext.request.contextPath}/rchart.do",type:"get",dataType:"json",
					data:{"rtype" : 0,"fk_rno":fk_rno} ,
					success:function(chart){
						$('.goods_reviews_list > li > a').html("");
						var item= chart.list;
						console.log(chart.avglist[0].star);
						$('.goods_reviews_list > li > a').html('고객리뷰');
						var star = Math.floor(chart.avglist[0].star);
						var deci = (chart.avglist[0].star*10)-(Math.floor(chart.avglist[0].star)*10);
						if(deci>=5){
							$('.goods_reviews_list > li > a').append($('<img>').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'_5.png'));
						}else{
							$('.goods_reviews_list > li > a').append($('<img>').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'.png'));
						}
						$('.goods_reviews_list > li > a').append(chart.avglist[0].star); 
						$('.goods_reviews_list > li > a').append('('+chart.avglist[0].count+"건)"); 
						item=null;star=null;deci=null;
					},error:function(xhr,textStatus,errorThrown){
						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
					}
				});//end ajax
			}
	}
	var reviewView = {
			state : { 
				pstartno : 0
				,pageAll : 0
				,onepagelimit : 0
				,order : "rdate"
				,rtype : "전체"
			}
			,init : function(fk_rno,pstartno){
				if(pstartno=="btn_page_next"){
					this.state.pstartno=(this.state.pstartno)+this.state.onepagelimit;
					pstartno=this.state.pstartno;
				}else if(pstartno=="btn_page_last"){
					this.state.pstartno=this.state.onepagelimit*(this.state.pageAll-1);
					pstartno=this.state.pstartno;
				}else if(pstartno=="btn_page_prev"){
					this.state.pstartno=(this.state.pstartno)-this.state.onepagelimit;
					pstartno=this.state.pstartno;
				}else if(pstartno=="btn_page_first"){
					this.state.pstartno=0;
					pstartno=this.state.pstartno;
				}else if(pstartno=="rdate"||pstartno=="rpick"||pstartno=="rstar"){
					this.state.order=pstartno;
					pstartno=this.state.pstartno;
				}else if(pstartno=="전체"||pstartno=="혼자(싱글)"||pstartno=="친구/커플"||pstartno=="가족(아이동반)"||pstartno=="가족"||pstartno=="단체/기타"){
					this.state.rtype=pstartno;
					pstartno=0;
				}
				else{
					pstartno = pstartno*5;
					this.state.pstartno=pstartno;
				}
				$.ajax({
					url:"${pageContext.request.contextPath}/reviewAjax.do",type:"get",dataType:"json",
					data:{"fk_rno":fk_rno,"pstartno":pstartno,"rtype":reviewView.state.rtype, "order":reviewView.state.order} ,
					success:function(reivew){
						
						$('#tsub2 > .reviews_accordion').remove();
						$('#tsub2 > .reviews_accordion open').remove();
						$('.page').html("");
						
						var paging = reivew.page;
						var next_bottom = parseInt(paging.next_bottom);
						reviewView.state.pageAll = parseInt(paging.pageAll);
						reviewView.state.onepagelimit = parseInt(paging.onepagelimit);
						var item = reivew.list;
						var rpick="0";
						if(reivew.rpick!='undefined'){
							rpick = reivew.rpick;
						}
						var btn_page_first,btn_page_prev,btn_page_next,btn_page_last;
						if(paging.current_bottom<=1){
							btn_page_first = $('<span class="btn_page_first disabled">');
							btn_page_prev = $('<span class="btn_page_prev disabled">');
						}else{
							btn_page_first = $('<a href="#none" class="btn_page_first">');
							btn_page_prev = $('<a href="#none" class="btn_page_prev">');
						}

						$('.page').append(btn_page_first).append(btn_page_prev);
						for(var j=paging.pre_bottom;j<=paging.next_bottom;j++){
							if(paging.current_bottom==j){
								$('.page').append($('<a href="#none" class="on">').html(j));
							}else{
								$('.page').append($('<a href="#none">').html(j));
							}
						}
						if(paging.current_bottom>=paging.pageAll){
							btn_page_next = $('<span class="btn_page_next disabled">');
							btn_page_last = $('<span class="btn_page_last disabled">');
						}else{
							btn_page_next = $('<a href="#none" class="btn_page_next">');
							btn_page_last = $('<a href="#none" class="btn_page_last">');
						}
						$('.page').append(btn_page_next).append(btn_page_last);
						
						
						for(var i=0;i<item.length;i++){
							//rtitle,rdetail,rstar,rname,rtype,rdate,fk_rno
							var star = Math.floor(item[i].rstar);
							var deci = (item[i].rstar*10)-(Math.floor(item[i].rstar)*10);
							var img = "";
							if(deci>=5){
								img = $('<img>').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'_5.png').attr('art',item[i].rstar);
							}else{
								img = $('<img>').attr('src','${pageContext.request.contextPath}/img/ico_star_'+star+'.png').attr('art',item[i].rstar);
							}
							
							var accordion,box_tit,title,starView,box_info,box_txt,answer_box,abs_like,recommand_btn_area;
							accordion = $('<div class="reviews_accordion">');
							
							box_tit =  $('<div class="box_tit">');
							title =  $('<div class="title">').append( $('<strong class="link_ellipsis">').html(item[i].rtitle) ).append($('<span class="emp_blue">').html("&nbsp\&nbsp\&nbsp\&nbsp")).append($('<span class="emp_blue bluelike">').html(item[i].rpick));
								box_tit.append(title);
							starView = img.append( $('<em class="emp_black">').html(item[i].rstar) );
							box_info = $('<div class="box_info">').append( $('<span>').html(starView) ).append( $('<span>').html(item[i].rname) ).append( $('<span>').html(item[i].rdate.substring( 0, 10 )) );
								box_tit.append(box_info);
							box_txt = $('<div class="box_txt" style="">');
							answer_box = $('<div class="answer_box">').append( $('<ul class="def_reviews">').append( $('<li>').append( $('<em>').append('여행유형') ).append(item[i].rtype)) ).append( $('<p class="txt_answer">').html(item[i].rdetail) );
							var like_button;
							if(rpick!==undefined){
								for(var x=0;x<rpick.length;x++){
									
									if(rpick[x].rpick==item[i].rno){
										like_button=$('<button type="button" class="btn_like_done" id="btn_like'+item[i].rno+'">');
										console.log(rpick[x].rpick);
										break;
									}else{
										like_button=$('<button type="button" class="btn_like" id="btn_like'+item[i].rno+'">');
									}
								}
							}else{
								like_button=$('<button type="button" class="btn_like" id="btn_like'+item[i].rno+'">');
							}
							abs_like = $('<span class="abs_like">').append( like_button.append( $('<span>').html('좋아요') ) ).append( $('<span class="recommand_num emp_blue">').html(item[i].rpick) );
							recommand_btn_area = $('<div class="recommand_btn_area">').append( $('<div>').append( $('<h4 class="tit_brd_info">').html('이 고객리뷰가 도움이 되었나요?') ).append(abs_like) );
								
							box_txt.append(answer_box).append(recommand_btn_area);
							
							accordion.append(box_tit).append(box_txt);
							$('#tsub2').append(accordion);
							star=null; deci=null; img=null; accordion=null;box_tit=null;title=null;starView=null;box_info=null;box_txt=null;answer_box=null;abs_like=null;recommand_btn_area=null;like_button=null;
						}
						paging=null; next_bottom=null; item=null; btn_page_first=null; rpick=null; 
					},error:function(xhr,textStatus,errorThrown){
						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
					}
				});//end ajax
			}
			,rlike : function(rno,num){
				$.ajax({
					url:"${pageContext.request.contextPath}/rlike.do",type:"get",dataType:"json",
					data:{"rno":rno,"num":num} ,
					success:function(reivew){
						var rpick=reivew.rpick;
						$('#btn_like'+rno).siblings().html(rpick);
						rpick=null;
					},error:function(xhr,textStatus,errorThrown){
						$(this).html(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
					}
				});//end ajax
			}
		}
</script>
<% 
pageContext.setAttribute("crcn","\r\n"); 
pageContext.setAttribute("br","<br/>"); 
%>
<c:choose>
	<c:when test="${fn:length(result) ne 0}">
		<script>  
			alert('<c:out value="${result}"/>');
		</script>
	</c:when>
	<c:when test="${fn:length(resultRwrite) ne 0}">
		<script>
			alert('<c:out value="${resultRwrite}"/>');
		</script>
	</c:when>
</c:choose>
<input  type="hidden" id="fk_dnoH" value="${dto.fk_dno}">
<img alt="reserveicon" src="${pageContext.request.contextPath}/img/reserveicon.png" class="reserveicon"/>
<div id="containerDetail">
	<div id="product" class="product_block">
		<div class="cont_desc_prod">
			<h3 class="tit_con_title">${dto.dname}</h3>
			<div class="desc_head">
				<span class="tag"><span class="tag_rect pkg"><span>${dto.dcategory}</span></span></span>
				<div class="box_info_prod">
					<dl class="definition_list bar">
						<dt>상품번호</dt>
						<dd>ASP${dto.dno}</dd>
					</dl>
					<div class="box_editor">
						${fn:replace(dto.ddtail1_1, crcn, br)}
					</div>
					<div class="block_detail_reviews">
						<ul class="goods_reviews_list">
							<li>
								<a href="#_anchorRvw">
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="slide_block">
					<div class="bx-wrapper" style="max-width: 900px;">
						<div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 267px;">
							<ul class="slider" id="sliderDetail" style="width: 4215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
								<li style="float: left; list-style: none; position: relative; width: 300px; margin-right: 15px;" aria-hidden="true">
									<a href="#">
										<img src="${pageContext.request.contextPath}/upload/${dto.ddtail1_2.split('\\|\\|')[0]}" alt="${dto.ddtail1_2.split('\\|\\|')[0]}"  onerror="this.src='${pageContext.request.contextPath}/img/thumb_noimg.png'">
									</a>
								</li>
								<li style="float: left; list-style: none; position: relative; width: 300px; margin-right: 15px;" aria-hidden="true">
									<a href="#">
										<img src="${pageContext.request.contextPath}/upload/${dto.ddtail1_2.split('\\|\\|')[1]}" alt="${dto.ddtail1_2.split('\\|\\|')[1]}" onerror="this.src='${pageContext.request.contextPath}/img/thumb_noimg.png'">
									</a>
								</li>
								<li style="float: left; list-style: none; position: relative; width: 300px; margin-right: 15px;" aria-hidden="false">
									<a href="#">
										<img src="${pageContext.request.contextPath}/upload/${dto.ddtail1_2.split('\\|\\|')[2]}" alt="${dto.ddtail1_2.split('\\|\\|')[2]}" onerror="this.src='${pageContext.request.contextPath}/img/thumb_noimg.png'">
									</a>
								</li>
							</ul>
						</div>
						<div class="bx-controls bx-has-controls-direction bx-has-pager">
							<div class="bx-controls-direction">
								<a class="bx-prev disabled" href="">Prev</a>
								<a class="bx-next" href="">Next</a>
							</div>
							<div class="bx-pager bx-default-pager">01 / 03</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="myModal" role="dialog" style="display: none;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
							
							</div>
						</div>
					</div>
				</div>	
			</div>
			<div class="desc_body">                
				<div class="box_desc">                    
					<table class="tbl_basic">
						<caption>여행상품 정보</caption>
						<colgroup>
							<col style="width:138px;"><col>
						</colgroup>
						<tbody>                
							<tr>
						       <th scope="row">여행 기간</th>
						       <td>
									<span class="emp_black">
									         <fmt:parseDate value="${dto.ddate_1}" var="ddate_1" pattern="yyyy-MM-dd"/>
											<fmt:parseNumber value="${ddate_1.time / (1000*60*60*24)}" integerOnly="true" var="ddate_1"></fmt:parseNumber>
											<fmt:parseDate value="${dto.ddate_2}" var="ddate_2" pattern="yyyy-MM-dd"/>
											<fmt:parseNumber value="${ddate_2.time / (1000*60*60*24)}" integerOnly="true" var="ddate_2"></fmt:parseNumber>
											${ddate_2 - ddate_1}박
									</span>
					           </td>
							</tr>
							<tr>
								<th scope="row">이용 교통</th>
								<td>			
									<div class="tbl_line">    				
					    				<div class="box_air_term">
									        <dl class="flight_regular">
									            <dt>출발공항:${dto.dair_1}</dt>
									            <dt>출발항공:${dto.dair_3}</dt>
									            <dd>-${dto.ddate_1}</dd>
												<dt>도착공항:${dto.dair_2}</dt>
												<dt>도착항공:${dto.dair_4}</dt>
												<dd>-${dto.ddate_2}</dd>
									        </dl>
					    				</div>        		
					        		</div>
					    		</td>
							</tr>
							<!-- 옵션형 웹전시 표시 -->
							<tr>
							    <th scope="row">방문도시</th>
							    <td> <div class="tbl_line">${dto.dcity_1}</div> </td>
							</tr>		
								<tr>
								    <th scope="row">남은좌석</th>
								    <td>
								    <span>${dto.dsit}</span>
								    </td>
								</tr>
					    </tbody>
					</table>
					<!-- 대상자 구분 표 -->
					<table class="tbl_vertical tbl_price">
					    <caption>대상자 구분 가이드</caption>
					    <colgroup>
					        <col style="width:152px">
					        <col style="width:253px">
					        <col style="width:253px">
					        <col>
					    </colgroup>
					    <thead>
							    <tr>
							        <th scope="col">구분</th>
							        <th scope="col">성인</th>
							        <th scope="col">
							           	 아동<br><span>(만 2세~ 만 12세 미만)</span>
							        </th>
							        <th scope="col" class="align_tp">
							            	유아<br><span>(만 2세 미만)</span>
							        </th>
							    </tr>
					    </thead>
					    <tbody>
						    <tr>
						        <td scope="row">기본 상품가</td>
						        <td><span class="price_align">${dto.dprice} 원</span></td>
						                <td><span class="price_align">${dto.dprice} 원</span></td>
						                <td><span class="price_align">${dto.dprice*0.4} 원</span></td>
						    </tr>
						    <tr>
						        <td scope="row">유류할증료</td>
						        <td><span class="price_align">0 원</span></td>
						                <td><span class="price_align">0 원</span></td>
						                <td><span class="price_align">0 원</span></td>
						    </tr>
					   </tbody>
					   <tfoot>
							   <tr class="total">
							     <td scope="row">
									<span class="emp_black">
										총 상품가
									</span>
							    </td>
							    <td><span class="price_align emp_red">${dto.dprice} 원</span></td>
							    <td><span class="price_align emp_red">${dto.dprice} 원</span></td>
							    <fmt:parseNumber var="baby" value="${dto.dprice*0.4}" type="number" integerOnly="true" />
							    <td><span class="price_align emp_red">${baby} 원</span></td>
						    </tr>
					    </tfoot>
					</table>
					<ul class="tbl_info_list">
					    <li>유류할증료는 유가와 환율에 따라 변동될 수 있습니다.</li>
					    <li>아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다.</li>
					</ul>
					<!-- // 대상자 구분 표 -->
					<!-- 자유(F) / 허니문(H) 일 경우 안내 배너   -->
					<!-- //자유(F) / 허니문(H) 일 경우 안내 배너   -->
					<div class="box_etc">
					        <div class="item_op">
					            <h5 class="tit_list_block tit_op1">포함사항</h5>
					            <div class="box_editor" style="width: 670px;">
					            	<p>${fn:replace(dto.ddtail2_4, crcn, br)}</p>				            
					            </div>
					    	</div>
					    	<div class="item_op">
					            <h5 class="tit_list_block tit_op2">불포함사항</h5>
					            <div class="box_editor" style="width: 670px;">
					            	<p>${fn:replace(dto.ddtail2_5, crcn, br)}</p>
					            </div>
					        </div>
					    <!--[[ 불포함사항 info04 End ]]-->
					        <div class="item_op">
					            <h5 class="tit_list_block tit_op3">참고/전달사항</h5>
					            <div class="box_editor" style="width: 670px;">
					            	<p>${fn:replace(dto.ddtail2_6, crcn, br)}</p>
					            </div>
					        </div>
					</div>
				</div>
		<div class="lnb_block box_booking lnb_fixed">
          <div class="scroll_action box_in" style="display: 670px;">
              <div class="list_booking_box">
                  <ul class="list_booking">
                      <li>
                          <span class="tit">출발</span>
                          <span class="info">${dto.ddate_1}</span>
                      </li>
                      <li>
                          <span class="tit">도착</span>
                          <span class="info">${dto.ddate_2}</span>
                      </li>
                      <li>
                          <span class="tit">교통</span>
                          <p class="box_air">
                            <span class="air_txt">${dto.dair_1} </span>
                          </p>
                      </li>                            
                  </ul>
              </div>
              <h5 class="tit_price">가격</h5>
              <ul class="list_booking price">
                  <li>
                      <span class="tit">성인</span>
                      <em class="info emp_red">${dto.dprice}원</em>
                  </li>
                  <li>
                      <span class="tit">아동</span>
                      <em class="info emp_red">${dto.dprice}원</em>
                  </li>
                  <li>
                      <span class="tit">유아</span>
                      <em class="info emp_red">${baby}원</em>
                  </li>
              </ul>
                  <div class="box_seat">
                      <span>남은좌석</span>
                     <c:choose>
                     	<c:when test="${dto.dsit<=0}"><em>마감</em></c:when>
                     	<c:otherwise><em>${dto.dsit}명</em></c:otherwise>
                     </c:choose>
                  </div>
              
			<form action="${pageContext.request.contextPath}/reservation.do?dno=${dto.dno}&fk_dno=${dto.fk_dno}"  method="post"  id="reservationForm">
				<fieldset>
                  	<div class="box_select">
                  		<div class="select num">
							<label>성인</label>
							<select title="인원선택" id="adultCnt" name="adultCnt" class="form-controlBox" style="">
								<option value="0">0</option>
								<option value="1" selected>1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>                          
							</select>
		                  </div>                      
		                  <div class="select num">
		                      <label>아동</label>
		                      <select title="인원선택" id="chdCnt" name="chdCnt" class="form-controlBox" style="">
		                              <option value="0">0</option>
		                              <option value="1">1</option>
		                              <option value="2">2</option>
		                              <option value="3">3</option>
		                              <option value="4">4</option>
		                              <option value="5">5</option>     
		                      </select>
		                   </div>                      
		                  <div class="select num">
		                      <label>유아</label>
		                      <select title="인원선택" id="infCnt" name="infCnt" class="form-controlBox" style="">
		                              <option value="0">0</option>
		                              <option value="1">1</option>
		                              <option value="2">2</option>
		                              <option value="3">3</option>
		                              <option value="4">4</option>
		                              <option value="5">5</option>     
		                      </select>
		                   </div>
		              </div>
		              <div class="box_total">
		                  <span class="tit emp_black">총 금액</span>
		                  <input type="hidden" id="oriPrice" value='${dto.dprice}'/>
		                  <span class="total emp_red"><em class="emp_red" id="priceSummary">${dto.dprice}</em>원</span>
		              </div>              
						<!-- <button type="button" class="btn_cof" name="btnClose" disabled>예약마감</button>  -->
						<c:choose>
							<c:when test="${dto.dsit<=0}">
								<button type="button" class="btn_cof" name="btnClose" disabled="">예약마감</button>
							</c:when>
							<c:otherwise>
								<input type="submit"   value="예약하기"  class="btn_cof cfrm">  
							</c:otherwise>
						</c:choose>
                  	</fieldset>
                  </form>
				</div>
          </div>

    <!-- 상품안내 -->
        <h4 class="stit_con_title">상품안내</h4>
        <div class="box_guide_prod box_detail_prod open" id="box_detail_prod">
            <div class="box_in" id="goodsInfoBox">
                <div class="box_editor" id="goodsInfoDetail">
                    <p>${fn:replace(dto.ddtail3_1, crcn, br)}</p>
                    <img alt="${dto.ddtail3_2}" src="${pageContext.request.contextPath}/upload/${dto.ddtail3_2}">
                </div>
            </div>
        </div>
    <!-- // 상품안내 -->
<!-- 여행상세 tabs -->			
<div class="box_guide_trip tab_wrap tabWrap" id="tripDetail">
	<ul class="tab_page_cont tabs_fixed tabPageCont fix" id="tabList" style="display: table;">
	    <li class="on"><a href="#">여행일정</a></li>
	    <li><a href="#">약관/취소수수료</a></li>
	    <li><a href="#">여행자보험</a></li>
	    <li><a href="#">주의 및 참고사항</a></li>
	</ul>	
	<div class="cont_tabs">		
		<div class="tab_page tab_day"> 	
		<!-- @RequestMapping(value = { "/product/fragment/eventScheduleTab.yb" , "/product/fragment/eventSchedule.yb" }) 참고 -->
			<h4 class="stit_con_title">여행일정</h4>
			<div class="box_guide">
		       <h3 class="tit_brd_info">참고하세요.</h3>
		       <p>여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 여행자의 사전 동의를 거쳐 변경될 수 있음을<br> 양지하여 주시기 바랍니다.</p>
		   	</div>
			<!-- 상품 -->
			<div class="box_schedule">
			 	<ul class="list_schedule">
					<li><span class="tit">미팅 일시</span> <span class="txt">${dto.ddtail2_1}</span></li>
					 <li><span class="tit">미팅 장소</span> <span class="txt">${dto.ddtail2_2}</span></li>  
			 	</ul>
				<div class="box_editor">
					<p class="meet_info_txt">${dto.ddtail2_2}</p>
				</div>
				<div class="box_route">
						<div class="way_start">
							<span class="country">${dto.dair_1}</span>
							<span class="time">출발</span>
							<span class="date">${dto.ddtail2_1}</span>
						</div>
						<div class="flight_time">
							<span></span>
						</div>
						<div class="way_end">
							<span class="country">${dto.dair_2}</span>
							<span class="time">도착</span>
							<span class="date">${dto.ddate_1}</span>
						</div>
					</div>	     
			</div>
		</div>
		<div class="tab_page"> 			
			<h4 class="stit_con_title">약관/취소 수수료</h4>
			<div class="box_guide wline">
				<div class="box_editor">
					<p>■ 약관<br>
					본 상품의 예약과 취소는 [국외여행 표준약관]이 적용됩니다.</p>
					<p>&nbsp;</p>					
					<p>■ 취소수수료</p>					
					<p>[여행자 및 여행사의 계약 해제 시]<br>
					- 여행개시 30일전까지(~30)&nbsp;취소 요청시 - 계약금 환불<br>
					- 여행출발일 20일전까지 (29~20)&nbsp;취소 요청시 - 여행요금의 10% 배상<br>
					- 여행출발일 10일전까지 (19~10) 취소 요청시 - 여행요금의 15% 배상<br>
					- 여행출발일&nbsp; 8일전까지 (9~8)&nbsp;취소 요청시 - 여행요금의 20% 배상<br>
					- 여행출발일&nbsp; 1일전까지 (7~1) 취소 요청시 - 여행요금의 30% 배상<br>
					- 여행출발 당일 취소 요청시 - 여행요금의 50% 배상</p>					
					<p>&nbsp;</p>					
					<p>■ 최저출발인원 미충족 시 계약해제<br>
					① 당사는 최저행사인원 이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.<br>
					② 당사는 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급 받은 계약금 환급 외에 다음 각 항목의 1의 금액을 여행자에게 배상하여야 합니다.<br>
					가. 여행개시 7일전까지 여행계약 해제 통지시 : 계약금 환급<br>
					나. 여행출발 1일전까지 통지시 : 여행요금의 30% 배상<br>
					다. 여행출발 당일 통지시 : 여행요금의 50% 배상</p>		
					<p>&nbsp;</p>				
					<p>※ 행사 진행 중 천재지변 및 불가피한 상황 발생으로 소요되는 비용은 고객님께서 부담하셔야 합니다.</p>			
					<p>&nbsp;</p>
				</div>
			</div>
		</div>
		<div class="tab_page"> 			
			<div class="box_tabs" data-group="tabArea">
				 <div class="cont_tabs" data-name="tabCont">
				<!-- 보험 -->
					<!-- 보상한도 -->
					<div class="sub_page" id="tsub_prod2" data-name="tabItem" style="display: block;">
						<div class="tit_logo_block">
							<h4 class="stit_con_title">해외/국내 여행자 보험 보상한도액</h4>	
						</div>
						<h5 class="stit_con_basic">해외 여행자 보험 보상 한도</h5>
						<ul class="con_info_list">
							<li>에어텔 일부 상품, 항공권/승선권 등 보험 제외 상품이 있으므로 별도 확인 바랍니다.</li>
						</ul>
						<p class="tbl_title_box">1억원 – 전체 상품 공통 적용 (대양주 패키지상품 제외)</p>
						<p class="txt_tbl_info">※ 2019년 10월 1일 출발 상품 부터 적용</p>
						<table class="tbl_basic mix">
							<caption>1억원 – 전체 상품 공통 적용 (대양주 패키지상품 제외)</caption>
							<colgroup>
								<col>
								<col style="width:14%">
								<col style="width:15%">
								<col style="width:21%">
								<col style="width:21%">
								<col style="width:21%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="col" colspan="3" class="high">구분</th>
									<th scope="col" class="high">만 15세 미만</th>
									<th scope="col" class="high">만 15세 이상<br>~만 69세 6개월 미만</th>
									<th scope="col" class="high">만 69세 6개월 이상<br>~만 79세 6개월 미만</th>
								</tr>
								<tr>
									<td rowspan="5">상해</td>
									<td><span class="txt_align">사망,<br>후유장애</span></td>
									<td></td>
									<td><div class="tbl_line"><span class="price_align">후유장애 시<br>50,000,000원<br>상해사망 시 보상 없음</span></div></td>
									<td><span class="price_align">100,000,000원</span></td>
									<td><span class="price_align">50,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">해외</span></td>
									<td><span class="txt_align">의료비</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td rowspan="3"><span class="txt_align">국내</span></td>
									<td><span class="txt_align">입원의료비</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">통원의료비</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">처방조제비</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
								</tr>
								<tr>
									<td rowspan="5">질병</td>
									<td><span class="txt_align">사망</span></td>
									<td></td>
									<td><span class="price_align">0원</span></td>
									<td><span class="price_align">30,000,000원</span></td>
									<td><span class="price_align">0원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">해외</span></td>
									<td><span class="txt_align">의료비</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
								</tr>
								<tr>
									<td rowspan="3"><span class="txt_align">국내</span></td>
									<td><span class="txt_align">입원의료비</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">통원의료비</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">처방조제비</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">배상책임 (면책 1만원)</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">휴대품 손해 (본인 부담금 1만원)<br>개당,조당 20만원 한도</span></td>
									<td><span class="price_align">200,000원</span></td>
									<td><span class="price_align">500,000원</span></td>
									<td><span class="price_align">200,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">중대사고 구조송환비용</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">3,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">항공기 납치 담보</span></td>
									<td><span class="price_align">1,400,000원</span></td>
									<td><span class="price_align">1,400,000원</span></td>
									<td><span class="price_align">1,400,000원</span></td>
								</tr>
							</tbody>
						</table>
						<p class="tbl_title_box">2억원 – 대양주 패키지 상품</p>
						<p class="txt_tbl_info">※ 2019년 10월 1일 출발 상품 부터 적용</p>
						<table class="tbl_basic mix">
							<caption>2억원 – 대양주 패키지 상품</caption>
							<colgroup>
								<col>
								<col style="width:14%">
								<col style="width:15%">
								<col style="width:21%">
								<col style="width:21%">
								<col style="width:21%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="col" colspan="3" class="high">구분</th>
									<th scope="col" class="high">만 15세 미만</th>
									<th scope="col" class="high">만 15세 이상<br>~만 69세 6개월 미만</th>
									<th scope="col" class="high">만 69세 6개월 이상<br>~만 79세 6개월 미만</th>
								</tr>
								<tr>
									<td rowspan="5">상해</td>
									<td><div class="tbl_line"><span class="txt_align">사망,<br></span></div></td>
									<td></td>
									<td><div class="tbl_line"><span class="price_align">후유장애 시<br>50,000,000원<br>상해사망 시 보상 없음</span></div></td>
									<td><span class="price_align">200,000,000원</span></td>
									<td><span class="price_align">50,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">해외</span></td>
									<td><span class="txt_align">의료비</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td rowspan="3"><span class="txt_align">국내</span></td>
									<td><span class="txt_align">입원의료비</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">통원의료비</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">처방조제비</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
								</tr>
								<tr>
									<td rowspan="5">질병</td>
									<td><span class="txt_align">사망</span></td>
									<td></td>
									<td><span class="price_align">0원</span></td>
									<td><span class="price_align">30,000,000원</span></td>
									<td><span class="price_align">0원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">해외</span></td>
									<td><span class="txt_align">의료비</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
								</tr>
								<tr>
									<td rowspan="3"><span class="txt_align">국내</span></td>
									<td><span class="txt_align">입원의료비</span></td>
									<td><span class="price_align">1,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">1,000,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">통원의료비</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
									<td><span class="price_align">250,000원</span></td>
								</tr>
								<tr>
									<td><span class="txt_align">처방조제비</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
									<td><span class="price_align">50,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">배상책임 (면책 1만원)</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">10,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">휴대품 손해 (본인 부담금 1만원)<br>개당, 조당 20만원 한도</span></td>
									<td><span class="price_align">200,000원</span></td>
									<td><span class="price_align">500,000원</span></td>
									<td><span class="price_align">200,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">중대사고 구조송환비용</span></td>
									<td><span class="price_align">2,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">2,000,000원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">항공기 납치 담보</span></td>
									<td><span class="price_align">1,400,000원</span></td>
									<td><span class="price_align">1,400,000원</span></td>
									<td><span class="price_align">1,400,000원</span></td>
								</tr>
							</tbody>
						</table>
						<h5 class="stit_con_basic">국내 여행자 보험 보상 한도</h5>
						<ul class="con_info_list">
							<li>국내 내륙 상품 일부는 보험 제외 상품이 있으므로 별도 확인 바랍니다.</li>
						</ul>
						<table class="tbl_basic mix">
							<caption>2억원 – 대양주 패키지 상품</caption>
							<colgroup>
								<col>
								<col style="width:14%">
								<col style="width:15%">
								<col style="width:21%">
								<col style="width:21%">
								<col style="width:21%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="col" colspan="3" class="high">구분</th>
									<th scope="col" class="high">만 15세 미만</th>
									<th scope="col" class="high">만 15세 이상<br>~만 69세 6개월 미만</th>
									<th scope="col" class="high">만 69세 6개월 이상<br>~만 79세 6개월 미만</th>
								</tr>
								<tr>
									<td>상해</td>
									<td><span class="txt_align">사망,<br>후유장애</span></td>
									<td></td>
									<td><div class="tbl_line"><span class="price_align">후유장애 시<br>30,000,000원<br>상해사망 시 보상 없음</span></div></td>
									<td><span class="price_align">50,000,000원</span></td>
									<td><span class="price_align">30,000,000원</span></td>
								</tr>
								<tr>
									<td>질병</td>
									<td><span class="txt_align">사망,<br>후유장애</span></td>
									<td></td>
									<td><span class="price_align">0원</span></td>
									<td><span class="price_align">50,000,000원</span></td>
									<td><span class="price_align">0원</span></td>
								</tr>
								<tr>
									<td colspan="3"><span class="txt_align">배상책임 (면책 1만원)</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
									<td><span class="price_align">5,000,000원</span></td>
								</tr>
								<tr>
									 <td colspan="3"><span class="txt_align">휴대품 손해 (본인 부담금 1만원)<br>개당, 조당 20만원 한도</span></td>
									 <td><span class="price_align">500,000원</span></td>
									 <td><span class="price_align">500,000원</span></td>
									 <td><span class="price_align">500,000원</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //보상한도 -->
					<!-- 보상기준 -->
					<div class="sub_page" id="tsub_prod3" data-name="tabItem" style="display: none;">
						<div class="tit_logo_block">
							<h4 class="stit_con_title">해외/국내 여행자 보험 보상기준</h4>
						</div>
						<div class="insuinfo">
							<h5 class="stit_con_basic">해외 여행자 보험 보상기준</h5>
							<h6 class="tit_list_block">1. 의료비 보상 기간 (※의료비 청구 시 자기부담 발생)</h6>
							<ul class="con_info_list">
								<li>보험기간 종료 후 30일 이내 의사의 치료를 받기 시작했을 때 의사의 치료를 받기 시작한 날로부터 180일 동안 통원 90회, 처방조제는 처방전 90건까지 보상<br>
									통원은 180일동안 외래 90회, 처방조제는 90건까지 보상</li>
								<li>국내 입원, 통원 치료 시 의료비 자기 부담금 발생 (건당)<br>
									- 입원 : 자부담 급여10%+비급여20% 발생<br>
									- 통원 : 요양기관에 따라 1~2만원 or 공제기준 금액(금여10%+비급여20%) 중 큰 금액 공제 후 지급
								</li>
							</ul>
							<h6 class="tit_list_block">2. 국내 치료의 국민의료보험 적용 여부</h6>
							<ul class="con_info_list">
								<li>국민건강보험법을 적용받지 못하는 경우(국민건강보험법에서 정한 요양 급여 절차를 거치지 않은 경우도 포함), 본인이 실제로 부담한 금액의 40% 보상<br>
									예) 치과치료 한방치료에서 발생한 국민건강보험법상 요양 급여에 해당되지 않는 비급여 의료비 보상내역 제외</li>
							</ul>
							<h6 class="tit_list_block">3. 보험 청구 기간</h6>
							<ul class="con_info_list">
								<li>사고 발생일로부터 3년</li>
								<li>물품 도난 시 폴리스 리포트 받은 날로부터 3년</li>
								<li>의료는 첫 치료 받은 날부터 3년</li>
							</ul>
							<h6 class="tit_list_block">4. 보험 가입 대상 (출발일 기준)</h6>
							<ul class="con_info_list">
								<li>만 15세 미만 : 5천만원 (후유장애/상해사망시 보상없음)</li>
								<li>만 15세 이상~만 69세 6개월 미만 : 1억원 (전체상품 공통적용/단, 대양주 패키지 제외)</li>
								<li>만 15세 이상~만 69세 6개월 미만 : 2억원 (대양주 패키지에 한해 적용)</li>
								<li>만 69세 6개월 이상~만 79세 6개월 미만 : 5천만원 (공통)</li>
								<li>만 79세 6개월 이상 : 보험가입 불가</li>
							</ul>
							<div class="box_guide wline">
								<p class="txt_normal">예) 2009년 10월 1일 보험 가입 시</p>
								<ul class="list_hyphen">
									<li>1995년 4월 1일 이전(4월 1일 포함) 출생자 : 성인 요금 적용</li>
									<li>1995년 4월 2일 이후 출생자 : 15세 미만 요금 적용</li>
									<li>1940년 4월 1일 이전(4월 1일 포함) 출생자 : 70세 이상 요금 적용</li>
									<li>1940년 4월 2일 이후 출생자 : 성인 요금 적용</li>
									<li>1930년 4월 1일 이전(4월 1일 포함) 출생자 : 보험 가입 불가</li>
								</ul>
							</div>
							<h6 class="tit_list_block">5. 보험금 지급 제외의 경우</h6>
							<ul class="con_info_list">
								<li>피보험자, 보험 수익자(보험금을 받는 자), 계약자의 고의</li>
							    <li>피보험자(보험 대상자)의 임신, 출산(제왕절개 포함), 산후기</li>
							    <li>전쟁, 외국의 무력 행사, 혁명, 내란, 사변, 폭동</li>
							    <li>지진, 분화, 해일 또는 이와 비슷한 천재지변</li>
							    <li>전문 등반(전문적인 등산용구를 사용하여 암벽 또는 빙벽을 오르내리거나 특수한 기술, 경험,사전 훈련을 필요로 하는 등반)</li>
							    <li>모터보트, 자동차(골프장 전동카, ATV포함) 또는 오토바이에 의한 경기, 시범, 흥행(연습 포함) 또는 시운전</li>
							    <li>글라이더 조종, 스카이다이빙, 스쿠버다이빙, 행글라이딩</li>
							</ul>						
							<h5 class="stit_con_basic">휴대품 보상하지 아니하는 사항</h5>
							<h6 class="tit_list_block">1. 보험의 목적에 포함되지 않는 물건</h6>
							<ul class="con_info_list">
								<li>통화, 유가증권, 인지, 우표, 신용카드, 쿠폰, 항공권, 여권 등 이와 비슷한 것</li>
								<li>원고, 설계서, 도안, 물건의 원본, 모형, 증서, 장부, 금형(쇠틀), 목형(나무틀), 소프트웨어 및 이와 비슷한 것</li>
								<li>선박 또는 자동차(자동3륜차, 자동2륜차 포함)</li>
								<li>산악 등반이나 탐험 등에 필요한 용구</li>
								<li>식물, 동물</li>
								<li>의치, 의수족, 콘택트렌즈</li>
								<li>기타(보험가입증서(보험증권)에 특별히 기재된 것)</li>
							</ul>
							<h6 class="tit_list_block">2. 보상하지 아니하는 손해</h6>
							<ul class="con_info_list">
								<li>계약자나 또는 피보험자의 고의 또는 중대한 과심 (ex. 개인물품 등의 분실)</li>
								<li>피보험자에게 보험금이 지급되도록 하기 위하여 피보험자와 여행을 같이 하는 친족 또는 고용인 고의로 일으킨 손해</li>
								<li>압류, 징발, 몰수, 파괴 등 국가 또는 공공기관의 공권력행사. 단, 화재, 소방, 피난에 필요한 처리로 된 경우를 제외합니다.</li>
								<li>보험의 목적의 흠으로 생긴 손해, 그러나 보험계약자, 피보험자 또는 이들을 대신하여 보험의 목적을 관리하는 자가 상당한 주의를 하였음에도 불구하고 발견하지 못한 흠으로 인한</li>
								<li>손해는 보상하여 드립니다.</li>
								<li>보험의 목적의 자연소모, 녹, 곰팡이, 변질, 변색 등과 쥐나 벌레로 인한 손해</li>
								<li>단순한 외관상의 손해로 기능에는 지장이 없는 손해</li>
								<li>보험의 목적인 액체의 유출, 단, 그 결과 다른 보험의 목적에 생긴 손해는 보상하여 드립니다.</li>
								<li>보험의 목적의 방치 또는 분실</li>
							</ul>						
							<h5 class="stit_con_basic">국내 여행자 보험 보상기준</h5>
							<h6 class="tit_list_block">1. 보험 가입 대상 (만79세 6개월 이상부터는 보험 가입 불가)</h6>
							<ul class="con_info_list">
								<li>만 15세 미만 : 3천만원 (후유장애/상해사망시 보상없음)</li>
								<li>만 15세 이상~만 69세 6개월 미만 : 5천만원</li>
								<li>만 69세 6개월 이상~만 79세 6개월 미만 : 3천만원</li>
								<li>만 79세 6개월 이상 : 보험가입 불가</li>
							</ul>
							<div class="box_guide wline">
								<p class="txt_normal">예) 2009년 10월 1일 보험 가입 시</p>
								<ul class="list_hyphen">
									<li>1995년 4월 1일 이전(4월 1일 포함) 출생자 : 성인 요금 적용</li>
									<li>1995년 4월 2일 이후 출생자 : 15세 미만 요금 적용</li>
									<li>1940년 4월 1일 이전(4월 1일 포함) 출생자 :70세 이상 요금 적용</li>
									<li>1940년 4월 2일 이후 출생자 : 성인 요금 적용</li>
									<li>1930년 4월 1일 이전(4월 1일 포함) 출생자 : 보험 가입 불가</li>
								</ul>
							</div>
							<ul class="con_info_list">
								<li><em class="emp_blue">국내 여행 상해 의료비, 질병 의료비 보상 없음</em></li>
							</ul>
							<br>
							<p><strong class="emp_black">위 내용은 약관의 요약내용으로써 세부사항은 보험약관을 참조해주시기 바랍니다.</strong></p>                                        		
						</div>
					</div>
				 </div>   
			</div>   
		</div>
		<div class="tab_page tab_btn"> 	
			<div class="box_tabs" data-group="tabArea">
				<div class="cont_tabs" data-name="tabCont">
	              <!-- 필수사항 -->
					<div class="sub_page" id="tsub_prod1" data-name="tabItem" style="display: block;">
						<h4 class="stit_con_title">필수사항</h4>
						<div class="box_guide wline">
							<div class="box_editor">
								<span style="color:rgb(0, 0, 0)">▶ 최소 출발인원: 15명 이상/ 최대인원: 45명&nbsp;</span><br>
								<span style="color:rgb(0, 0, 0)">▶ 본 여행상품의&nbsp;</span><span style="color:rgb(255, 0, 0)">최소출발인원 기준은 15명</span><span style="color:rgb(0, 0, 0)">이며, 미충족 시 여행표준약관 제 9조에 따라 여행사는 여행출발 7일전까지 여행계약을 일방적으로 해제하고 소비자에게 통보할 수 있습니다.</span><br>
								<span style="color:rgb(0, 0, 0)">*제9조(최저행사인원 미 충족시 계약해제)</span><br>
								<span style="color:rgb(0, 0, 0)">① 당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.</span><br>
								<span style="color:rgb(0, 0, 0)">② 당사는 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급 받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.</span><br>
								<span style="color:rgb(0, 0, 0)">가. 여행개시 7일전까지 여행계약 해제 통지시 : 계약금 환급</span><br>
								<span style="color:rgb(0, 0, 0)">나. 여행출발 1일전까지 통지시 : 여행요금의 30%</span><br>
								<span style="color:rgb(0, 0, 0)">다. 여행출발 당일 통지시 : 여행요금의 50%</span><br>
								<span style="color:rgb(0, 0, 0)">▶ 상기 일정과 호텔은 현지 사정에 의해 변경 될 수 있습니다. 이 점 양해부탁드립니다.</span><br>
								<span style="color:rgb(0, 0, 0)">▶ 천재지변이나, 항공사의 사정으로 인해 여행에 지장을 끼친 경우, 귀사의 법적이나 도의적인 책임은 없음을 알려드립니다.</span><br>
								<span style="color:rgb(0, 0, 0)">이 점 양해부탁드립니다.</span>
							</div>
						</div>
					</div>
	              <!-- // 필수사항 -->
				</div>
			</div>           
		</div>
    </div>
</div>

<h4 class="stit_con_title" id="_anchorRvw">고객리뷰 및 여행후기</h4>
<div class="reviews_block" id="_rvw" style="">                   
		<div class="tab_wrap">					
		<ul class="tab_page_cont" id="_rvwTab" name="_VwBlock" style=""><li class="on"><a href="#"><span><em>전체</em></span></a></li><li><a href="#"><span><em>가족(아이동반)</em></span></a></li><li><a href="#"><span><em>가족</em></span></a></li><li><a href="#"><span><em>친구/커플</em></span></a></li><li><a href="#"><span><em>혼자(싱글)</em></span></a></li><li><a href="#"><span><em>단체/기타</em></span></a></li></ul> <!-- 고객리뷰 탭 -->
		<div class="tab_page_sub">
			<!-- 차트 -->				
			<div class="chart_block" name="_VwBlock" style="">
				<div class="chart_area">
					<h5 class="stit_con_basic" id="_rvwStar">고객리뷰 평점 
						<img src="${pageContext.request.contextPath}/img/ico_star_4.png" class="star">
						<span class="reviews_score"><em></em>/5</span>
						<span class="reviews_total"></span>
					</h5>   
					<div class="graph_block"> 
						<ul class="graph_list" id="_rvwGraphList">		      
									       
					     </ul>
					</div>
				</div>	
			</div>
			<!--  //차트 -->
												
			<ul class="tab_sub">
				<li><span class="on"><em>고객리뷰</em>(28건)</span></li>
			</ul>								
			<div id="_rvwList">
				<div class="sub_page reviews_block" id="tsub1">								
					
					<div class="condition">
						<ul class="tab_condition" id="_rvwListOrder">
							<li  class="on" data-field="rdate"><a href="#">최신순</a></li>
							<li data-field="rpick"><a href="#">추천순</a></li>
							<li data-field="rstar"><a href="#">평점순</a></li>
						</ul>
					</div>
					
					<div id="tsub2">
						
					</div>

           	<div class="reviews_page">
	           	<div class="page">

	           	</div>
	         <div class="btn_brd_area">
	         	<c:choose>
					<c:when test="${sessionScope.mid ne null}">
						<button type="button" class="btn_wit" id="showwritereview">고객리뷰 작성</button>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/login_view.do" class="btn_wit">로그인후작성</a>
					</c:otherwise>
				</c:choose>
	         </div>
	         <!-- Modal -->
			<div class="modal fade" id="myModal2" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-body">
						<form action="${pageContext.request.contextPath}/rwrite.do" method="post"  id="rwriteForm">
						   <fieldset>
						   <legend>리뷰 작성</legend>
						   	<input type="hidden"   name="dno"   id="reviewdno"   value="${dto.dno}"> 
						   	<input type="hidden"   name="fk_dno"   id="reviewfkdno"   value="${dto.fk_dno}"> 
						   
							<div class="form-group">
							  <label for="rtitle"  >리뷰제목</label>
							  <input type="text"   name="rtitle"   id="rtitle" class="form-control" > 
							  <span>(*)필수 입력</span>
							</div>	
							<div class="form-group">
							  <label for="리뷰평점"  >리뷰내용</label>
							  <textarea name="rdetail"  id="rdetail"  cols="60"  rows="10"   class="form-control" ></textarea>
							  <span>(*)필수 입력</span>
							</div>	
							<div class="form-group">
							<label for="rstar"  >평점</label>
							  		<ul class="list_grade">
										<li>
											<input type="radio" id="starCNT_1" name="rstar" value="5" checked> 
											<label for="starCNT_1"><span></span><img src="img/ico_star_5.png" alt="별점 5점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_2" name="rstar" value="4"> 
											<label for="starCNT_2"><span></span><img src="img/ico_star_4.png" alt="별점 4점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_3" name="rstar" value="3"> 
											<label for="starCNT_3"><span></span><img src="img/ico_star_3.png" alt="별점 3점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_4_" name="rstar" value="2"> 
											<label for="starCNT_4"><span></span><img src="img/ico_star_2.png" alt="별점 2점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_5" name="rstar" value="1"> 
											<label for="starCNT_5"><span></span><img src="img/ico_star_1.png" alt="별점 1점" /></label>
										</li>
									</ul>
							  <span>(*)필수 입력</span>
							</div>	
							<div class="form-group">
							  <label for="rtype">여행유형</label>
							  <select class="form-control" id="rtype" name="rtype">
							    <option value="가족(아이동반)">가족(아이동반)</option>
							    <option value="가족">가족</option>
							    <option value="친구/커플">친구/커플</option>
							    <option value="혼자(싱글)">혼자(싱글)</option>
							    <option value="단체/기타">단체/기타</option>
							  </select>
							  <span>(*)필수 입력</span>
							</div>		
							<div class="form-group">
							  <label for="rdate"  >여행날짜</label>
							  <input type="date"   name="rdate"   id="rdate"   class="form-control" > 
							  <span>(*)필수 입력</span>
							</div>	
							<input type="hidden"   name="rname"   id="rname"   value="${sessionScope.mid}">								
							<input type="hidden"   name="fk_rno"   id="fk_rno"   value="2">								
							<div class="form-group  text-right">
								<input type="submit"   value="입력"  class="btn btn-default">  
							</div>
						 </fieldset>		
						</form> <!-- end form -->
						</div>
					</div>
					<!-- Modal content end -->
				</div>
			</div>
			<!-- Modal end -->
	        </div>					                        
		</div>			
		</div>							
		</div>
	</div>
</div>
<!-- ----------------------- -->


</div>
	</div>
</div>
</div>
<%@ include file="../inc/footer.jsp"%>
