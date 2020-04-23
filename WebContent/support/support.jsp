<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.company.portfolio.dao.ReplyDAO"%>
<%@page import="com.company.portfolio.dto.ReplyDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
  <style>
div#myCarousel {
    padding-top: 4%;
    height: 400px;
    overflow: hidden;
}
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img { 
    width: 100%; 
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }  
  .container.myimages {
    text-align: center;
}
</style>
<c:choose>
	<c:when test="${requestScope.result eq null}"></c:when>
	<c:when test="${requestScope.result>0}">
		<script>alert('성공하셨습니다');</script>
	</c:when>
	<c:when test="${requestScope.result==-1}">
		<script>alert('비밀번호가틀립니다.');</script>
	</c:when>
	<c:otherwise>
		<script>alert('관리자에게 문의해주세요');</script>
	</c:otherwise>
</c:choose>
<div class="containerBoard">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    <c:set var="su" value="0"/>
	<c:forEach var="m21" begin="0" end="2" varStatus="m21status">
	   	 <c:choose>
	   	  <c:when test="${m21status.index eq 1}">
	   	 	<div class="item active">
	   	 	<c:forEach var="m22" begin="0" end="3" varStatus="m22status">
			<div class="col-sm-3">
		    	<p><a href="${pageContext.request.contextPath}/detail.do?bno=${paging.list[su].bno}"><img src="${pageContext.request.contextPath}/upload/${paging.list[su].bfile}" alt="${paging.list[su].bfile}"     /></a></p>
		  	</div>
		  	<c:set var="su" value="${su+1}"/>
		</c:forEach>  
	      </div>
	  	</c:when>
	  	<c:otherwise>
	  		<div class="item">
	   	 	<c:forEach var="m22" begin="0" end="3" varStatus="m22status">
			<div class="col-sm-3">
		    	<p><a href="${pageContext.request.contextPath}/detail.do?bno=${paging.list[su].bno}"><img src="${pageContext.request.contextPath}/upload/${paging.list[su].bfile}" alt="${paging.list[su].bfile}"     /></a></p>
		  	</div>
		  	<c:set var="su" value="${su+1}"/>
		</c:forEach>        
	      </div>
	  	</c:otherwise>
	   	 </c:choose>
	   </c:forEach>
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


<div class="container myimages" >
	<h3>고객문의</h3>
		<c:forEach var="m21" items="${paging.list}" begin="0" end="2" varStatus="m21status">
			<div class="col-sm-4">
		    <div class="thumbnail">
		    <p><a href="${pageContext.request.contextPath}/detail.do?bno=${m21.bno}"><img src="${pageContext.request.contextPath}/upload/${m21.bfile}" alt="${m21.bfile}"     /></a></p>
		      <p><strong>${m21.btitle}</strong></p>
		      <p>${m21.bdate}</p>
		      <p>${m21.bname}</p><span>${m21.bhit}</span>
		    </div>
		  </div>
		</c:forEach>
</div>
<div class="container myimages" >
	<h3>고객문의</h3>
		<c:forEach var="list" begin="0" end="${paging.pageTotal}" varStatus="status">
		<c:choose>
			<c:when test="${status.first}">
			<div class="item active">
				<c:forEach begin="${0}" end="${3}" step="1" var="dto" items="${paging.list}">
					<div class="col-sm-3"><img alt="${dto.btitle}" src="/upload/${dto.bfile}" style="width:100%"> </div>
				
				</c:forEach>
			</div>
			</c:when>
			<c:otherwise>
				<c:when test="${status.index <= Math.floor(paging.pageTotal/4)}">
					<div class="item">
						<c:forEach begin="${status.index*4}" end="${status.index*4+3}" step="1" var="dto" items="${paging.list}">
							<div class="col-sm-3"><img alt="${dto.btitle}" src="/upload/${dto.bfile}" style="width:100%"> </div>
						</c:forEach>
					</div>
				</c:when>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>

<div class="container myimages">
	<h3>고객문의</h3>
		<c:forEach var="m21" items="${paging.list}" begin="0" end="3" varStatus="m21status">
			<div class="col-sm-3">
		    <div class="thumbnail">
		    <p><a href="${pageContext.request.contextPath}/detail.do?bno=${m21.bno}"><img src="${pageContext.request.contextPath}/upload/${m21.bfile}" alt="${m21.bfile}"     /></a></p>
		      <p><a href="${pageContext.request.contextPath}/detail.do?bno=${m21.bno}">  <strong>${m21.btitle}</strong></a></p>
		      <p>${m21.bdate}</p>
		  <p>  ${m21.bname}</p><span>${m21.bhit}</span>
		    </div>
		  </div>
		</c:forEach>
</div>
	</div>
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>