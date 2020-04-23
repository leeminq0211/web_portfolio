<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../inc/header.jsp"%>
<c:choose>
	<c:when test="${result eq 1}">
		<script>alert('취소처리완료');</script>
	</c:when>
	<c:when test="${result eq 0}">
		<script>alert('취소실패\n관리자에게 문의바랍니다.');</script>
	</c:when>
</c:choose>
<div class="container panel panel-default">
	<h3 class="panel-heading">예약현황</h3>
	
	<table class="tbl_dpt_list">
		<caption>출발일 목록</caption>
		<colgroup>
			<col style="width:80px">
			<col style="width:180px">
			<col>
			<col style="width:70px">
			<col style="width:70px">
			<col style="width:70px">
			<col style="width:110px">
			<col style="width:110px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">예약날짜</th>
				<th scope="col">예약상품이미지</th>
				<th scope="col">예약상품제목</th>
				<th scope="col">성인</th>
				<th scope="col">아동</th>
				<th scope="col">유아</th>
				<th scope="col">가격</th>
				<th scope="col">취소</th>
			</tr>
		</thead>				
	<tbody>
	<c:set var="s" value="${paging.pageTotal}" />
			<c:forEach var="item" items="${list}" varStatus="status">
	<tr>
		<td>${fn:substring(item.rdate,0,16)}</td>
		<td><img src="${pageContext.request.contextPath}/upload/${item.timage}" alt="상품 이미지" style="width: 170px;"> </td>
		<td class="pdt_name"> <a href="/portfolio/tdtailview.do?dno=${item.fk_dno}&fk_dno=${item.tno}">${item.ttitle}<br/>남은좌석<span class="emp_blue">(${item.dsit})</span> </a> </td>
		<td>${item.adultCnt}</td>
		<td>${item.chdCnt}</td>
		<td>${item.infCnt}</td>
		<td class="price"><fmt:formatNumber value="${((item.chdCnt+item.adultCnt)*item.dprice)+((item.dprice*0.4)*item.infCnt)}" type="number"/>원</td>
		<td>
		<c:choose>
			<c:when test="${item.adultCnt==0&&item.chdCnt==0&&item.infCnt==0}">
				<button type="button" class="btn_dis">취소완료</button>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/reservationCancel.do?rno=${item.rno}" class="btn_nor cfrm">취소하기</a> 
			</c:otherwise>
		</c:choose>
		
		</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
		<div class="paging text-center">
				<ul class="pagination">
						<c:if test="${paging.pre_bottom>=paging.bottomlist}">
							<li><a href='${pageContext.request.contextPath}/reservationView.do?pstartno=${(paging.pre_bottom-2)*paging.onepagelimit}'>이전</a></li>
						</c:if>
						<c:forEach var="i" step="1" begin="${paging.pre_bottom}" end="${paging.next_bottom}" varStatus="status">
							<c:choose>
								<c:when test="${paging.current_bottom==status.index}">
									<li class="active"><a href='${pageContext.request.contextPath}/reservationView.do?pstartno=${(i-1)*paging.onepagelimit}'>${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href='${pageContext.request.contextPath}/reservationView.do?pstartno=${(i-1)*paging.onepagelimit}'>${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.pageAll>paging.next_bottom}">
							<li><a href='${pageContext.request.contextPath}/reservationView.do?pstartno=${(paging.next_bottom)*paging.onepagelimit}'>다음</a></li>
						</c:if>
					</ul>
			</div>
			<div class="text-right">
				<a href="${pageContext.request.contextPath}/mypage.do"  class="btn btn-default">내정보로 이동하기</a>
			</div>
	</div>
	<div>
		${result}
	</div>
<%@ include file="../inc/footer.jsp"%>