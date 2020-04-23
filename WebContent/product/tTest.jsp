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
.departure_block {
    padding: 35px 30px 0;
    border: 1px solid #ddd;
}
.departure_top {
    position: relative;
    height: 65px;
}
.tag {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    overflow: hidden;
    z-index: 1;
}
.tag_square {
    float: left;
    width: 55px;
    height: 55px;
    font-size: 12px;
    font-family: 'Noto_m';
    color: #fff;
    word-break: keep-all;
    text-align: center;
}
.tag .pkg {
    background: #5778bb;
}
.departure_top>.btn_pop_close {
    position: absolute;
    top: 9px;
    right: 0;
    width: 25px;
    height: 25px;
    background: #fff url(${pageContext.request.contextPath}/img/btn_pop_close.png) no-repeat;
}
button span {
    position: absolute;
    border: none;
    clip: rect(0 0 0 0);
    height: 1px !important;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    width: 1px;
}
.departure_top>.block_pdt_dpt {
    position: absolute;
    top: 5px;
    right: 45px;
    text-align: right;
}
.goods_info_mini {
    display: inline-block;
    line-height: 38px;
    vertical-align: top;
}
ul.goods_info_list {
    display: table-row;
    width: 100%;
}
ul.goods_info_list li em {
    padding-left: 10px;
    color: #222;
}
ul.goods_info_list li {
    display: table-cell;
    position: relative;
    padding: 0 20px;
    font-size: 15px;
    background: url(${pageContext.request.contextPath}/img/bl_comment_bar.png) no-repeat 0 50%;
    color: #555;
}
ul.goods_info_list li>span {
    cursor: pointer;
}
ul.goods_info_list li em.star {
    position: relative;
    padding-left: 30px;
}
ul.goods_info_list li em.star:before {
    position: absolute;
    top: 4px;
    left: 10px;
    width: 16px;
    height: 15px;
    background: url(${pageContext.request.contextPath}/img/ico_star.png) no-repeat 0 0;
    content: '';
}
.tit_pdt {
    font-size: 26px;
    font-family: 'Noto_m';
    color: #222;
}
.dpt_price {
    padding: 10px 0;
    font-size: 14px;
    color: #ff5c46;
}
.dpt_price strong {
    font-size: 20px;
}
.dpt_price span {
    display: inline-block;
    padding: 0 5px;
    font-size: 20px;
    color: #222;
}
dl.definition_list dt {
    display: inline-block;
    line-height: 1;
    padding-right: 12px;
    color: #222;
    vertical-align: middle;
}
dl.definition_list dd.ell {
    width: 700px;
    text-overflow: ellipsis;
    white-space: nowrap;
    -o-text-overflow: ellipsis;
    overflow: hidden;
}
.block_tbl_top {
    position: relative;
    margin: 20px 0 10px;
    overflow: hidden;
}
ul.tab_condition {
    float: left;
    margin-top: 22px;
    overflow: hidden;
    list-style: none;
}
ul.tab_condition li.on {
    font-size: 14px;
    color: #222;
}
ul.tab_condition li:first-child {
    padding-left: 0;
    margin-left: 0;
    background: none;
}
ul.tab_condition li {
    float: left;
    padding-left: 20px;
    margin-left: 20px;
    background: url(${pageContext.request.contextPath}/img/bl_comment_bar.png) no-repeat 0 50%;
    font-size: 14px;
    font-family: 'Noto_m';
    color: #777;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.btn_right_area {
    position: absolute;
    right: 0;
}
.btn_wit_g {
    display: inline-block;
    padding: 0 20px;
    height: 38px;
    line-height: 36px;
    margin: 0 2px;
    border: 1px solid #bbb;
    background: #fff;
    font-size: 14px;
    color: #222;
    text-align: center;
    vertical-align: top;
}
table.tbl_dpt_list {
    width: 100%;
    border-top: 1px solid #222;
}
table.tbl_dpt_list th {
    height: 50px;
    padding: 0 20px;
    border-bottom: 1px solid #ddd;
    background: #f7f7f7;
    font-size: 15px;
    color: #222;
    text-align: center;
}
table.tbl_dpt_list td {
    padding: 20px 0;
    line-height: 25px;
    border-bottom: 1px solid #ddd;
    font-size: 15px;
    color: #555;
    vertical-align: middle;
    text-align: center;
}
table.tbl_dpt_list td {
    padding: 20px 0;
    line-height: 25px;
    border-bottom: 1px solid #ddd;
    font-size: 15px;
    color: #555;
    vertical-align: middle;
    text-align: center;
}
input[type="checkbox"] {
    opacity: 0;
    position: absolute;
    top: 0;
    left: 0;
    width: 18px;
    height: 18px;
}
input[type="checkbox"]+label {
    cursor: pointer;
}
input[type="checkbox"]+label span {
    display: inline-block;
    width: 18px;
    height: 18px;
    margin-right: 10px;
    box-sizing: border-box;
    background: url(${pageContext.request.contextPath}/img/bl_check.png) no-repeat 0 0;
    vertical-align: sub;
    cursor: pointer;
}
table.tbl_dpt_list td span.date {
    color: #222;
}
table.tbl_dpt_list td.pdt_name {
    text-align: left;
}
table.tbl_dpt_list td.pdt_name>.tag {
    position: relative;
    display: block;
    margin-bottom: 5px;
}
.tag .bargain {
    background: #78909a;
}
.tag_rect {
    float: left;
    padding: 0 10px;
    margin-right: 5px;
    height: 20px;
    line-height: 19px;
    font-size: 12px;
    font-family: 'Noto_m';
    color: #fff;
    text-align: center;
}
table.tbl_dpt_list tbody tr td.price {
    padding-right: 20px;
    font-size: 16px;
    color: #ff5c46;
    text-align: right;
}
.cfrm {
    background: #ffc72c !important;
    font-family: 'Noto_m';
    color: #222 !important;
}
.btn_nor {
    display: inline-block;
    width: 110px;
    height: 38px;
    line-height: 38px;
    margin: 0 2px;
    background: #555;
    font-size: 14px;
    color: #fff;
    text-align: center;
    vertical-align: top;
}
table.tbl_dpt_list td span.rest_sit {
    font-size: 13px;
    color: #222;
}
button {
    cursor: pointer;
    overflow: visible;
    border: 0 none;
    font-family: 'Noto_r';
    font-weight: normal;
    font-size: 15px;
    color: #555;
    text-indent: 0;
}
.btn_ico {
    display: inline-block;
    height: 38px;
    padding: 0 30px;
    margin: 0 2px;
    border: 1px solid #bbb;
    background: #fff;
    font-size: 14px;
    color: #222;
    text-align: center;
    vertical-align: top;
}
.dpt_month {
    display: inline-block;
    width: 140px;
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    color: #222;
}
.btn_ico.prev:before {
    display: inline-block;
    width: 7px;
    height: 11px;
    margin-right: 10px;
    background: url(${pageContext.request.contextPath}/img/btn_calendar_arrow.png) no-repeat 0 0;
    vertical-align: baseline;
    content: ' ';
}
.btn_ico.next:after {
    display: inline-block;
    width: 7px;
    height: 11px;
    margin-left: 10px;
    background: url(${pageContext.request.contextPath}/img/btn_calendar_arrow.png) no-repeat 100% 0;
    vertical-align: baseline;
    content: ' ';
}
.btn_area {
    margin: 40px 0;
    text-align: center;
}
caption {
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
    visibility: hidden;
    overflow: hidden;
}
</style>
</head>
<body>
<div class="departure_block" id="prdtDetail"><div class="departure_top">
	<span class="tag"><span class="tag_square pkg"><span>해외 패키지</span></span></span>
	<button type="button" class="btn_pop_close"><span>닫기</span></button>
	<div class="block_pdt_dpt">									
		<div class="goods_info_mini">
			<ul class="goods_info_list">									
				<li>상품번호<em>ATP2143</em></li>
				<li>고객리뷰<span><em class="star">4.2</em>/5 (28)</span></li>
			</ul>
		</div>									
		<button type="button" class="btn_fav"><span>관심상품</span></button>
		<button type="button" class="btn_sns"><span>소셜공유</span></button>
	</div>
	</div>
		<h3 class="tit_pdt">[방콕&amp;파타야] 모두가 반한 야시장 아시아티크+전통안마 포함 4,5일</h3>
		<p class="dpt_price"><strong>239,000</strong>원 <span>~</span><strong>1,199,000</strong>원</p>
		<dl class="definition_list">
			<dt>주요 방문 도시</dt>
			<dd class="ell">인천-방콕-파타야</dd>
		</dl>
	<div>
		<div class="block_tbl_top">
			<ul class="tab_condition">
				<li data-prop="asideDepaertureStart" data-asc="true" class="on"><a href="#">출발일순</a></li>
				<li data-prop="price" data-asc="true"><a href="#">낮은가격순</a></li>
				<li data-prop="price" data-asc="false"><a href="#">높은가격순</a></li>
			</ul>
			<div class="btn_right_area">
				<button type="button" class="btn_wit_g" id="detailReservBtn">예약가능상품</button>
				<button type="button" class="btn_wit_g">선택상품 비교</button>
			</div>
		</div>
	
		<table class="tbl_dpt_list">
			<caption>출발일 목록</caption>
			<colgroup>
				<col style="width:28px">
				<col style="width:170px">
				<col style="width:100px">
				<col style="width:110px">
				<col>
				<col style="width:110px">
				<col style="width:110px">
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
		<tr>
			<td>
				<span class="form_block">
					<input type="checkbox" id="index0" name="h" title="선택">
					<label for="index0"><span></span></label>
				</span>
			</td>
			<td>
				<span class="date">2020.02.26(수) 10:50</span><br>2020.03.01(일) 20:05
			</td>
			<td>
				타이항공
			</td>
			<td>4박5일</td>
			<td class="pdt_name">					
				<span class="tag"><span class="tag_rect bargain">특가</span></span>
				<a href="#">오전출발_4박5일[CJ오쇼핑/방콕&amp;파타야]모두가반한야시장아시아티크+전통안마포함5일</a>
			</td>
			<td class="price">619,000</td>
			<td><button type="button" class="btn_nor cfrm">예약가능</button><span class="rest_sit">(잔여 10석)</span></td>
		</tr>
		</tbody>
		</table>
	
		<div class="btn_area">
			<button type="button" class="btn_ico prev">이전달</button>
			<span class="dpt_month">2020.02</span>
			<button type="button" class="btn_ico next">다음달</button>
		</div>
	</div>
</div>
</body>
</html>