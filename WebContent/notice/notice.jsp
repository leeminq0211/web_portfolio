<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/header.jsp"%>
<div class="containerBoard">
<div class="panel panel-default">
	<h3 class="panel-heading">공지사항</h3>
	<table class="table table-striped">
		<caption>새로운 공지</caption>
		<thead>
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="s" value="${paging.pageTotal}" />
			<c:forEach var="item" items="${list}" varStatus="status">
				<tr>
					<td>${s-status.index}</td>
					<td ><a href="${pageContext.request.contextPath}/noticeDetail.do?no=${item.no}&table=notice">${item.title}</a></td>
					<td>${item.date}</td>
				</tr>	
			</c:forEach>
		</tbody>
	</table>
			
			<div class="paging">
			<ul class="pagination">
				<c:if test="${paging.pre_bottom>=paging.bottomlist}">
					<li><a href='${pageContext.request.contextPath}/notice.do?pstartno=${(paging.pre_bottom-1)*paging.onepagelimit}&table=notice'>이전</a></li>
				</c:if>
				<c:forEach var="i" step="1" begin="${paging.pre_bottom}" end="${paging.next_bottom}" varStatus="status">
					<c:choose>
						<c:when test="${paging.current_bottom==status.index}">
							<li class="active"><a href='${pageContext.request.contextPath}/notice.do?pstartno=${(i-1)*paging.onepagelimit}&table=notice'>${i}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href='${pageContext.request.contextPath}/notice.do?pstartno=${(i-1)*paging.onepagelimit}&table=notice'>${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.pageAll>paging.next_bottom}">
					<li><a href='${pageContext.request.contextPath}/notice.do?pstartno=${(paging.next_bottom)*paging.onepagelimit}&table=notice'>다음</a></li>
				</c:if>
			</ul>
		</div>
		<c:if test="${sessionScope.mid eq 'admin'}">
			<p class="text-right"><a href="${pageContext.request.contextPath}/noticeWriteView.do?table=notice"   class="btn btn-danger">글쓰기</a></p>
		</c:if>
	</div>
	</div>
<%@ include file="../inc/footer.jsp"%>