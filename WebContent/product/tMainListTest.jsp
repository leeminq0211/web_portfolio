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
<style>
img.minqImg {
    width: 300px;
}
</style>
</head>
<body>
<div class="container"   style="margin-top:5%; min-height:500px">
	<h3>tmain</h3>
	<table  class="table table-striped table-hover">
		<caption>문의게시판</caption>
		<thead>
			<tr>
				<th scope="col">tno</th>
				<th scope="col">ttitle</th>
				<th scope="col">timage</th>
			</tr>
		</thead>
		<tbody class="minqTable">
			<c:forEach var="mainList" items="${mainList}" varStatus="mainListStatus">
				<tr class="${mainList.tno}">
					<td>${mainList.tno}</td>
					<td><a href="${pageContext.request.contextPath}/product/pwrite.jsp?tno=${mainList.tno}">${mainList.ttitle}</a></td>
					<td><a href="${pageContext.request.contextPath}/product/pwrite.jsp?tno=${mainList.tno}"><img src="${pageContext.request.contextPath}/upload/${mainList.timage}" alt="${mainList.timage}" class="minqImg"></a>  </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="${pageContext.request.contextPath}/product/tMainWrite.jsp" class="btn btn-default">메인상품등록</a>
	<h3>tdtail</h3>
	<table  class="table table-striped table-hover">
		<caption>문의게시판</caption>
		<thead>
			<tr>
				<th scope="col">dno</th>
				<th scope="col">dname</th>
				<th scope="col">ddtail1</th>
				<th scope="col">ddtail2</th>
				<th scope="col">ddtail3</th>
				<th scope="col">dcategory</th>
				<th scope="col">ddate</th>
				<th scope="col">dair</th>
				<th scope="col">dcity</th>
				<th scope="col">dsit</th>
				<th scope="col">dprice</th>
				<th scope="col">fk_dno</th>
			</tr>
		</thead>
		<tbody>
			<!-- dno; dname; ddtail1; ddtail2; ddtail3; dcategory; ddate; dair; dcity; dsit; dprice; fk_dno; -->
			<c:forEach var="productList" items="${productList}" varStatus="productListStatus">
				<tr>
					<td>${productList.dno}</td>
					<td>${productList.dname}</td>
					<td>${productList.ddtail1}</td>
					<td>${productList.ddtail2}</td>
					<td>${productList.ddtail3}</td>
					<td>${productList.dcategory}</td>
					<td>${productList.ddate}</td>
					<td>${productList.dcity}</td>
					<td>${productList.dsit}</td>
					<td>${productList.dprice}</td>
					<td>${productList.fk_dno}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>