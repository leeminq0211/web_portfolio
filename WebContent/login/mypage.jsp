<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function() {
	jQuery('#close').click(function() {
		return confirm('정말 탈퇴하시겠습니까?');
	});
});
</script>	
<c:choose>
	<c:when test="${result eq -1}">
		<script>alert('비밀번호가 틀립니다.');    location.href='${pageContext.request.contextPath}/login_view.do';</script>
	</c:when>
	<c:when test="${result eq 1}">
		<script>alert('수정성공.');</script>
	</c:when>
	<c:when test="${login <= 0}">
		<script>alert('로그인실패'); location.href='${pageContext.request.contextPath}/login_view.do';</script>
	</c:when>
</c:choose>
<div class="container-fluid">
	<div class="containerLoggedIn">
	<h3>MYPAGE</h3>
		<table class="table table-striped">
			<caption>회원정보</caption>
			<tbody>
				<tr><th scope="row">아이디</th> <td>${dto.mid}</td></tr>
				<tr><th scope="row">이름</th> <td>${dto.mname}</td></tr>
				<tr><th scope="row">이메일</th> <td>${dto.memail}</td></tr>
				<tr><th scope="row">가입날짜</th> <td>${dto.mdate}</td></tr>
			</tbody>
		</table>
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/reservationView.do" class="btn btn-default">나의 예약현황</a>
			<a href="${pageContext.request.contextPath}/meditView.do" class="btn btn-default">회원정보 수정</a>
			<a href="${pageContext.request.contextPath}/mdelete.do" id="close" class="btn btn-default">탈퇴</a>
		</div>
	</div>
</div>
<%@ include  file="../inc/footer.jsp" %>