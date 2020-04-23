<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% 
pageContext.setAttribute("crcn","\r\n"); 
pageContext.setAttribute("br","<br/>"); 
%>
	
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function(){
	$('.btn_wit').click(function(){
		var parent = $(this).parent();
		var star = $('ul > li > :radio[name="starCNT"]:checked',parent).val();
		console.log($('ul > li > :radio[name="starCNT"]:checked',parent).is(':checked'));
		
		if($('ul > li > :radio[name="starCNT"]:checked',parent).is(':checked')){
			alert('소중한 의견 '+star+'점 감사합니다.\n더욱 발전된 녹색풍선으로 보답하겠습니다.');
		}else{
			alert('별점을 선택해주세요');
		}
	});
	var num = location.search.substring(location.search.indexOf('num=')+4);
	console.log(num);
	$('#accordion'+num).trigger('click');
	$('html, body').animate({ scrollTop: $('#accordion'+num).offset().top-100 }, 500);
	
	jQuery('#close').click(function() {
		return confirm('정말 지우시겠습니까?');
	});

});
</script>
<c:choose>
	<c:when test="${requestScope.result eq null}"></c:when>
	<c:when test="${requestScope.result>0}">
		<script>alert('성공하셨습니다'); </script>
	</c:when>
	<c:otherwise>
		<script>alert('관리자에게 문의해주세요');</script>
	</c:otherwise>
</c:choose>
<div class="containerBoard">
<div class="panel panel-default">
	<h3 class="panel-heading">자주묻는질문</h3>
		<div class="panel-group" id="accordion">
			<c:forEach var="item" items="${list}" varStatus="itemS">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a id="accordion${item.no}" data-toggle="collapse" data-parent="#accordion" href="#collapse${item.no}">${item.title}</a>
						</h3>
					</div>
					<div id="collapse${item.no}" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="panel-body">
								<p class="txt_answer">${fn:replace(item.content, crcn, br)}</p>
								<div class="box_grade">
									<p class="tit_grade">답변 내용에 만족하시나요? 만족하신 만큼 별점점수평가를 부탁드립니다.</p>
									<p><a href="${pageContext.request.contextPath}/upload/${item.file}"><img src="${pageContext.request.contextPath}/upload/${item.file}" alt="${item.file}"/></a></p>
									<c:if test="${sessionScope.mid eq 'admin'}">
										<p class="text-right"><a href="${pageContext.request.contextPath}/usingUpdateView.do?no=${item.no}&table=usinggreenballoon"   class="btn btn-danger">수정하기</a>
										<a href="${pageContext.request.contextPath}/usingDelete.do?no=${item.no}&table=usinggreenballoon" id="close"  class="btn btn-danger">삭제하기</a></p>
									</c:if>
										<ul class="list_grade">
										<li>
											<input type="radio" id="starCNT_1_${item.no}" name="starCNT" value="5" checked/> 
											<label for="starCNT_1_${item.no}"><span></span><img src="img/ico_star_5.png" alt="별점 5점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_2_${item.no}" name="starCNT" value="4"/> 
											<label for="starCNT_2_${item.no}"><span></span><img src="img/ico_star_4.png" alt="별점 4점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_3_${item.no}" name="starCNT" value="3"/> 
											<label for="starCNT_3_${item.no}"><span></span><img src="img/ico_star_3.png" alt="별점 3점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_4_${item.no}" name="starCNT" value="2"/> 
											<label for="starCNT_4_${item.no}"><span></span><img src="img/ico_star_2.png" alt="별점 2점" /></label>
										</li> 
										<li>
											<input type="radio" id="starCNT_5_${item.no}" name="starCNT" value="1"/> 
											<label for="starCNT_5_${item.no}"><span></span><img src="img/ico_star_1.png" alt="별점 1점" /></label>
										</li>
									</ul>
									<button type="button" class="btn_wit">별점주기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="paging">
			<ul class="pagination">
						<c:if test="${paging.pre_bottom>=paging.bottomlist}">
							<li><a href='${pageContext.request.contextPath}/using.do?pstartno=${(paging.pre_bottom-2)*paging.onepagelimit}&table=usinggreenballoon'>이전</a></li>
						</c:if>
						<c:forEach var="i" step="1" begin="${paging.pre_bottom}" end="${paging.next_bottom}" varStatus="status">
							<c:choose>
								<c:when test="${paging.current_bottom==status.index}">
									<li class="active"><a href='${pageContext.request.contextPath}/using.do?pstartno=${(i-1)*paging.onepagelimit}&table=usinggreenballoon'>${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href='${pageContext.request.contextPath}/using.do?pstartno=${(i-1)*paging.onepagelimit}&table=usinggreenballoon'>${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.pageAll>paging.next_bottom}">
							<li><a href='${pageContext.request.contextPath}/using.do?pstartno=${(paging.next_bottom)*paging.onepagelimit}&table=usinggreenballoon'>다음</a></li>
						</c:if>
					</ul>
			</div>
		</div>
	<c:choose>
		<c:when test="${sessionScope.mid eq 'admin'}">
			<p class="text-right"><a href="${pageContext.request.contextPath}/usingWriteView.do?table='usingGreenBalloon'"   class="btn btn-danger">글쓰기</a></p>
		</c:when>
	</c:choose>
	</div>
</div>
<%@ include file="/inc/footer.jsp"%>