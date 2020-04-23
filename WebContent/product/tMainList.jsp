<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>

<%@ include  file="../inc/header.jsp" %>
<script>
$(function(){


	var delchk = [];
    $('.checkMin').click(function(){
    	delchk = [];
    	$('.checkMin:checked').each(function(){
            delchk.push($(this).val());
            if(delchk.length>=3){
            	alert("2개이상은 선택할수 없습니다.");
            	delchk.pop();
            	$(this).prop('checked', false);
            }
            console.log(delchk);
        });
    });
    
	$('button[name=difference]').click(function(){
		if($('.checkMin:checked').length>1){
			$.ajax({
				url:"${pageContext.request.contextPath}/dtaolDif.do",type:"get",dataType:"json",
				data:{"checkboxValues" : delchk} ,
				success:function(item){
					console.log(item);
					var dno = $('<tr>').append($('<th scope="row" colspan="1">').append($('<label>').html("번호")));
					var dname = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("제목")));
					var ddtail1 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("여행설명")));
					var ddtail2_2 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("미팅장소")));
					var ddtail2_3 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("호텔이름")));
					var ddtail2_4 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("포함사항")));
					var ddtail2_5 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("불포함사항")));
					var ddtail2_6 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("전달사항")));
					var ddtail3_1 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("상세설명")));
					var ddate_1 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("여행시작날짜")));
					var ddate_2 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("여행끝나는날짜")));
					var dair_3 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("출발항공")));
					var dair_4 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("도착항공")));
					var dcity_1 = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("주요 방문")));
					var dsit = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("남은좌석")));
					var dprice = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("가격")));
					var ddates = $('<tr>').append($('<th scope="row" colspan="2">').append($('<label>').html("기간")));
					for(var i=0;i<item.length;i++){
						dno.append($('<td>').html(item[i].dno));
						dname.append($('<td>').html(item[i].dname));
						ddtail1.append($('<td>').html($('<pre width="100%" style="white-space: pre-wrap; word-wrap: break-word;">').html(item[i].ddtail1.split("|||")[0])));
						ddtail2_2.append($('<td>').html(item[i].ddtail2.split("|||")[1]));
						ddtail2_3.append($('<td>').html(item[i].ddtail2.split("|||")[2]));
						ddtail2_4.append($('<td>').html($('<pre width="100%" style="white-space: pre-wrap; word-wrap: break-word;">').html(item[i].ddtail2.split("|||")[3])));
						ddtail2_5.append($('<td>').html($('<pre width="100%" style="white-space: pre-wrap; word-wrap: break-word;">').html(item[i].ddtail2.split("|||")[4])));
						ddtail2_6.append($('<td>').html($('<pre width="100%" style="white-space: pre-wrap; word-wrap: break-word;">').html(item[i].ddtail2.split("|||")[5])));
						ddtail3_1.append($('<td>').html(item[i].ddtail3.split("|||")[0]));
						ddate_1.append($('<td>').html(item[i].ddate.split("|||")[0]));
						ddate_2.append($('<td>').html(item[i].ddate.split("|||")[1]));
						dair_3.append($('<td>').html(item[i].dair.split("|||")[2]));
						dair_4.append($('<td>').html(item[i].dair.split("|||")[3]));
						dcity_1.append($('<td>').html(item[i].dcity.split("|||")[0]));
						dsit.append($('<td>').html(item[i].dsit));
						dprice.append($('<td>').html(item[i].dprice));
						ddates.append($('<td>').html(item[i].ddates+"박"+(item[i].ddates+1)+"일"));
					}
					$('.modal-body tbody').append(dno).append(dname).append(ddtail1).append(ddtail2_2).append(ddtail2_3).append(ddtail2_4).append(ddtail2_5).append(ddtail2_6).append(ddate_1).append(ddate_2).append(dair_3).append(dair_4).append(dcity_1).append(dsit).append(dprice).append(ddates);
					$("#myModal").modal();
				},error:function(xhr,textStatus,errorThrown){
					console.log(xhr + "(HTML-"+textStatus+"/"+errorThorwn+")");
				}
			});//end ajax
		}else{
			alert('비교할 상품들을 선택해 주세요');
		}
	});//end click
	
	$('html, body').animate({ 
		scrollTop: $('#pagein').offset().top 
		}, 100); 
	$(".tab_condition").on("click","li a",function(){
		console.log($(this).html());
		console.log("."+$(this).closest(".panel-collapse").attr("id"));
		$( "#collapse1" ).accordion({
			  event:click
		});
	});



});
</script>
<div class="container panel panel-default">
		<div class="panel-group" id="accordion">	
			<c:if test="${fn:length(mainList)==0}"><h3 class="panel-heading">조건에 맞는 데이터가 없습니다.</h3></c:if>
			<c:forEach var="mainList" items="${mainList}" varStatus="mainListStatus">
				<div class="panel" >
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse${mainList.tno}" class="minqAccodion${mainList.tno}" >
					<div class="panel-heading">
						<span class="thumb_list">
							<span class="tag"><span class="tag_square pkg"><span>${mainList.list[0].dcategory}</span></span></span>
							<img src="${pageContext.request.contextPath}/upload/${mainList.timage}" alt="상품 이미지">
						</span>
						<div class="pdt_list_report">
							<div>
							<!-- minPrice maxPrice minDate maxDate -->
								<ul class="pdt_num_score">									
									<li>${mainList.tno}</li>
									<li class="star"><em class="star">${mainList.avgReivew}</em>/5</li>
								</ul>						
								<h5 class="tit_list_block">${mainList.ttitle}</h5>
								<span class="list_date">${mainList.minDate} ~ ${mainList.maxDate}</span>
								<span class="list_price">
									<em><strong><fmt:formatNumber value="${mainList.minPrice}" pattern="#,###,###"/></strong> 원~</em>
									<button type="button" class="btn_day">출발일 보기</button>
								</span>
							</div>
						</div>
					</div>
				</a>
				<c:choose>
					<c:when test="${no==mainList.tno}">
						<c:set var="in" value="in"/>
					</c:when>
					<c:otherwise>
						<c:set var="in" value=""/>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${no==mainList.tno}">
						<c:set var="in" value="in"/>
					</c:when>
					<c:otherwise>
						<c:set var="in" value=""/>
					</c:otherwise>
				</c:choose>
					<div id="collapse${mainList.tno}" class="panel-collapse collapse ${in}">
						<div class="panel-body" id="page${in}">
							<div class="panel-body">
								<div class="departure_block" id="prdtDetail"><div class="departure_top">
									<span class="tag"><span class="tag_square pkg"><span>${mainList.list[0].dcategory}</span></span></span>
									<a data-toggle="collapse" data-parent="#accordion" href="#collapse${mainList.tno}" class="btn_pop_close"><span></span></a>
									<div class="block_pdt_dpt">									
										<div class="goods_info_mini">
											<ul class="goods_info_list">									
												<li>상품번호<em>${mainList.tno}</em></li>
												<li>고객리뷰<span><em class="star">${mainList.avgReivew}</em>/5</span></li>
											</ul>
										</div>									
										<button type="button" class="btn_fav"><span>관심상품</span></button>
										<button type="button" class="btn_sns"><span>소셜공유</span></button>
									</div>
									</div>
										<h3 class="tit_pdt">${mainList.ttitle}</h3>
										<p class="dpt_price"><strong><fmt:formatNumber value="${mainList.minPrice}" pattern="#,###,###"/></strong>원 <span>~</span><strong><fmt:formatNumber value="${mainList.maxPrice}" pattern="#,###,###"/></strong>원</p>
										<dl class="definition_list">
											<dt>주요 방문 도시</dt>
											<dd class="ell">${fn:split(mainList.list[0].dcity,'|||')[0]}</dd>
										</dl>
									<div>
										<div class="block_tbl_top">
											<ul class="tab_condition">
												<li data-prop="asideDepaertureStart" data-asc="true" <c:if test="${on==1}">class="on"</c:if> ><a href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month}&order=ddate&no=${mainList.tno}">출발일순</a></li>
												<li data-prop="price" data-asc="true" <c:if test="${on==2}">class="on"</c:if> ><a href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month}&order=dprice&no=${mainList.tno}">낮은가격순</a></li>
												<li data-prop="price" data-asc="false" <c:if test="${on==3}">class="on"</c:if> ><a href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month}&order=dprice_desc&no=${mainList.tno}">높은가격순</a></li>
											</ul>
											<div class="btn_right_area">
												<a class="btn_wit_g" href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month}&order=${order}&no=${mainList.tno}&sit=1">예약가능상품</a>
												<button type="button" class="btn_wit_g" name="difference">선택상품 비교</button>
										</div>
									
										<table class="tbl_dpt_list">
											<caption>출발일 목록</caption>
											<colgroup>
												<col style="width: 10%;">
												<col style="width: 10%;">
												<col style="width: 10%;">
												<col style="width: 10%;">
												<col style="width: 20%;">
												<col style="width: 10%;">
												<col style="width: 10%;">
											</colgroup>
											<thead>
												<tr>
													<th scope="col" colspan="2">출발/도착 일시</th>
													<th scope="col">항공</th>
													<th scope="col">기간</th>
													<th scope="col">상품명</th>
													<th scope="col">가격</th>
													<th scope="col">예약상태</th>
												</tr>
											</thead>				
										<tbody>
										<c:forEach var="productList" items="${mainList.list}" varStatus="productListStatus">
										<tr>
											<td>
												<span class="form_block">
													<input type="checkbox" class="checkMin" value="${productList.dno}" name="h" title="선택">
												</span>
											</td>
											<td>
												<span class="date">${fn:split(productList.ddate,'|||')[0]}</span><br>${fn:split(productList.ddate,'|||')[1]}
											</td>
											<td>
												${fn:split(productList.dair,'|||')[3]}
											</td>
											<td>${productList.ddates}박${productList.ddates+1}일</td>
											<td class="pdt_name">					
												<span class="tag"><span class="tag_rect bargain">특가</span></span>
												<a href="${pageContext.request.contextPath}/tdtailview.do?dno=${productList.dno}&fk_dno=${productList.fk_dno}">${productList.dname}</a>
											</td>
											<td class="price"><fmt:formatNumber value="${productList.dprice}" pattern="#,###,###"/>원</td>
											<td>
												<c:choose>
													<c:when test="${productList.dsit>0}">
														<a href="${pageContext.request.contextPath}/tdtailview.do?dno=${productList.dno}&fk_dno=${productList.fk_dno}"><button type="button" class="btn_nor cfrm">예약가능</button><span class="rest_sit">(잔여 ${productList.dsit}석)</span></a>
													</c:when>
													<c:otherwise>
														<button type="button" class="btn_dis">예약마감</button>
													</c:otherwise>
												</c:choose>
											</td>
										</tr>
										</c:forEach>
										</tbody>
										</table>
									
										<div class="btn_area">
										<c:if test="${empty searching}">
										<!-- ${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month+1}&order=dprice&no=${mainList.tno} -->
											<a class="btn btn-default" href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month+1}&order=${order}&no=${mainList.tno}">이전달</a>
											<span class="dpt_month">${date}</span>
											<a class="btn btn-default" href="${pageContext.request.contextPath}/tMainList.do?where=${where}&month=${month-1}&order=${order}&no=${mainList.tno}">다음달</a>
										</c:if>
										</div>
									
									</div>
								</div>
					
							</div>
						</div>
					</div>
				</div>
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-body">
						<div class="popup_top top_fixed">
							<h2 class="tit_popup">상품 비교</h2>
						</div>
							<table class="tbl_basic compare_pdt">
								<caption>상품 비교</caption>
								<colgroup>
									<col style="width:8%">
									<col style="width:8%">
									<col style="width:28%">
									<col style="width:28%">
								</colgroup>
								<tbody>
								
								</tbody>
							</table>
							<ul class="tbl_info_list">
								<li>위 가격은 항공권 포함 가격이며, 유류할증료 등은 변동이 가능합니다.</li>
							</ul>
						</div>
					</div>
					<!-- Modal content end -->
				</div>
			</div>
			<!-- Modal end -->
			</div>
			</c:forEach>
			
		</div>
	<c:choose>
		<c:when test="${sessionScope.mid eq 'admin'}">
			<p class="text-right"><a href="${pageContext.request.contextPath}/tMainListTest.do" class="btn btn-danger">글쓰기</a></p>
		</c:when>
	</c:choose>
</div>
<%@ include  file="../inc/footer.jsp" %>