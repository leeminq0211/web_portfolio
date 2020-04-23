<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<c:choose>
	<c:when test="${requestScope.result eq null}"></c:when>
	<c:when test="${requestScope.result>0}">
		<script>alert('성공하셨습니다'); </script>
	</c:when>
	<c:when test="${requestScope.result==-1}">
		<script>alert('비밀번호가틀립니다.');location.href='abc.php' ;</script>
	</c:when>
	<c:otherwise>
		<script>alert('관리자에게 문의해주세요');</script>
	</c:otherwise>
</c:choose>

<div class="container"   style="margin-top:5%; min-height:500px">
	<h3>1:1 문의게시판</h3>
	<table  class="table table-striped table-hover">
		<caption>문의게시판</caption>
		<thead>
			<tr>
				<th scope="col">NO</th>
				<th scope="col">WRITER</th>
				<th scope="col">TITLE</th>
				<th scope="col">DATE</th>
				<th scope="col">HIT</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="m21" items="${list}" varStatus="m21status">
				<tr>
					<td>${paging.pageTotal-m21status.index-paging.pstartno}</td>
					<td>${fn:substring(m21.bname, 0, 2)}***</td>
					<td><a href="${pageContext.request.contextPath}/detail.do?bno=${m21.bno}">${m21.btitle}</a></td>
					<td>${m21.bdate}</td>
					<td>${m21.bhit}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="5" style="text-align: center">
					<ul class="pagination">
						<c:if test="${paging.pre_bottom>=paging.bottomlist}">
							<li><a href='${pageContext.request.contextPath}/pagingmaker.do?pstartno=${(paging.pre_bottom-2)*paging.onepagelimit}'>이전</a></li>
						</c:if>
						<c:forEach var="i" step="1" begin="${paging.pre_bottom}" end="${paging.next_bottom}" varStatus="status">
							<c:choose>
								<c:when test="${paging.current_bottom==status.index}">
									<li class="active"><a href='${pageContext.request.contextPath}/pagingmaker.do?pstartno=${(i-1)*paging.onepagelimit}'>${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href='${pageContext.request.contextPath}/pagingmaker.do?pstartno=${(i-1)*paging.onepagelimit}'>${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.pageAll>paging.next_bottom}">
							<li><a href='${pageContext.request.contextPath}/pagingmaker.do?pstartno=${(paging.next_bottom)*paging.onepagelimit}'>다음</a></li>
						</c:if>
					</ul>
				</td>
			</tr>
		</tfoot>
	</table>
	<c:choose>
		<c:when test="${sessionScope.mid ne null}">
			<p class="text-right"><a href="${pageContext.request.contextPath}/write_view.do"   class="btn btn-danger">글쓰기</a></p>
		</c:when>
		<c:otherwise>
			<p class="text-right">로그인후 글쓰기가 가능합니다.</p>
			<p class="text-right"><a href="${pageContext.request.contextPath}/login_view.do">로그인</a></p>
		</c:otherwise>
	</c:choose>
</div>
	
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>