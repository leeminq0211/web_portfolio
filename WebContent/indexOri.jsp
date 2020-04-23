<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include  file="../inc/header.jsp" %>
<style>
.tab_con {
    padding: 40px 40px 0;
}
.tab_con.con1 .box_way {
    position: relative;
    margin-bottom: 20px;
    background: #fff;
}
.box_way .item {
    width: 50%;
    margin: 0;
    box-sizing: border-box;
    float: left;
    width: 299px;
    padding-left: 1px;
    box-sizing: border-box;
}
.box_way .item:first-child {
    width: 347px;
}
.box_way .in {
    display: inline-block;
    position: relative;
    width: 100%;
}
.box_way .in, .search_area .box_way .select {
    float: left;
}
.box_way .tit {
    display: block;
    margin-bottom: 5px;
    font-size: 16px;
    color: #222;
}
.search_area .box_way input[type=text], .box_way .select {
    margin: 0 0 0 -1px;
}
.search_area.quick .tf_search {
    padding: 0 100px 0 20px;
}
.search_area input[type="text"], input[type="number"], .select.normal .currSel, .select.num .currSel, .select.disabled .currSel {
    height: 45px;
}
input[type="text"], input[type="number"] {
    width: 150px;
    height: 38px;
    line-height: 38px;
    padding: 0 10px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    vertical-align: middle;
    -moz-appearance: textfield;
}
.quick .btn_city {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 100px;
    height: 45px;
    background: transparent;
    font-size: 14px;
    font-family: "Noto_l";
    text-decoration: underline;
    line-height: 45px;
}
.quick .btn_city:after {
    display: inline-block;
    width: 18px;
    height: 23px;
    margin: -2px 0 0 10px;
    background: url(/static/images/content/ico/ico_search_city.png) no-repeat;
    vertical-align: middle;
    content: '';
}
.box_result {
    width: auto;
    border-bottom: none;
    border-top: 1px solid #ddd;
}
.box_result {
    width: 956px;
    padding: 14px 0;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
    clear: both;
}
.search_area.quick .box_quick_search {
    border: 1px solid #ddd;
}
.search_area {
    width: 1200px;
    margin: 0 auto 50px;
    padding: 10px;
    background: #f3f3f3;
    box-sizing: border-box;
        border: 1px solid #ddd;
}
.box_way .tit {
    display: block;
    margin-bottom: 5px;
    font-size: 16px;
    color: #222;
}
.search_area .box_way input[type=text], .search_area .box_way .select {
    margin: 0 0 0 -1px;
}
.search_area .box_way .in, .search_area .box_way .select {
    float: left;
}
.select.normal .selectIn {
    min-width: 100px;
    max-width: 700px;
    width: 100% !important;
}

.selectIn {
    position: relative;
}
</style>

<div class="containerMain">
<div class="search_area">
<p class="stit_con_title">잠자는 여행 본능을 깨워라!  떠나고 싶으신 곳을 빠르게 찾아보세요!</p>

