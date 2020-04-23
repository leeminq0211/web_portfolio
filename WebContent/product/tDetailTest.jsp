<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:useBean id="now" class="java.util.Date" />

<%@ include file="../inc/header.jsp"%>
				<!--  
				dname 상품세부명
				ddtail1_1 여행설명
				ddtail1_2 여행이미지
				ddtail2_1 미팅일시
				ddtail2_2 미팅장소
				ddtail2_3 호텔이름
				ddtail2_4 포함사항			
				ddtail2_5 불포함사항		
				ddtail2_6 전달사항				
				ddtail3_1 상세설명	 	
				ddtail3_2 상세설명이미지	 	
				dcategory 카테고리
				ddate_1 여행기간(시작일)
				ddate_2 여행기간(종료일)
				dair_1 출발공항
				dair_2 도착공항
				dair_3 출발항공
				dair_4 도착항공
				dcity_1 주요방문도시
				dcity_2 나라
				dcity_3 대륙
				dsit 남은좌석
				dprice 가격
				fk_dno
				-->
<% 
pageContext.setAttribute("crcn","\r\n"); 
pageContext.setAttribute("br","<br/>"); 
%>
<div style="padding-top:500px;">
<p>${dto.dno}</p>
<p>상품세부명:${fn:replace(dto.dname, crcn, br)}</p>
<p>여행설명:${fn:replace(dto.ddtail1_1, crcn, br)}</p>
<p>여행이미지:${dto.ddtail1_2}</p>
<p>미팅일시:${dto.ddtail2_1}</p>
<p>미팅장소:${dto.ddtail2_2}</p>
<p>호텔이름:${dto.ddtail2_3}</p>
<p>포함사항:${dto.ddtail2_4}</p>
<p>불포함사항:${dto.ddtail2_5}</p>
<p>전달사항:${dto.ddtail2_6}</p>
<p>상세설명:${dto.ddtail3_1}</p>
<p>상세설명이미지:${dto.ddtail3_2}</p>
<p>카테고리:${dto.dcategory}</p>
<p>여행기간(시작일):${dto.ddate_1}</p>
<p>여행기간(종료일):${dto.ddate_2}</p>
<p>출발공항:${dto.dair_1}</p>
<p>도착공항:${dto.dair_2}</p>
<p>출발항공:${dto.dair_3}</p>
<p>도착항공:${dto.dair_4}</p>
<p>주요방문도시:${dto.dcity_1}</p>
<p>나라:${dto.dcity_2}</p>
<p>대륙:${dto.dcity_3}</p>
<p>남은좌석:${dto.dsit}</p>
<p>가격:${dto.dprice}</p>
<p>${dto.fk_dno}</p>
<fmt:parseDate value="${dto.ddate_1}" var="ddate_1" pattern="yyyy-MM-dd"/>
<fmt:parseNumber value="${ddate_1.time / (1000*60*60*24)}" integerOnly="true" var="ddate_1"></fmt:parseNumber>
<fmt:parseDate value="${dto.ddate_2}" var="ddate_2" pattern="yyyy-MM-dd"/>
<fmt:parseNumber value="${ddate_2.time / (1000*60*60*24)}" integerOnly="true" var="ddate_2"></fmt:parseNumber>
<p>${ddate_2 - ddate_1}</p>
</div>
<%@ include file="../inc/footer.jsp"%>