<div class="tab_con con1" style="display: block;">
                            <div class="box_way">
                                <div class="item">
                                    <div class="in">
                                        <span class="tit">여행지</span>
                                        <input type="text" class="tf_search" placeholder="여행지를 입력해 주세요." style="width:100%" id="cityArea" autocomplete="off">
                                        <button type="button" class="btn_city" id="cityPopup">지역검색</button>
                                        <div id="cityKeyword"></div>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="in">
                                        <span class="tit">출발 예정일</span>
                                        <div class="select normal" style="width:50%" id="deparDueDate">
                                            <select style="">
                                            	<option>출발 예정일을 선택해주세요.</option>
                                            	
                                            		<option value="2020년 03월">2020년 03월</option>
                                            	
                                            		<option value="2020년 04월">2020년 04월</option>
                                            	
                                            		<option value="2020년 05월">2020년 05월</option>
                                            	
                                            		<option value="2020년 06월">2020년 06월</option>
                                            	
                                            		<option value="2020년 07월">2020년 07월</option>
                                            	
                                            		<option value="2020년 08월">2020년 08월</option>
                                            	
                                            		<option value="2020년 09월">2020년 09월</option>
                                            	
                                            		<option value="2020년 10월">2020년 10월</option>
                                            	
                                            		<option value="2020년 11월">2020년 11월</option>
                                            	
                                            		<option value="2020년 12월">2020년 12월</option>
                                            	
                                            		<option value="2021년 01월">2021년 01월</option>
                                            	
                                            </select>
                                        <div class="selectIn" style="width: 178px;"><button type="button" class="currSel">출발 예정일을 선택해주세요.</button><ul class="list"><li><button type="button" value="출발 예정일을 선택해주세요.">출발 예정일을 선택해주세요.</button></li><li><button type="button" value="2020년 03월">2020년 03월</button></li><li><button type="button" value="2020년 04월">2020년 04월</button></li><li><button type="button" value="2020년 05월">2020년 05월</button></li><li><button type="button" value="2020년 06월">2020년 06월</button></li><li><button type="button" value="2020년 07월">2020년 07월</button></li><li><button type="button" value="2020년 08월">2020년 08월</button></li><li><button type="button" value="2020년 09월">2020년 09월</button></li><li><button type="button" value="2020년 10월">2020년 10월</button></li><li><button type="button" value="2020년 11월">2020년 11월</button></li><li><button type="button" value="2020년 12월">2020년 12월</button></li><li><button type="button" value="2021년 01월">2021년 01월</button></li></ul></div></div>
                                        <input type="text" title="출발일" class="insert_calendar" value="" style="width:50%" readonly="readonly" id="travelCalendarPiker">
                                    <div class="calendar_display" style="display: none;"><div class="calendar_block"><div class="calendar_box bgg"><div class="calendar_month"><button type="button" class="btn_calendar_month">2020.03</button><ul class="month_list" style="display:none"><li><a href="#202003">2020.03</a></li><li><a href="#202004">2020.04</a></li><li><a href="#202005">2020.05</a></li><li><a href="#202006">2020.06</a></li><li><a href="#202007">2020.07</a></li><li><a href="#202008">2020.08</a></li><li><a href="#202009">2020.09</a></li><li><a href="#202010">2020.10</a></li><li><a href="#202011">2020.11</a></li><li><a href="#202012">2020.12</a></li><li><a href="#202101">2021.01</a></li><li><a href="#202102">2021.02</a></li></ul><button type="button" class="btn_calendar_prev" disabled="disabled"><span>이전달</span></button></div><table class="tbl_calendar"><caption>달력</caption><thead><tr><th scope="col"><span title="일요일">S</span></th><th scope="col"><span title="월요일">M</span></th><th scope="col"><span title="화요일">T</span></th><th scope="col"><span title="수요일">W</span></th><th scope="col"><span title="목요일">T</span></th><th scope="col"><span title="금요일">F</span></th><th scope="col"><span title="토요일">S</span></th></tr></thead><tbody><tr><td>01</td><td>02</td><td>03</td><td>04</td><td>05</td><td>06</td><td>07</td></tr><tr><td>08</td><td>09</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td></tr><tr><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td></tr><tr><td>22</td><td class="today" title="오늘"><a href="#20200323">23</a></td><td><a href="#20200324">24</a></td><td><a href="#20200325">25</a></td><td><a href="#20200326" class="active">26</a></td><td><a href="#20200327">27</a></td><td><a href="#20200328">28</a></td></tr><tr><td><a href="#20200329">29</a></td><td><a href="#20200330">30</a></td><td><a href="#20200331">31</a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div><div class="calendar_box bgg"><div class="calendar_month"><button type="button" class="btn_calendar_month" disabled="disabled">2020.04</button><button type="button" class="btn_calendar_next"><span>다음달</span></button></div><table class="tbl_calendar"><caption>달력</caption><thead><tr><th scope="col"><span title="일요일">S</span></th><th scope="col"><span title="월요일">M</span></th><th scope="col"><span title="화요일">T</span></th><th scope="col"><span title="수요일">W</span></th><th scope="col"><span title="목요일">T</span></th><th scope="col"><span title="금요일">F</span></th><th scope="col"><span title="토요일">S</span></th></tr></thead><tbody><tr><td></td><td></td><td></td><td><a href="#20200401">01</a></td><td><a href="#20200402">02</a></td><td><a href="#20200403">03</a></td><td><a href="#20200404">04</a></td></tr><tr><td><a href="#20200405">05</a></td><td><a href="#20200406">06</a></td><td><a href="#20200407">07</a></td><td><a href="#20200408">08</a></td><td><a href="#20200409">09</a></td><td><a href="#20200410">10</a></td><td><a href="#20200411">11</a></td></tr><tr><td><a href="#20200412">12</a></td><td><a href="#20200413">13</a></td><td><a href="#20200414">14</a></td><td><a href="#20200415">15</a></td><td><a href="#20200416">16</a></td><td><a href="#20200417">17</a></td><td><a href="#20200418">18</a></td></tr><tr><td><a href="#20200419">19</a></td><td><a href="#20200420">20</a></td><td><a href="#20200421">21</a></td><td><a href="#20200422">22</a></td><td><a href="#20200423">23</a></td><td><a href="#20200424">24</a></td><td><a href="#20200425">25</a></td></tr><tr><td><a href="#20200426">26</a></td><td><a href="#20200427">27</a></td><td><a href="#20200428">28</a></td><td><a href="#20200429">29</a></td><td><a href="#20200430">30</a></td><td></td><td></td></tr></tbody></table></div><div class="cdn_reset"><button type="button" class="btn_reset">날짜 재선택</button></div></div></div></div>
                                </div>
                                
                                <div class="box_travel" id="travelRecommend"><strong class="tit">봄바람 타고 떠나요</strong><p class="box_link"><a href="#">파리</a><a href="#">아테네</a><a href="#">제주</a><a href="#">사이판</a><a href="#">오클랜드</a></p></div>                                
                                <button type="button" class="btn_cof cfrm" id="citySearch">검색하기</button>
                            </div>

                            <!-- 검색 히스토리 -->
                            <div class="box_result" id="travSearchHistory"><div class="result"><span>파타야, 2020.03.20</span><button type="button" class="btn_close">검색 결과 닫기</button></div><div class="result"><span>서유럽, 2020.02.21</span><button type="button" class="btn_close">검색 결과 닫기</button></div></div>
                            <!-- // 검색 히스토리 -->
                        </div>
</div>
</div>
<%@ include  file="../inc/footer.jsp" %>