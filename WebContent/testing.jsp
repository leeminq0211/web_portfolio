<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/header.jsp" %>

			<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KSPKF2F');</script>
<!-- End Google Tag Manager -->
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			<!-- Google Tag Manager -->
<script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-N769DH4');
</script>
<!-- End Google Tag Manager -->
<!–- 구글GTM dataLayer 선언 -->
<script>
var emnet_tagm_products=[];
</script>


		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			<script type="text/javascript" charset="utf-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('1536572506867022741').pageView();
</script>
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			<!-- 상단 선언 스크립트 : 모든페이지 공통 상단 필수 -->
<!-- PlayD TERA Log Definition Script Start -->
<script>
window['_LA']=window['_LA']||function(){
   (window['_LA'].q=window['_LA'].q||[]).push(arguments)
}
</script>
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 
		 
 			
		
		
			 
			 
		
		
		
 		
 		

 	
 		
			
			 <script src="https://cdn.qgraph.io/dist/aiqua-wp.js"></script>
<script>
  AIQUA.init({
    appId: 'ca99de184d977f9e3317',
    timeout: 5000
  });
</script>
<script type="text/javascript">
  !function(q,g,r,a,p,h,js) {
    if(q.qg)return;
    js = q.qg = function() {
      js.callmethod ? js.callmethod.call(js, arguments) : js.queue.push(arguments);
    };
    js.queue = [];
    p=g.createElement(r);p.async=!0;p.src=a;h=g.getElementsByTagName(r)[0];
    h.parentNode.insertBefore(p,h);
  } (window,document,'script','//cdn.qgr.ph/qgraph.ca99de184d977f9e3317.js');
</script>

		 
 			
		
		
			 
			 
		
		
		
 		
 		
 

</head>
<body>
	
<div class="skip_nav">
	<a href="#content">본문 바로가기</a>
	<a href="#gnb">메뉴 바로가기</a>
</div>
	<div id="wrap">
		<!-- T:header START-->
		






































<!-- 동일한 마크업은 넣지 마세요 -->

	<div id="prdtThumbList" style="display: none;">
		
		<!-- 
		서브메인 키워드,테마		
		-->
		<template id="custPrdt">
	        <li>
	            <a href="@webLinkUrl" >
	                <span class="thumb_pic">                    
	                    @imageThumb
	                    <img src="@imgPath" alt="상품 이미지">
	                </span>
	                <div class="pdt_list_info">
	                    <h5 class="tit_list_block">@goodsNm</h5>				
	                    <span class="list_price">
	                        <em><strong>@adtPrice</strong> 원~</em>									
	                    </span>
	                </div>
	            </a>
	        </li>
	     </template>
	    
	    
	    <!-- 
	    	메인 테마여행
	    	서브메인 추천상품
	     -->
	    <template id="prdtType1"> 
	       <li>
		       <a href="@webLinkUrl">
		           <span class="thumb_pic">
		               @imageThumb
		               <img src="@imgPath" alt="상품 이미지">										
		           </span>
		           <div class="pdt_list_info">
		               <h5 class="tit_list_block">@goodsNm</h5>				
		               <span class="list_date month">@startYm</span>			               
		               <span class="list_price">
		               <em><strong>@adtPrice</strong> 원~</em>									
		               </span>
		           </div>
		       </a>						
		   </li>
	     </template>
	     
	     	 <!-- 메인 검색 상품 -->
	     <template id="prdtType2"> 
       		<li>
				<a href="@webLinkUrl">
					<span class='thumb_pic'>			
			 		@imageThumb
					<span class='connection_pdt'>
						<span>@goodsNm<span class='conn_price'>@adtPrice<span> 원~</span></span></span>
					</span>
					<img src="@imgPath" alt="상품 이미지">		
					</span>
				</a>
			</li>
	     </template>
	     
	      <!-- 최근 본 상품 -->
	     <template id="prdtType3"> 
            <li>
           		<a href="@webLinkUrl" class="recommend_pdt_item">
           			<span class="thumb_pic">
          				@imageThumb
					<span class="txt_box">
						<span class="txt">
							<span class="ellipsis2 ">@goodsNm</span>
							<em class="txt_price">@adtPrice<span class="won">원~</span></em>
						</span>
					</span>
					<span class="btn_wit_g">자세히 보기</span>
					<img src="@imgPath" alt="상품 이미지">
					</span>
				</a>
			</li>
		  </template>
		  
		  <!-- 프리미엄 -->
		  <template id="prdtType4">
		  	<li>
				<a href="@webLinkUrl">
					<span class="thumb_pic">
						@imageThumb						
						<img src="@imgPath" alt="상품 이미지">										
					</span>
					<div class="pdt_list_info">
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em> / 5</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>				
						<span class="list_date">@startDt</span>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>									
							<button type="button" class="btn_day">출발일 보기</button>
						</span>
					</div>
				</a>						
			</li>
		  </template>
		  
		 
		 <!-- 상품리스트 썸네일형, 리스트형  -->
		<template id="pdt_catalog_PKG">
			 <li>
				<a href="#"><span>출발일 자세히보기</span></a>
				<span class="thumb_pic">
					@imageThumb					
					<span class="choice"><input type="checkbox" id="@chkId" title="선택"><label for="@chkFor"><span></span></label></span>
					<img src="@imgPath" alt="상품 이미지">
				</span>
				<div class="pdt_list_info">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em> / 5</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_date">@startDt</span>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>
							<button type="button" class="btn_day">출발일 보기</button>
						</span>
					</div>	
				</div>
			</li>
		</template>
		
		<template id="pdt_list_PKG">		
			<li>
				<a href="#"><span>출발일 자세히보기</span></a>
				<span class="thumb_list">
					@imageThumb
					<span class="choice"><input type="checkbox" id="@chkId" title="선택"><label for="@chkFor"><span></span></label></span>
					<img src="@imgPath" alt="상품 이미지">
				</span>
				<div class="pdt_list_report">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em> / 5</li>
						</ul>						
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_date">@startDt</span>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>
							<button type="button" class="btn_day">출발일 보기</button>
						</span>
					</div>
				</div>
			</li>
		</template>
		
		
		<template id="pdt_list_Single">
			<li>
				<a href="#"><span>출발일 자세히보기</span></a> 
				<span class="thumb_list">
					@imageThumb 
					<img src="@imgPath" alt="상품 이미지">
				</span>
				<div class="pdt_list_report">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em> / 5</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_price"> <em><strong>@adtPrice</strong> 원~</em>
							<span class="btn_day">상품 보기</span>
						</span>
					</div>
				</div>
			</li>
		</template>

		<template id="pdt_catalog_Single">
			<li>
				<a href="#"><span>출발일 자세히보기</span></a>
				<span class="thumb_pic">
					@imageThumb
					<img src="@imgPath" alt="상품 이미지">
				</span>
				<div class="pdt_list_info">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em> / 5</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>
							<button type="button" class="btn_day">상품 보기</button>
						</span>
					</div>
				</div>
			</li>
		</template>
		
				<!-- 검색 상품 썸네일 -->
		<template id="pdt_search_Thumbnail">
			<li class="cellLi">
				<a href="@link"><span>출발일 자세히보기</span></a>
				<span class="thumb_pic">
					@imageThumb
					<input type="hidden" name="goodsCd" value="@inputGoodsCd"/>
					<input type="hidden" name="dspSid1" value="@Pid"/>
					<span class="choice"><input type="checkbox" class="rChk" title="선택" onclick="checkBoxDisplay(this);"><label for="ch1"><span></span></label></span>
					<img src="@imgPath" alt="@tourPatInfo">
				</span>
				<div class="pdt_list_info">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em>@totalScore</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>
							<button type="button" class="btn_day">출발일 보기</button>
						</span>
					</div>
				</div>
			</li>
		</template>
		
		<!-- 검색 상품리스트 -->
		<template id="pdt_search_list">
			<li class="cellLi">
				<a href="@link"><span>출발일 자세히보기</span></a>
				<span class="thumb_list">
					@imageThumb
					<input type="hidden" name="goodsCd" value="@inputGoodsCd"/>
					<input type="hidden" name="dspSid1" value="@Pid"/>
					<span class="choice"><input type="checkbox" class="rChk" title="선택" onclick="checkBoxDisplay(this);"><label for="ch1"><span></span></label></span>
					<img src="@imgPath" alt="@tourPatInfo">
				</span>
				<div class="pdt_list_report">
					<div>
						<ul class="pdt_num_score">									
							<li>@goodsCd</li>
							<li class="star"><em>@rvwAvgScore</em>@totalScore</li>
						</ul>
						<h5 class="tit_list_block">@goodsNm</h5>
						<span class="list_price">
							<em><strong>@adtPrice</strong> 원~</em>
							<button type="button" class="btn_day">출발일 보기</button>
						</span>
					</div>
				</div>
			</li>
		</template>
		
		
		<!-- 검색 단품 썸네일 -->
		<template id="single_search_Thumbnail">
				<li>
				<a href="@link"><span>출발일 자세히보기</span></a>
					<span class="thumb_pic">
						@imageThumb	
						<img src="@imgPath" alt="@tourPatInfo">
					</span>
					<div class="pdt_list_info">
					<ul class="pdt_num_score">
						<li>@goodsCd</li>
						<li class="star"><em>@rvwAvgScore</em>@totalScore</li>
					</ul>
					<h5 class="tit_list_block">@goodsNm</h5>
					<span class="list_price">
						<em><strong>@adtPrice</strong> 원~</em>
						<button type="button" class="btn_day" >상품 보기</button>
					</span>
					</div>
				</li>
		</template>
		
		<!-- 검색 단품 리스트 -->
		<template id="single_search_list">
				<li>
				<a href="@link"><span>출발일 자세히보기</span></a>
					<span class="thumb_list">
						@imageThumb
						<img src="@imgPath" alt="@tourPatInfo">
					</span>
					<div class="pdt_list_report">	
						<div>
							<ul class="pdt_num_score">						
								<li>@goodsCd</li>
								<li class="star"><em>@rvwAvgScore</em>@totalScore</li>
							</ul>
							<h5 class="tit_list_block">@goodsNm</h5>
							<span class="list_date">@startDt</span>
							<span class="list_price">
								<em><strong>@adtPrice</strong> 원~</em>
								<button type="button" class="btn_day" >상품 보기</button>
							</span>
						</div>
					</div>
				</li>
		</template>
	
</div>
<!-- 고객을 위한 맞춤 상품  -->
<!-- 미로그인 상태 -->

	

<!-- 로그인 상태 -->



	<!-- header -->
	<div id="header">
			<div class="global_block">
				<div class="logo">
					<h1 class="tit_logo"><a href="/"><img src="/static/images/common/logo.png" alt="노랑풍선"></a></h1>
				</div>
				<ul class="gnb_nav">
										
						
							<li class="nav pkg">
								 <span class="pkg"></span> 									
								<a href="/product/main.yb?menu=PKG&dspSid=AA00000" class="on">해외패키지</a>
								
									<div class="gnb_block" style="display: block;">
										<ul class="gnb_sub">
											
												<li class="sub_depth">
													<a >유럽</a>
												</li>
											
												<li class="sub_depth">
													<a >동남아</a>
												</li>
											
												<li class="sub_depth">
													<a >일본</a>
												</li>
											
												<li class="sub_depth">
													<a >중국</a>
												</li>
											
												<li class="sub_depth">
													<a >홍콩/마카오/대만</a>
												</li>
											
												<li class="sub_depth">
													<a >괌/사이판</a>
												</li>
											
												<li class="sub_depth">
													<a >호주/뉴질랜드</a>
												</li>
											
												<li class="sub_depth">
													<a >미국/캐나다/중남미</a>
												</li>
											
												<li class="sub_depth">
													<a >인도/아프리카</a>
												</li>
																			
										</ul>
										<ul class="snb_nav" style="display: block;">
											
												<li class="snb">
													<a>크루즈</a>
												</li>
											
												<li class="snb">
													<a>노랑TV</a>
												</li>
											
												<li class="snb">
													<a>땡처리 항공권</a>
												</li>
											
												<li class="snb">
													<a>기획전</a>
												</li>
											
												<li class="snb">
													<a>이벤트</a>
												</li>
																			
										</ul>
									</div>	
								
							</li>
							
												
										
						
							<li class="nav ">
																	
								<a href="/product/premium.yb?menu=YBP&dspSid=AH00000&prdtDspSid=CA00000" class="">프리미엄</a>
								
							</li>
							
												
										
						
							<li class="nav ">
																	
								<a href="/product/main.yb?menu=TMA&dspSid=AC00000" class="">테마</a>
								
							</li>
							
												
										
						
							<li class="nav ">
																	
								<a href="/product/main.yb?menu=FBD&dspSid=AE00000" class="">지방출발</a>
								
							</li>
							
												
										
						
							<li class="nav ">
																	
								<a href="/product/main.yb?menu=DMT&dspSid=AD00000" class="">국내</a>
								
							</li>
							
												
										
												
										
												
										
												
										
												
					
					
										
												
										
												
										
												
										
												
										
												
										
						
							<li class="nav fit">
								 <span class="fit"></span> 							
								<a href="https://air.ybtour.co.kr/air/b2c/AIR/INT/AIRINTTRP0100100000.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I" class="">항공권</a>
								
							</li>
							
												
										
						
							<li class="nav ">
															
								<a href="https://hotel.ybtour.co.kr/" class="">호텔</a>
								
							</li>
							
												
										
						
							<li class="nav ">
															
								<a href="/product/main.yb?menu=FIT&dspSid=AB00000" class="">에어텔</a>
								
							</li>
							
												
										
						
							<li class="nav ">
															
								<a href="/product/main.yb?menu=EJT&dspSid=AI00000" class="">투어패스</a>
								
							</li>
							
												
						
				</ul>
				<a href="#ybtour" class="total_search top"><span>통합 검색</span></a>
				<button type="button" class="btn_all_categrory"><span>전체카테고리보기</span></button>

		</div>

		<div class="top_block">
			<div class="global_block">
				<span class="tit_kosdaq"><img src="/static/images/common/logo_kosdaq.png" alt="KOSDAQ 코스닥 상장법인"></span>
				<ul class="top_nav">
					
						<li><a href="/login.yb">로그인</a></li>
						<li><a href="/join/joinNormal.yb">회원가입</a></li>
					

					

					

			 		<li><a href="/mypage/resvInfo.yb?isRvcf=Y">예약확인/결제</a></li>
					<li><a href="/utility/bizTravel.yb">기업/단체문의</a></li>
					<li><a href="/cs/main.yb">고객센터</a>
						<!-- <ul class="ctr_nav">
							<li><a href="/cs/faqList.yb">FAQ</a></li>
							<li><a href="/cs/qnaGuide.yb">1:1문의</a></li>
							<li><a href="/cs/estimateWrite.yb">견적문의</a></li>
							<li><a href="/cs/mileageGuide.yb">마일리지 안내</a></li>
							<li class="ctr_num">여행상담<span>1544-2288</span></li>
						</ul> -->
					</li>
				</ul>
			</div>
		</div>

		<div class="top_banner">
			<div class="bnr_block">
			    <ul class="top_slide"></ul>
			</div>
		</div>

		<div class="gnb_back"></div>

	</div>
	<!-- header -->

<!-- LayerPopup Full -->
<div class="layer_popup_full">
	<!-- 전체메뉴 -->
	<div id="layer_menu_total" data-name="layer-popup-full">
		<div class="pop_wrap_full">
			  <div class="in">
				<div class="pop_container">
					<div class="pop_content cont_menu_all">
						<h3 class="tit_con_title">전체메뉴</h3>
			            <!-- all menu -->
			            <div class="column_l">
							<div class="tab_wrap">
								<ul class="tab_page_cont"></ul>
								<div class="cont_tabs"></div>
			            	</div>
			            </div>
			            <!-- // all menu -->
			            <!-- side menu -->
			            <div class="column_r">
			                <ul class="list_menu_top">
		                        <li><a href="/product/premium.yb?menu=YBP&dspSid=AH00000&prdtDspSid=CA00000" class="ico_pre">프리미엄</a></li>
		                        <li><a href="https://air.ybtour.co.kr/air/b2c/AIR/INT/AIRINTTRP0100100000.k1?KSESID=air:b2c:SELK138AN:AA024::00&domintgubun=I" class="ico_air">항공권</a></li>
		                        <li><a href="https://hotel.ybtour.co.kr/" class="ico_hotel">호텔</a></li>
		                    </ul>
			               	<div class="box_menu">
				                <h5 class="tit_list_block">프로모션</h5>
				                <ul class="list_menu">
				                    <li><a href="/promotion/promotion.yb?subDspMenu=PKG">기획전</a></li>
				                    <li><a href="/promotion/event.yb?subDspMenu=PKG">이벤트</a></li>
				                    <li><a href="/yellowTv/yellowTvList.yb?subDspMenu=PKG">노랑TV</a></li>
				                    <li><a href="/promotion/homeShopping.yb">홈쇼핑</a></li>
				                    <li><a href="/promotion/recommendStartDecide.yb">추천상품</a></li>
				                </ul>
			                </div>
			                <ul class="list_menu_util">			                	
			                	
			                		
			                		
			                			<li><a href="/login.yb">로그인</a></li>
			                			<li><a href="/join/joinNormal.yb">회원가입</a></li>
			                		
			                				                	
			                    <li><a href="/mypage/resvInfo.yb">예약확인/결제</a></li>
			                    <li><a href="/cs/mileageGuide.yb">마일리지</a></li>

								
					
			                    
			                    <li><a href="/cs/main.yb">고객센터</a></li>
			                </ul>
			            </div>
			            <!-- // side menu -->
					</div>
			    </div>
			    	<div class="dim"></div>
			    	<button type="button" class="btn_close" id="btn_search_total"><span>닫기</span></button>
			   </div>
			</div>
	</div>
	<!-- 전체메뉴 -->

	<!-- 통합검색 -->
	<div id="layer_search_total" data-name="layer-popup-full">
		<div class="pop_wrap_full" >
			 <div class="in">
				<div class="pop_container">
					<div class="pop_content cont_search_total">
			            <!-- search area -->
			            <form onsubmit="return false;">
			                <fieldset>
			                    <legend>통합 검색 form</legend>
			                    <!-- search input -->
			                    <div class="box_search_total">
			                        <input type="text" id="query" class="tf_search" autofocus style="ime-mode:active;" autocomplete="off">
			                        <button type="button" class="btn_search">검색하기</button>
			                        <div class="box_result">
			                            <ul class="list_auto_search"></ul>
			                            <!-- 상품목록 -->
			                            <ul class="pdt_catalog popLst"></ul>
			                            <!-- // 상품목록 -->
			                        </div>
			                        <button type="button" class="btn_auto">자동완성 여닫기</button>
			                    </div>
			                    <!-- // search input -->
			                </fieldset>
			            </form>
			            <!-- search area -->
			            <!-- search list / banner -->
			            <div class="box_search">
			                <div class="column_l tab_wrap">
			                	<ul class="tab_page_cont" id="searchTab">
				                    <li class="poplrWrd on"><a href="#">인기 검색어</a></li>
					                <li class="recomndWrd"><a href="#">추천 검색어</a></li>
					                <li class="recntWrd"><a href="#">최근 검색어</a></li>
				                </ul>
				                <div class="cont_tabs" id="search_cont_tabs">
			                        <!-- 인기 검색어 -->
			                        <div class="tab_page1" id="poplrWrd"></div>
			                        <!-- // 인기 검색어 -->
			                        <!-- 추천 검색어 -->
			                        <div class="tab_page2" id="recomndWrd"></div>
			                        <!-- // 추천 검색어 -->
			                        <!-- 최근 검색어 -->
			                        <div class="tab_page3" id="recntWrd"></div>
			                        <!-- // 최근 검색어 -->
			                    </div>
			                    <h3 class="stit_con_basic">여행 상담</h3>
			                    <div class="box_trip">
			                        <div class="box_tel">
			                            <span class="tit">대표번호</span>
			                            <strong class="emp_blue">1544-2288</strong>
			                            <a href="/cs/faqList.yb" class="btn_link">자주하는 질문</a>
			                        </div>
			                        <div class="box_chatter">
			                            <button type="button" class="btn_chatter" onclick="chatPopup()">챗봇 상담</button>
			                            <a href="/cs/qnaGuide.yb" class="btn_link">1:1 문의</a>
			                        </div>
			                    </div>
			                </div>
			                <div class="column_r">
			                    <h3 class="stit_con_basic">이런 상품은 어떠세요?</h3>
			                    <div class="box_bnn">
			                    	<ul class="prdctUl" id="prdctUl"></ul>
			                    </div>
			                </div>
			            </div>
			            <!-- // search list / banner -->
					</div>
			    </div>
			    <div class="dim"></div>
			    <button type="button" class="btn_close" id="btn_search_total"><span>닫기</span></button>
			  </div>
		</div>
	</div>
	<!-- 통합검색 -->
</div>
<!-- // LayerPopup Full -->

<!-- 팝업 -->
<div id="commonPopup" class="popup_wrap"></div>

<script>
	var menu = $.menuGenerate( { dspSid : '' ,subDspMenu : '' });
	menu.create();

	$(function() {
		// 고객센터
		/* $("ul.top_nav li.btn_customer").hover(function() {
			$(".ctr_nav").show();
		}, function() {	$(".ctr_nav").hide(); }); */

		//컨텐츠 브레드크럼
		menu.breadCrumb();

		/* 레이어 풀 팝업 */
		$(window).resize(function() {
	        $("[data-name=layer-popup-full] .in").css('height', $(window).height(true));
	        if ($(document).height() > $(window).height()) {
	            $("[data-name=layer-popup-full] .in").css('height', $(window).height(true) + 17);
	        }
	    });
		// 레이어 풀 팝업 열기
	    $(".total_search, .btn_all_categrory").click(function(e){	    	
	    	$("html").css("overflow", "hidden");
	    	if(e.currentTarget.className == "total_search top"){
	    			srch.create();
				$(":root").find("#layer_search_total").show();
			}else{
				$(":root").find("#layer_menu_total").show();
			}
		});

		// 레이어 풀 팝업 닫기
	    $("[data-name=layer-popup-full]").on("click", ".btn_close", function(e) {
	        $("html").removeAttr("style");
	        $(this).closest("[data-name=layer-popup-full]").hide();
	        e.stopPropagation();
	    });
	    /* 레이어 풀 팝업 */
	  	//우측 상단 배너	  	
		$.ajax({
	        url : '/CMMN/headerBannerList.ajax',
	        timeout : 0,
	        beforeSend : function(xhr) { xhr.setRequestHeader("Accept", "application/json"); },
			success:function(data){
				if( data.list.length > 0 ){
		    		var hBnrList = data.list
					var $ele;
					var obj = $('div.top_banner > div.bnr_block > ul.top_slide');
					var $fragment = $(document.createDocumentFragment());
					
					$fragment.append(
						hBnrList.map(function(itm,idx){
							return $('<li/>',{ "aria-hidden" : true}).append( $('<a/>',{ "href" : itm.link , "target" : itm.target }).append( $('<img/>',{ "src" : itm.srcPath , "alt" : itm.alt }) ) )
						})		
					)
					obj.append($fragment);
					
					if( hBnrList.length > 1 ){
						$(".top_slide").bxSlider({
							  mode: "vertical",
							  captions: false,
							  pager: false,
							  infiniteLoop:true,
							  hideControlOnEnd:true,
							  minSlides: 1,
							  maxSlides: 1,
							  moveSlides: 1,
							  slideWidth: 275
						  });
					}
		    	}
	        }
		});
	        
		$(document).on('click', 'a[href="#"]', function(e){
			e.preventDefault();
		});

		//Search
        var productId = "popLst";
        var contentListId = "list_auto_search";         // 자동완성 Content List <li> 의 id을 설정한다
        var queryId = "#query";                         // 검색어 <input> 의 id을 설정한다

		var srch = {
 				show: "yes",
 				goUrl : function(target, url) {
 	          		$(location).attr("href", url);
 	          	},
 	          	chatPopup : function() {
					var popupX = (window.screen.width / 2) - (380 / 2);
					var popupY = (window.screen.height / 2) - (600 / 2);
					window.open('https://chat.ybtour.co.kr/ybChat.do?projectName=yb_air&entryPath=CHAT0001', 'chat', 'scrollbars=yes, resizable=no, left='+ popupX +', top='+ popupY +', width=380, height=600');
				},
				create: function() {
					var _this = this;
					_this.hideArk();
                    totWordList.create();                    
                    //goodsForCustom.create();
					 _this.addEvent();
				},
                hideArk: function() {
                    var _this = this;
                    $("div.box_search_total .box_result").hide();
                },
                showArk: function(){
                    var _this = this;
                    $("div.box_search_total .box_result").show();
                },
                getData : function(url, type, prm, err) {
                	var _this = this;
                	custRef.getData(url, type, prm, err)
            		.done(function(result) {            			
            			$(".list_auto_search").html('');
 						try {
 							$.map($.parseJSON(result.m1list).result, function(i) {
								 $.each(i.items , function(idx) {
									var resDt = "<li>";
		                            resDt+= "<a href='#'>";
		                            resDt+= custRef.replaceAll(i.items[idx].keyword, $(queryId).val(), "<span class='emp_blue'>"+ $(queryId).val() + "</span>");
		                            resDt+= "</a>";
		                            resDt+= "</li>";
		                       		$(resDt).appendTo($(".list_auto_search"));
								 });
		                    });
 						} catch (e) {}
 					});
                },
				addEvent: function() {
		            var _this = this;
		            
		            //첫번째 탭만 보이기  
		            $("#search_cont_tabs > div").hide().first().show();
		            $("#searchTab > li").removeClass("on");
		            $("#searchTab > li").first().addClass("on");
		            
                    $(".popLst").on("click" , function(event) {
                    	if($(event.target).is('button')){
                    		_this.goUrl('', $(event.target).parent().find('[name=url]').val());
                    	}
                    });

		  			$(".btn_auto").on("click", function(){
		  				if(_this.show == "yes") {
                            _this.show = "no";
		  					_this.hideArk();
		  				}
		  				else {
                            _this.show = "yes";
		  					_this.showArk();
		  				}
		  			});

					$('.pop_container').on("click" ,function(event) {
						if($(event.target).is('div')) {
							if(_this.show == "yes") {
			  					_this.hideArk();
			  				}
						}
					});

                    $('#query').keyup(function(event) {
                        var query = $.trim($(queryId).val());
                        
                        if(event.keyCode == "13") {
							if(query != "") {
								 custRef.setLocal2("RECENTWRD", query);
								 linkTagHeader.clear();
								 linkTagHeader.create("RECENTWRD");

								var prm = "query=" + query;
								_this.goUrl('',"/search/searchPdt.yb?" + prm);
							}
                        }

                        if(query != "") {
                            if(_this.show == "yes") {
                                _this.showArk();
                                $(".list_auto_search").html('');
                                var param = "query=" + $(queryId).val() + "&convert=" + "fw" + "&target=" + "common" + "&charset=" + "utf-8"+ "&datatype=" + "json";
                                _this.getData('/search/wnRun.ajax', 'get', param, '검색 에러'); // 검색어
                                product.getInfo();   // 상품
                            }
                        }
                        else {
                            if (event.keyCode == 8 && query == "") {
                                $("." + contentListId).html("");
                                $("." + productId).html("");
                                _this.hideArk();
                            }
                        }
                    });

                    $(".btn_clear").on("click", function() {
                        $("." + contentListId).html("");
                        $("." + productId).html("");
                    });
                    
					//인기검색어,추천검색어,최근검색어 탭클릭 이벤트
                    $("#searchTab > li ").on("click" ,function(e) {
                    	 //모든 탭에 on class 삭제
                    	$(this).parent().find('li').removeClass("on");
                    	//클릭한 탭의 class명 저장
                    	var tab_ID=$(this).attr("class");
                    	//클릭한 탭의 class on 추가
                        $(this).addClass("on");
                        
                        $("#"+tab_ID).parent().find('div').hide();
                        $("#"+tab_ID).show();
                    });

                    $(".btn_search").on("click" ,function() {
                    	var query = $.trim($(queryId).val());
                    	if(query != "") {
                    		var prm = "query=" + query;
                    		custRef.setLocal2("RECENTWRD", query);
							linkTagHeader.clear();
							linkTagHeader.create("RECENTWRD");
                    		_this.goUrl('',"/search/searchPdt.yb?" + prm);
                    	}
                    });

                    $(".list_auto_search").on("click", function(event) {
                        var prm = "query="+ event.target.innerText;  //+ "&goodsCd=AMP5001";
                        custRef.setLocal2("RECENTWRD", $.trim(event.target.innerText));
						linkTagHeader.clear();
						linkTagHeader.create("RECENTWRD");
                    	_this.goUrl('',"/search/searchPdt.yb?" + prm);
                    });

                    $(".tab_page1").on("click", function(event) {
						var prm = "";
                    	if($("li").is(event.target)) {
							prm += $.trim(event.target.lastElementChild.innerText);
                    	}
                    	else if($("span").is(event.target)) {
                    		prm += $.trim($(event.target).parent().find('a').text());
                    	}
                    	else if($("a").is(event.target)) {
							prm += $.trim(event.target.innerText)
                    	}
                    	custRef.setLocal2("RECENTWRD", prm);
						linkTagHeader.clear();
						linkTagHeader.create("RECENTWRD");
						prm = "query=" + prm;
                    	_this.goUrl('',"/search/searchPdt.yb?" + prm);
                    });

                    $(".tab_page2").on("click", function(event) {
                    	var prm = "";
                    	if($("li").is(event.target)) {
							prm += $.trim(event.target.lastElementChild.innerText);
                    	}
                    	else if($("span").is(event.target)) {
                    		prm += $.trim($(event.target).parent().find('a').text());
                    	}
                    	else if($("a").is(event.target)) {
							prm += $.trim(event.target.innerText)
                    	}
                    	custRef.setLocal2("RECENTWRD", prm);
						linkTagHeader.clear();
						linkTagHeader.create("RECENTWRD");
						prm = "query=" + prm;
                    	_this.goUrl('',"/search/searchPdt.yb?" + prm);
                    });

                    $(".tab_page3").on("click", function(event) {
                    	var prm = "";
                    	if($("li").is(event.target)) {
							prm += $.trim($(event.target).find('a').text());
                    	}
                    	else if($("a").is(event.target)) {
							prm += $.trim($(event.target).parent().find('a').text());
                    	}
                    	else if($("span").is(event.target)) {
							prm += $.trim($(event.target).parent().find('a').text());
                    	}
                    	custRef.setLocal2("RECENTWRD", prm);
						linkTagHeader.clear();
						linkTagHeader.create("RECENTWRD");
						prm = "query=" + prm;
                    	_this.goUrl('',"/search/searchPdt.yb?" + prm);
                    });

                    linkTagHeader.create("RECENTWRD");
		        }
 			};
			
            var srchList = {
                create : function(prm) {
                    $(".list_auto_search").html('');
                    $.map($.parseJSON(prm), function(item) {
                        var resDt = "<li>";
                            resDt+= "<a href='#'>"
                            resDt+= item.tagName
                            resDt+= "</a>"
                            resDt+= "</li>";
                        $(resDt).appendTo($(".list_auto_search"));
                    });
                }
            };

            var product = {
            	flag : "n",
            	getInfo: function(){
                    var _this = this;
           			var query = $(queryId).val();
           			var flag = false;
           			if(query != "") {
           				var prm = "query=" + $("#query").val();

           				if(_this.flag == 'n') {
           					_this.flag = 'y';
   	           				custRef.getData('/search/searchGoods.ajax', 'get', "query=" + $("#query").val(), '상품검색 에러')
   	                		.done(function(data) {
   	                           	try {
   	                           		$("."+ productId).empty();
   	                           		if($.trim(data.result) != "") {
	   		                           	try {
	   		                           		var r;
	   		                           		if(data.result != null) {
												r = $.parseJSON(data.result);
	   		                           		}
	   		                           		$(".popLst li").html("");
 	   		                           		for (var i = 0; i < r.length; i++) {
												 var prductDt = "";
												    prductDt+="<li>"
		   			                                prductDt +="<div class='pdt_item'>";
		   			                                prductDt +="<span class='thumb_pic'>";
		   			                                prductDt +="<img src='"+ r[i].Field.IMG_PATH_S+ "' alt='상품 이미지'></span>";
		   			                                prductDt +="<div class='pdt_list_info'><h5 class='tit_list_block'>"+r[i].Field.GOODS_NM +"</h5>";
		   			                                prductDt +="<span class='list_date'>" + custRef.setDateType('',r[i].Field.EV_START_DT) +" ~ " + custRef.setDateType('',r[i].Field.EV_ARRIVE_DT) +"</span>";
		   			                                prductDt +="<span class='list_price'>";
		   			                                prductDt +="<input type='hidden' name='url' value='"+ r[i].Field.WEBLINKURL+ "'/>";
		   			                                prductDt +="<em><strong>"+custRef.AddComma(r[i].Field.AMT)+"</strong> 원~</em>";
		   			                                prductDt +="<button type='button' class='btn_day'>상품보기</button>";
		   			                                prductDt +="</span>";
		   			                                prductDt +="</div></div>";
		   			                                prductDt+="</li>";
		   			                             
		   			                       $(".popLst").append(prductDt);
		   			                       $(".popLst li").eq(i).css("margin-left", "20px");
											}; 
	   		                           	}
	   		                           	catch(e) {}
   	                           		}

   	                           	} catch(e) {
   	                           	} finally {
   	                           		_this.flag = 'n';
   	                           	}
   	                		});

           				}
           			}
            	}
           };

            var totWordList = {
            	info1: [],
            	info2: [],
            	info3: [],
            	popwordPrms : {
            		target : "popword",
					range : "W",
					collection : "ybtour",
					charset : "utf-8",
					datatype : "json"
            	},
            	recommendPrms : {
            		target: "recommend",
					query: "recommend_keyword_list",
					label: "_ALL_",
					charset: "utf-8",
					datatype: "json"
            	},
                create : function(prm) { 
                	var _this = this;
	        		if(_this.info1.length < 1) {
		        	 try {
	        			 custRef.getData('/search/wnRun.ajax', 'GET', $.param(_this.popwordPrms) ,'인기검색어 조회').done(function(res) {
	                		var wrd =  "<ul class='search_word'>";	                		
	                		$.each( $.parseJSON(res.m1list).Data.Query , function(idx, result) {
	                            if(idx < 3)
	                            	wrd += "<li><span class='num emp_blue'>"+ (++idx) +"</span><a href='#'>"+ result.content +"</a></li>";
	                            else
	                            	wrd += "<li><span class='num'>"+ (++idx) +"</span><a href='#'>"+ result.content +"</a></li>";
	                		});
	                		wrd += "</ul>";
	                		$(wrd).appendTo($(".tab_page1"));
	                		_this.info1.push($.parseJSON(res.m1list).Data.Query);
		                });
		        	 } catch(e) {}
	        		}
					try {
		                custRef.getData('/search/wnRun.ajax', 'GET', $.param(_this.recommendPrms) ,'추천검색어 조회').done(function(res) {
		                  	$(".tab_page2").html('');
	                		var recntWrd =  "<ul class='search_word'>";
	                		$.each( $.parseJSON(res.m1list).Data.Word, function(idx, result) {
	                			if(idx < 3)
	                				recntWrd += "<li><strong><span class='num emp_blue'>"+ (++idx) +"</span><a href='#'>"+ result +"</a></strong></li>";
	                			else
	                            	recntWrd += "<li><span class='num'>"+ (++idx) +"</span><a href='#'>"+ result +"</a></li>";

	                		});
	                		recntWrd += "</ul>";
	                		$(recntWrd).appendTo($(".tab_page2"));
		                });
					} catch(e) {}
                }
            };

            var recmndProduct = {
                create : function(prm) {
                	custRef.getData('/search/searchTotalProducts.ajax', 'get', '', '상품검색 에러')
                	.done(function(res) {
                		$(".prdctUl").html('');
                		var recmndDt = "";                		
						 $.each( res.goodsImgList, function(idx, result) {
							recmndDt += "<li>";
							recmndDt += "<a href='" + result.weblinkurl +"'>";
							recmndDt += "<span class='thumb_pic'>";
							recmndDt += "<span class='tag'><span class='tag_square pkg'><span>" + result.dspNm1 + "</span></span></span>";
							recmndDt += "<span class='connection_pdt'>";
							recmndDt += "<span>"+ result.goodsNm + "<span class='conn_price'>" + result.chdPrice + "<span> 원~</span></span></span>";
							recmndDt += "</span>";
							recmndDt += "<img src='" + result.imageThum3 + "' alt='"+ result.remark +"'>";
							recmndDt += "</span>";
							recmndDt += "</a>";
							recmndDt += "</li>";
						});
						$(recmndDt).appendTo($(".prdctUl"));
                	});
                } 
            };

        var linkTagHeader = {
        	tag : [],
        	tmp : [],
            setTag : function (s) {
                var _this = this;
                var local = custRef.getLocal(s);
                var dt = local.split("|");
                if(s == "RECENTWRD") _this.tag = [];
                $.each(dt, function(i, res) {
                    _this.add(res, s);
                });
            },
            clear : function() {
				$('.tab_page3').empty();
            },
          	create: function(srchNm) {
				var _this = this;
                _this.setTag(srchNm);
				if(srchNm == "RECENTWRD") {
					
					var tagRes  = "<ul class='search_word'>";
					var tagDt = "";
					if(_this.tag.length > 0) {
						_this.clear();
						var i = 0;
						for(var a=_this.tag.length-1; a >= 0 ; a--) {
							tagDt += _this.println(i, tagDt, _this.tag[a]);
							i++;
							if(i >= 10) break;
						}
						tagRes += tagDt + "</ul>";
					}
					else {
						tagRes = "<div class='brd_noresult_con'><div class='brd_noresult'><h2 class='stit_title'>최근 검색 내역이 없습니다.</h2></div></div>";
					}
					$(tagRes).appendTo('.tab_page3');
				}
          	},
          	add: function(tagNm, srchNm) {
          		var _this = this;
          		if(srchNm == "RECENTWRD") _this.tag.push(tagNm);
          	},
          	set: function(p) {
				var _this = this;
          		$.each(p,function (i, res) {
          			if($.trim(res) != '' && $.trim(res) != 'undefined') {
	          			_this.tag.push(res);
	          		}
          		});
          	},
          	println : function(idx, tagRes, res) {
          		if($.trim(res) != '' && $.trim(res) != 'undefined') {
                    	tagRes = "<li><a href='#'>"+ res +"</a></li>";
          		}
          		return tagRes;
          	},
            delTag: function(s) {
                var _this = this;
                if(s == "RECENTWRD") _this.tag = [];
                custRef.delLocal(s);
                _this.clear();
                _this.create(s);
            }
        };


            var custRef = {
       		 	getData : function(url, type, prm, err) {
                  	var _this = this;
                  	var _sync = false;
                 	var dfd = $.Deferred();
                  	if(type == "POST" || type == "JSON" || type == "HTML") {
						_sync = true;
                  	}
                  	if(type == "json" || type == "JSON") {
                  		$.ajax({
                      		url : url,
                      		async: _sync,
                      		dataType : type,
              				data : JSON.stringify(prm),
              				contentType: 'application/json',
              				method: 'POST',
              				beforeSend:function(){
					       		if(err == "yes") {
					       			_this.callLodingBar();
					       		}
					        },
              				success : function(result) {
              					dfd.resolve(result);
              				},
              				error: function(result){
              					$.ybLog.d( 'error',result );              					
              				}
                      	});
                  	}
                  	else if(type == "post" || type == "POST") {
                  		$.ajax({
                      		url : url,
                      		async: _sync,
                      		dataType : type,
              				data : prm.serialize(),
              				method: 'POST',
              				beforeSend:function(){
					       		if(err == "yes") {
					       			_this.callLodingBar();
					       		}
					        },
              				success : function(result) {
              					dfd.resolve(result);
              				},
              				error: function(result){
              					$.ybLog.d( 'error',result );
              				}
                      	});
                  	}
                  	else if(type == "html" || type == "HTML") {
                  		$.ajax({
                      		url : url,
                      		async: _sync,
                      		method: "POST",
                      		dataType : type,
              				data : prm,
              				beforeSend:function(){
					       		if(err == "yes") {
					       			_this.callLodingBar();
					       		}
					        },
              				success : function(result) {
              					dfd.resolve(result);
              				},
              				error: function(result){
              					$.ybLog.d( 'error',result );
              				}
                      	});
                  	}
                  	else {
                  		$.ajax({
                      		url : url,
                      		method : "POST",
              				data : prm,
              				beforeSend:function(xhr){
              					xhr.setRequestHeader("Accept", "application/json");
              					if(err == "yes") {
					       			_this.callLodingBar();
					       		}
					        },
              				success : function(result) {
              					dfd.resolve(result);
              				},
              				error: function(result){
              					$.ybLog.d( 'error',result );          			
              				}
                      	});
            			
            			
                  	}
                  	return dfd.promise();
                },
	             callLodingBar: function () {
					var loadObj = $("<div>").addClass("loading");
					$("body").append(loadObj);
				},
				closeLodingBar: function () {
					var obj = $("body").find(".loading");
					obj.remove();
				},
	             goUrlPrm : function(prm, url) {
	                $(location).attr("href", url + "?" + $.param(prm));
	            },
	            goUrl : function(target, url) {
	                var prm = "?query=" + target.innerText;
	                $(location).attr("href", url+ prm);
	            },
	            replaceAll: function(str, comp, res) {
	                return str.replace(comp, res);
	            },
				create : function(prm) {
		 		},
		 		setLocal: function(str) {
		 			var srchFilter = YBUtil.getLocalStorage(str);
				    if(YBUtil.isEmpty(srchFilter)) {
				        YBUtil.setLocalStorage(str, $.param(pdtLst.prms));
				    } else {
						if(srchFilter.indexOf("query=" + encodeURIComponent(pdtLst.prms['query'])) < 0) {
							var obj = srchFilter.concat("|" +  $.param(pdtLst.prms));
					    	YBUtil.setLocalStorage(str, obj);
						}
				    }
		 		},
		 		setLocal2: function(str, data) {
		 			var srchFilter = YBUtil.getLocalStorage(str);
				    if(YBUtil.isEmpty(srchFilter)) {
				        YBUtil.setLocalStorage(str, data);
				    } else {
						if(srchFilter.indexOf(data) < 0) {
							var obj = srchFilter.concat("|" +  data);
					    	YBUtil.setLocalStorage(str, obj);
						}
						else {
							var obj = custRef.replaceAll(srchFilter, "|" +  data, "").concat("|" +  data);
							YBUtil.setLocalStorage(str, obj);
						}
				    }
		 		},
		 		getLocal: function(str) {
		 			if(typeof YBUtil !== "undefined") {
		 				return YBUtil.getLocalStorage(str);
		 			}
		 			else {
		 				return "";
		 			}
		 		},
		 		delLocal: function(str) {
		 			YBUtil.deleteLocalStorage(str);
		 		},
	            dePrms : function(p){
	                var ret = {},
	                    seg = p.replace(/^\?/,'').split('&'),
	                    len = seg.length, i = 0, s;
	                for (;i<len;i++) {
	                    if (!seg[i]) { continue; }
	                    s = seg[i].split('=');
	                    ret[s[0]] = s[1];
	                }
	                return ret;
	            },
	            AddComma : function(data_value) {
					return Number(data_value).toLocaleString('en').split(".")[0];
				},
				setDateType : function (type, _value) {
					if($.trim(_value) != "" && _value.length > 7)  {
						var yyyy = _value.substring(0,4);
						var mm = _value.substring(4,6);
						var dd = _value.substring(6,8);
						return yyyy + "." + mm + "." + dd;
					}
					else {
						return "";
					}
				}

   			};

			//고객 맞춤 상품검색


 			//srch.create();
			

 	}); 


 	function chatPopup(){
 		var chatUrl = "https://chat.ybtour.co.kr/ybChat.do"+"?projectName=yb_air&entryPath=CHAT0001";
 		var chatX = (window.screen.width / 2) - (380 / 2);
 		var chatY = (window.screen.height / 2) - (600 / 2);
 		window.open(chatUrl, 'chat', 'scrollbars=yes, resizable=no, left='+ chatX +', top='+ chatY +', width=380, height=600');

 	}
 	function loginCheckMove(url){
 		var lgnChk = ( '' == 'true' );
 		if( lgnChk ){
 			location.href=url
 		} else if ( !lgnChk && confirm("노랑풍선 회원에게만 적용되는 특별한 가격, 서비스입니다. \n로그인 후 이용하실 수 있습니다. 로그인하시겠습니까?") ){
			var form = $("<form/>",{"method" : "post", "action" : "/login.yb"}).append( $("<input/>",{ "type" : "hidden", "name" : "nextPage", "value" : url }) );
			$(document.body).append(form);
			form.submit();
		}

 	}

	function logOut(){
		try {
			/*아이쿠아 event 로깅스크립트*/
			qg("event", "logout");
			/*아이쿠아 profile(회원가입) 로깅스크립트*/
			qg("identify", {"login_status": "false"});
		} catch (e) {
			$.ybLog.e("AceCounter LogOut Script", e);
		}
		location.href="/logout";
	}
</script>

<script>

	function SearchSectionInit(){
		/* 상품 썸네일 템플릿 */
		var $custPrdt = $("#prdtThumbList #prdtType2");
		
		
		/* parameter */
		this.data = {}
		
		/* 30일전 날짜 생성 */
		this.getPrevDate = function(){			
			var date = new Date();
			var today = new Date(Date.parse(date) + -30 * 1000 * 60 * 60 * 24);
			var yyyy = today.getFullYear();
	   		var mm = today.getMonth()+1;
	   		var dd = today.getDate();	   		
	   		if(mm<10) mm = "0" + mm;    			
    		if(dd<10) dd = "0" + dd;    		
	   		
	   		return String(yyyy)+String(mm)+String(dd);			
		}
		
		/* ajax */
		this.doSearch = function(){			
			$.ajax({
		        url: "/main/getMainSectionList.ajax",
		        timeout : 0,
		        data : this.data,
		        method : "POST",
		        beforeSend : function(xhr) {
		            xhr.setRequestHeader("Accept", "application/json");
		        },
		        success:function(data){
		        	if( data.recommandCode != null && data.recommandCode.length > 0 ){
						$("#prdctUl").append(
								data.recommandCode.slice(0,4).map( function( item,idx ){
									var $temp =  $custPrdt.clone().html();							
									$temp = $temp.replace("@webLinkUrl", item.webLinkUrl);
									$temp = $temp.replace("@imageThumb", prdtTag(item));
									$temp = $temp.replace("@imgPath", item.imgPath);
									$temp = $temp.replace("@goodsNm", item.goodsNm);
									$temp = $temp.replace("@adtPrice", comma(item.adtPrice));
									return $temp;
								})		
						)
					}
		        },
		        error:function(jqXHR, textStatus, errorThrown){}
		    });			
		}
				
		var loginYN = "";
		var prevDate = this.getPrevDate();		
		var eventHistory = JSON.parse( localStorage.getItem('ybEventList') ) === null ? [] : JSON.parse( localStorage.getItem('ybEventList') );
		var goodsHistory = JSON.parse( localStorage.getItem('ybGoodsList') ) === null ? [] : JSON.parse( localStorage.getItem('ybGoodsList') );		
		var historyList  = goodsHistory.concat( eventHistory );
		
		/* 30일 이내 데이터중 가장 최근 데이터 */
		var lately = historyList.filter(function(item){ return item.saveDate >= prevDate }).reduce(function(acc, item, index, array){ 
						if(index === 0) acc = item;
						/* 가장 최근 날짜중 가장 마지막으로 본 데이터 */
						return acc = (acc.saveDate < item.saveDate || acc.saveDate == item.saveDate) ? acc = item : acc;						
					},{}) 
		
		/* 행사 건일 경우 dspSid가 없어서 추가( 상품쪽 개선 이후에는 필요없음 ybEvnetList에 dspSid 항목을 추가 예정 ) */		
		if(lately.evUrl !== undefined) lately["dspSid"] = getQueryString( lately.evUrl ).dspSid;							
		
		/*
			1.로그인/미로그인 여부와 관계없이 조회이력이 있는경우 추천상품을 보여줌
			2.로그인일 경우 예약정보가 있는경우 예약정보 기반 추천상품을 보여준다 예약정보가 없는경우 추천상품을 보여준다
			3.미로그인일 경우 아무런 이력이 없다면 아무것도 보여주지 않는다		
		*/
		
		/* 로그인 여부와 관계없이 상품 조회 이력이 있는경우  */
		if( Object.keys( lately ).length > 0 ){ /* 이력 있는 경우 */
				this.data = lately;
				this.doSearch();
		} else {			
			if( loginYN === 'true' ){ /* 로그인 한 상태 */
				this.data = {};
				this.doSearch();
			}
		}	
	}
	$(document).ready(function(){
		SearchSectionInit();
	});
</script>


		<!-- T:header END -->
	
		<script src="/static/js/yb.util.date.min.js"></script>
<script src="/static/js/yb.ux.datepicker.min.js"></script>
<link href="/static/css/main.css" rel="stylesheet">
<div id="main">	
	<div>





































<div class="main_vis">
            <!-- banner img -->
            <ul class="num_slide">
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000014650&subDspMenu=PKG&webSchArea=SA01">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002141246295441410002001091.jpg" alt="최고의 계절 봄 아테네">
                    	</a>
                	</li>
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000009572">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002181400560621410002001093.jpg" alt="뉴질랜드">
                    	</a>
                	</li>
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000014758">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002111215551561410002001038.jpg" alt="서유럽 핀에어">
                    	</a>
                	</li>
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000014970 ">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002170858590971410002001067.jpg" alt="크로아티아를 가볍게">
                    	</a>
                	</li>
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000014850">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002111216311581410002001081.jpg" alt="동남아 아시아나">
                    	</a>
                	</li>
            	
					<li>
                    	<a href="/promotion/promotionDetail.yb?mstNo=20000005974">
                       		<img src="//cimgcdn.ybtour.co.kr//attachHome/MN/BN/202002/202002131702599561102001001095.jpg" alt="사이판 PIC">
                    	</a>
                	</li>
            	
            </ul>
            <!-- // banner img -->
                        
            <!-- js -->
            <script>
        	function mainSpotInit(){
                    $(".num_slide").bxSlider({
                        auto: true,
                        autoControls: true,
                        autoControlsCombine: true,
                        stopAutoOnClick: true,
                        pager: true,
                        pagerType: 'short',
                        hideControlOnEnd:true,
                    });
        	}
            </script>
        </div>
</div> <!-- 메인 상단 비주얼 배너 -->
	<div>




































		<!-- 빠른검색 -->
            <div class="search_area quick" >
                <p class="stit_con_title">잠자는 여행 본능을 깨워라!  떠나고 싶으신 곳을 빠르게 찾아보세요!</p>
                <div id="quickTab" class="box_quick_search">
                    <ul class="tab_quick">
                        <li class="on">	<a href="#">여행</a> 	</li>
                        <li> 			<a href="#">항공권</a> 	</li>
                        <li>			<a href="#">호텔</a>	</li>
                    </ul>
                    <div class="tab_conts">
                        <!-- 여행 -->
                        <div class="tab_con con1">
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
                                            <select>
                                            	<option>출발 예정일을 선택해주세요.</option>
                                            	
                                            		<option value="2020년 02월">2020년 02월</option>
                                            	
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
                                            	
                                            </select>
                                        </div>
                                        <input type="text" title="출발일" class="insert_calendar" value="" style="width:50%"  readonly id="travelCalendarPiker">
                                    </div>
                                </div>
                                
                                <div class="box_travel" id="travelRecommend">
                                	<strong class="tit">인기 급상승 여행지</strong>
                                	<p class="box_link">
                                		<a href="#" ></a>
                                	</p>
                                </div>                                
                                <button type="button" class="btn_cof cfrm" id="citySearch">검색하기</button>
                            </div>

                            <!-- 검색 히스토리 -->
                            <div class="box_result" id="travSearchHistory"></div>
                            <!-- // 검색 히스토리 -->
                        </div>
                        <!-- // 여행 -->

                        <!-- 항공권 -->
                        <div class="tab_con con2" style="display: none">
                            <div>
                                <ul class="list_one_category tabs">
                                    <li>
                                        <span class="form_block">
                                            <input type="radio" id="flight_chck1" name="flight_chck" checked><label for="flight_chck1"><span></span>왕복</label>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="form_block">
                                            <input type="radio" id="flight_chck2" name="flight_chck"><label for="flight_chck2"><span></span>편도</label>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="form_block">
                                            <input type="radio" id="flight_chck3" name="flight_chck"><label for="flight_chck3"><span></span>다구간</label>
                                        </span>
                                    </li>
                                </ul>
                                <div class="cont_tabs">
                                    <!-- 왕복 -->
                                    <div style="display: block;">
                                        <div class="box_way" id="roundTrip">
                                            <div class="item w_50">
                                                <div class="in">
                                                    <span class="tit">출발지</span>
                                                    <input type="text" placeholder="출발지 검색" style="width:100%" name="roundTripCd" id="roundTripStart" autocomplete="off">
                                                </div>
                                                <div class="in">
                                                    <span class="tit">도착지</span>
                                                    <input type="text" placeholder="도착지 검색" style="width:100%" name="roundTripCd" id="roundTripArrive" autocomplete="off">
                                                </div>
                                            </div>
                                            <div class="item w_50">
                                                <div class="in">
                                                    <label class="tit">가는날</label>
                                                    <input type="text" title="가는 날" class="insert_calendar" style="width:100%" id="calendarFrom">
                                                </div>
                                                <div class="in">
                                                    <label class="tit">오는날</label>
                                                    <input type="text" title="오는 날" class="insert_calendar" style="width:100%" id="calendarTo">
                                                </div>
                                            </div>
                                            <div class="item auto" id="roundTripCustom">
                                                <div class="in">
                                                    <span class="tit">좌석 등급</span>
                                                    <div class="select normal" style="width:138px" name="seatLevel"></div>
                                                </div>
                                                <div class="in">
                                                    <span class="tit">인원
                                                        <div class="tooltip_area">
                                                            <a href="#none" class="btn_tip_open">툴팁정보 보기</a>
                                                            <div class="tooltip">
                                                                <div class="cont">
                                                                    <p class="txt">성인(만 12세 이상), 아동(만 2세~12세 미만), 유아(만 2세 미만)</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </span>
                                                    <div class="select normal"  style="width:138px" name="adultPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="childPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="babyPerson"></div>
                                                </div>
                                            </div>
                                            <button type="button" class="btn_cof cfrm" id="airSearch">검색하기</button>
                                        </div>
                                        <!-- 검색 히스토리 -->
                                        <div class="box_result" id="airRountTripHistory"></div>
                                        <!-- // 검색 히스토리 -->
                                    </div>
                                    <!-- // 왕복 -->

                                    <!-- 편도 -->
                                    <div>
                                        <div class="box_way">
                                            <div class="item w_50">
                                                <div class="in">
                                                    <span class="tit">출발지</span>
                                                    <input type="text" placeholder="출발지 검색" style="width:100%" id="oneWayStart" autocomplete="off">
                                                </div>
                                                <div class="in">
                                                    <span class="tit">도착지</span>
                                                    <input type="text" placeholder="도착지 검색" style="width:100%" id="oneWayArrive" autocomplete="off">
                                                </div>
                                            </div>
                                            <div class="item w_50">
                                                <div class="in">
                                                    <label class="tit">가는날</label>
                                                    <input type="text" title="가는 날" class="insert_calendar" style="width:273px" id="oneWayCalendarFrom" >
                                                </div>
                                            </div>
                                            <div class="item auto"  id="oneWayCustom">
                                                <div class="in">
                                                    <span class="tit">좌석 등급</span>
                                                    <div class="select normal" style="width:138px" name="seatLevel"></div>
                                                </div>
                                                <div class="in">
                                                    <span class="tit">인원
                                                        <div class="tooltip_area">
                                                            <a href="#none" class="btn_tip_open">툴팁정보 보기</a>
                                                            <div class="tooltip">
                                                                <div class="cont">
                                                                    <p class="txt">성인(만 12세 이상), 아동(만 2세~12세 미만), 유아(만 2세 미만)</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </span>
                                                    <div class="select normal"  style="width:138px" name="adultPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="childPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="babyPerson"></div>
                                                </div>
                                            </div>
                                            <button type="button" class="btn_cof cfrm" id="onwWaySearch">검색하기</button>
                                        </div>
                                        <!-- 검색 히스토리 -->
                                        <div class="box_result" id="airOneWayHistory"></div>
                                        <!-- // 검색 히스토리 -->
                                    </div>
                                    <!-- // 편도 -->

                                    <!-- 다구간 -->
                                    <div>
                                        <div class="box_way" id="multiWay">
                                            <!-- 1 구간 -->
                                            <div class="box_row">
                                                <div class="item w_50">
                                                    <div class="in">
                                                        <span class="tit">출발지</span>
                                                        <input type="text" placeholder="출발지 검색" style="width:100%" name="multiWayStart" autocomplete="off">
                                                    </div>
                                                    <div class="in w_50">
                                                        <span class="tit">도착지</span>
                                                        <input type="text" placeholder="도착지 검색" style="width:100%" name="multiWayArrive" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="item auto">
                                                    <div class="in">
                                                        <label class="tit">가는날</label>
                                                        <input type="text" title="가는 날" class="insert_calendar" style="width:273px">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- // 1 구간 -->
                                            <!-- 2 구간 -->
                                            <div class="box_row">
                                                <div class="item w_50">
                                                    <div class="in">
                                                        <input type="text" placeholder="출발지 검색" style="width:100%" name="multiWayStart" autocomplete="off">
                                                    </div>
                                                    <div class="in">
                                                        <input type="text" placeholder="도착지 검색" style="width:100%" name="multiWayArrive" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="item auto">
                                                    <div class="in">
                                                        <input type="text" title="가는 날" class="insert_calendar" style="width:273px">
                                                    </div>
                                                </div>
                                                <button type="button" class="btn_add">여정 추가</button>
                                            </div>
                                            <!-- // 2 구간 -->

                                            <div class="item auto" id="multiWayCustom">
                                                <div class="in">
                                                    <span class="tit">좌석 등급</span>
                                                    <div class="select normal" style="width:138px" name="seatLevel"></div>
                                                </div>
                                                <div class="in">
                                                    <span class="tit">인원
                                                        <div class="tooltip_area">
                                                            <a href="#none" class="btn_tip_open">툴팁정보 보기</a>
                                                            <div class="tooltip">
                                                                <div class="cont">
                                                                    <p class="txt">성인(만 12세 이상), 아동(만 2세~12세 미만), 유아(만 2세 미만)</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </span>
                                                    <div class="select normal"  style="width:138px" name="adultPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="childPerson"></div>
                                                    <div class="select normal"  style="width:138px" name="babyPerson"></div>
                                                </div>
                                            </div>
                                            <button type="button" class="btn_cof cfrm" id="multiWaySearch">검색하기</button>
                                        </div>
                                        <!-- 검색 히스토리 -->
                                        <div class="box_result" id="airMultiWayHistory"></div>
                                        <!-- // 검색 히스토리 -->
                                    </div>
                                    <!-- // 다구간 -->

                                </div>
                            </div>
                        </div>
                        <!-- // 항공권 -->

                        <!-- 호텔 -->
                        <div class="tab_con con3" style="display: none" id="hotelTab">
                            <div class="box_way">
                                <div class="item">
                                    <div class="in">
                                        <span class="tit">여행지</span>
                                        <input type="text" class="tf_search" placeholder="여행지를 입력해 주세요." style="width:100%">
                                       <div id="hotelKeyword">
                                       <!-- <button type="button" class="btn_city">도시검색</button> -->                                        
                                       </div>
                                       
                                    </div>
                                </div>
                                <div class="item w_50">
                                    <div class="in">
                                        <span class="tit">체크인</span>
                                        <input type="text" title="체크인" class="insert_calendar" value="2018.08.31" style="width:100%">
                                    </div>
                                    <div class="in">
                                        <span class="tit">체크아웃</span>
                                        <input type="text" title="체크인" class="insert_calendar" value="2018.08.31" style="width:100%">
                                    </div>
                                </div>
                                <div class="item auto">
                                    <div class="in box_room">
                                        <span class="tit">객실 수</span>
                                        <div class="select normal" style="width:164px" id="roomCnt"></div>
                                    </div>
                                    <div class="in hotel_line">
                                        <span class="tit">객실 및 인원</span>
                                        <div class="select normal"  style="width:166px" name="hoteladultPerson" id="adultPerson"></div>
                                        <div class="select normal"  style="width:166px" name="hotelchildPerson" id="childPerson"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>                                        
                                    </div>
                                    <div class="in hotel_line" style="display: none;">                                        
                                        <div class="select normal"  style="width:166px" name="hoteladultPerson" id="adultPerson"></div>
                                        <div class="select normal"  style="width:166px" name="hotelchildPerson" id="childPerson"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>                                        
                                    </div>                                   
                                    <div class="in hotel_line" style="display: none;">                                        
                                        <div class="select normal"  style="width:166px" name="hoteladultPerson" id="adultPerson"></div>
                                        <div class="select normal"  style="width:166px" name="hotelchildPerson" id="childPerson"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>                                        
                                    </div>
                                    <div class="in hotel_line" style="display: none;">                                        
                                        <div class="select normal"  style="width:166px" name="hoteladultPerson" id="adultPerson"></div>
                                        <div class="select normal"  style="width:166px" name="hotelchildPerson" id="childPerson"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>                                        
                                    </div>
                                    <div class="in hotel_line" style="display: none;">                                        
                                        <div class="select normal"  style="width:166px" name="hoteladultPerson" id="adultPerson"></div>
                                        <div class="select normal"  style="width:166px" name="hotelchildPerson" id="childPerson"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>
                                        <div class="select normal"  style="width:166px" name="childAge"></div>                                        
                                    </div>
                                </div>
                                <button type="button" class="btn_cof cfrm">검색하기</button>
                            </div>
                            <!-- 검색 히스토리 -->                            
                            <div class="box_result" id="hotelHistory"></div>
                            <!-- // 검색 히스토리 -->
                        </div>
                        <!-- // 호텔 -->
                    </div>
                </div>          
                
                
   <!-- 파라미터              -->
                      
                <!-- 여행탭 검색 파라미터 -->
					<input type="hidden" id="travQuery">
					<input type="hidden" id="cityList">  
					<input type="hidden" id="departMonth">
					<input type="hidden" id="departDate">
				<!-- //여행탭 검색 파라미터 -->
				
				<!-- 항공권 검색 파라미터 -->
					<form id="airForm">					
						<!-- 필수 -->
						<input type="hidden" id="initform" 		name="initform" 	value="RT"> 	<!-- 여정 타입 OW 편도 RT 왕복 MT 다구간 -->
						<input type="hidden" id="domintgubun" 	name="domintgubun" 	value="I"> 		<!-- I국제선 , D 국내선 -->
						<input type="hidden" id="depdomintgbn" 	name="depdomintgbn" value="I"> 		<!-- 출발도시구문  I 해외출발, D국내출발 -->					
						<input type="hidden" id="adtcount" 		name="adtcount" 	value="1"> 		<!-- 성인예약수 -->
						<input type="hidden" id="chdcount" 		name="chdcount" 	value="0"> 		<!-- 소아수 -->
						<input type="hidden" id="infcount" 		name="infcount" 	value="0">		<!-- 유아수 -->
						<input type="hidden" id="cabinclass" 	name="cabinclass" 	value="Y">		<!-- Y 일반석 ,C 비즈니스석,  F 일등석 , W 프리미엄-->
						<input type="hidden" id="secrchType" 	name="secrchType" 	value="FARE"> 	<!--조회타입 FARE: 운임중심조회, AVAIL : 스케줄중심조회 -->
						
						<input type="hidden" id="tasktype" 		name="tasktype" 	value="B2C"> 	<!-- 업무구분 고정값 -->
						<input type="hidden" id="availcount" 	name="availcount" 	value="250"> 	<!-- 조회수 고정값 -->
						<!-- 필수 -->					
						<div id="airStartArrivalCd"></div>															
					</form>				
				<!-- //항공권 검색 파라미터 -->
				
				<!-- //호텔 검색 파라미터 -->
					<form id="hotelForm">
						<input type="hidden" id="CityCode" 		name="CityCode" 	value="">
						<input type="hidden" id="CheckIn" 		name="CheckIn" 		value="">
						<input type="hidden" id="CheckOut" 		name="CheckOut" 	value="">
						<input type="hidden" id="RoomCnt" 		name="RoomCnt" 		value="1">										
					</form>
				<!-- //호텔 검색 파라미터 -->
				                
            </div>
            
            
   <!-- 파라미터              -->         
	            
<script>
	
	function mainQuickSearchInit(){
		var air = new airTicketInit();
		//탭 기능
		$("#quickTab ul.tab_quick > li").on("click",function(){
			
			var index = $(this).index();
			var tabArea = $(this).parents("#quickTab");
			//탭 이벤트
			$(this).parent().find("> li").removeClass('on').eq( index ).addClass("on");		
			//탭별 컨텐츠 이벤트
			$(".tab_conts > div",tabArea).hide().eq( index ).show();
			
		});
		
		/* 항공권 탭 기본 이벤트 */
		$("[name='flight_chck']").on("click",function(){	
			var index = $("[name='flight_chck']").index(this);			
			$(this).parents(".con2").find(".cont_tabs > div").hide().eq( index ).show();
			/* 왕복, 편도, 다구간 옵션별 기본설정 호출 */
			air.setOption(index);
		})
		
		//도시 검색 결과 영역이외 클릭시 도시리스트 제거
		 $('#wrap').on('click',function(e){
				var eventTarget = $(e.target);				
 				if(!(eventTarget.is('#cityArea.tf_search') || eventTarget.is('#cityKeyword a')
 					|| eventTarget.is('#hotelTab .tf_search') || eventTarget.is('#hotelKeyword a')) ){
					$('#cityKeyword').empty();
					$('#hotelKeyword').empty();
 				}
		});
		
		
		/*여행 탭*/
		travelTapEventInit();
		travelTapViewInit(); 
		/*여행 탭 END*/
		
		/* 항공권 탭*/
		air.Init();
		/* 항공권 탭 END*/
		
		/* 호텔 탭 */
		hotelTabInit();		
		hotelHistory();
		/* 호텔 탭 END */
	}
	
	/* 팝업 제어 */
	var popUpObj = {
			//target : {}
			setObj : function( data ){				
				this.callBack( data );
			}
			,airPop : $.ybPopup({
							title : '도시검색',
							type : 'large',
							contents : {url : "/main/fragment/findCity.yb" , data : { type : "ticket" }  }						
						})
			,locationPop : 	$.ybPopup({
								title : '지역검색',
								type : 'large',
								contents : {url : "/main/fragment/findCity.yb" }
							})
			,callBack : function(){}
						
		}
	
	
	
	
	function airTicketInit(){
		
		var $debug				=	"hidden"; /* 파라미터 디버깅용 */
		
		/* 옵션 선택 별 세팅 */
		this.setOption = function(index){						
			index === 0 && this.roundTripParameter(); 	/* 왕복 */
			index === 1 && this.oneWayParameter();  	/* 편도 */
			index === 2 && this.multiWayParameter(); 	/* 다구간 */
		}
		
		/* 항공권 초기호출 */
		this.Init = function(){

			var seatLevel = [
				{ text: "일반석", value: "Y" },
	    	    { text: "프리미엄 일반석", value: "W" },
	    	    { text: "비지니스석", value: "C" },
	    	    { text: "일등석", value: "F" }
	    	];			
			var AdultPerson = [];
			var ChildPerson = [];
			var BabyPerson = [];
			
			for(var i=0; i<10; i++){
				if( i < 9 ) AdultPerson[i] 	= 	{ text: "성인/"+(i+1)+"명", value: (i+1) };
				ChildPerson[i]	=	{ text: "아동/"+i+"명", value: i };
				BabyPerson[i]	=	{ text: "유아/"+i+"명", value: i };
			}			
			
			$("[name='seatLevel']").ybSelect({ dataSource:seatLevel, height : 200 })
			$("[name='seatLevel'] .list button").on("click", function(){ $("#cabinclass").val( $(this).val() ); });										   
			
			$("[name='adultPerson']").ybSelect({ dataSource:AdultPerson	, height : 200 })
			$("[name='adultPerson'] .list button").on("click",function(){ $("#adtcount").val( $(this).val() ); });	
			
			$("[name='childPerson']").ybSelect({ dataSource:ChildPerson	, height : 200 })
			$("[name='childPerson'] .list button").on("click",function(){ $("#chdcount").val( $(this).val() ); });			
			
			$("[name='babyPerson']").ybSelect({ dataSource:BabyPerson	, height : 200 })
			$("[name='babyPerson'] .list button").on("click",function(){ $("#infcount").val( $(this).val() ); });		
			
			/* 파라미터 */			
			$("[name='flight_chck']:eq(0)").trigger("click");
			/* 항공권탭 첫 페이지(왕복) 이벤트*/
			this.roundTripEventInit();			
			/* 왕복 항공권 검색 히스토리*/
			this.roundTripSetHistory();
			
			/* 편도 옵션 이벤트 */
			this.oneWayEventInit();
			/* 편도 히스토리 */
			this.oneWaySetHistory();
			
			/* 다구간 옵션 이벤트 */
			this.multiWayEventInit();
			/* 다구간 히스토리 */
			this.multiWayHistory();
			
		}
		
		
		
		/*****************다구간*******************/
		
		/* 다구간 */
		this.multiWayParameter = function(){

			var $obj 				= 	$("#airStartArrivalCd");
			var $airStart 			= 	$("<div>",{ "id" : "airStart" });
			var $airArrive  		= 	$("<div>",{ "id" : "airArrive" });
						
			/* 항공권 파라미터 초기화 */
			$obj.empty();
			
			/* 다구간 옵션 필수 파라미터 생성 */
			$airStart.append( $("<input>",{ "name" : "depctycd", "type" : $debug }) )
					 .append( $("<input>",{ "name" : "depctycd", "type" : $debug }) );
			
			$airArrive.append( $("<input>",{ "name" : "arrctycd", "type" : $debug }) )
					  .append( $("<input>",{ "name" : "arrctycd", "type" : $debug }) );	
			
			/* 달력 파라미터 */
			$obj.append( $("<input>",{ "name" : "depdt","type" : $debug, "value" : getPlusToday(2,"dot").replace( /\./g ,"-")  }) )			
				.append( $("<input>",{ "name" : "depdt","type" : $debug }) );
							
			$obj.append($airStart).append($airArrive);
			
			$("#initform").val("MT");						
			$("#multiWayCustom .in .list").find("button:eq(0)").trigger('click');
			$("#multiWay [name='multiWayStart'], [name='multiWayArrive'], .insert_calendar").val("");
			$("#multiWay .insert_calendar").val("").eq(0).val( getPlusToday(2,"dot") );			
			$("[name='del_btn']").trigger('click');
			
		}
		
		this.multiWayHistory = function(){
			
			var storage = JSON.parse( localStorage.getItem('quickSearchAirMultiHis') );
			var $fragment = $(document.createDocumentFragment());
			
			if( null != storage ){
				$fragment.append(
					storage.map(function( item, idx ){
						var $div = $("<div>",{ "class" : "result" });				
						var airDate = item.calendarFrom.reduce( function(acc, item, index, array){
											acc = index === 0 ? acc.concat( item+" 출발" ) : acc.concat( item ); 
											return acc
									  },[]).join(" - ")+" 도착";	
						var location = item.multiWayStart.reduce(function(acc, keyitem, index, array){ 
											acc = acc.concat( keyitem.name ) 
											acc = acc.concat( item.multiWayArrive[index].name )
								 			return acc
										},[]).join(" - ");
						return $div.append( $("<span>",{ "text" : location+" , "+airDate }).data("item",item) )
								   .append( $("<button>",{ "type" : "button", "class" : "btn_close", "text" : "검색 결과 닫기" }).data("index",item.index) );
					})
				)
			}	
						
			$( ".btn_close" ,$fragment).on("click", function(){				
				var arr = JSON.parse( localStorage.getItem('quickSearchAirMultiHis') );
        		var index = $(this).data("index");
				localStorage.setItem('quickSearchAirMultiHis', JSON.stringify( arr.filter( function( item ){ return item.index != index }) ) );
				$(this).parent().remove();
			})
			
			$( "span" ,$fragment).on("click", function(){
				var data = $(this).data("item");				
				$("[name='del_btn']").trigger('click');
				var addBtn = $("#multiWay .btn_add");
								
				data.calendarFrom.forEach(function(item,idx){					
					idx > 1 && addBtn.trigger("click");
					$("#multiWay .insert_calendar").eq(idx).data('ybDatePicker').setValue( item.replace( /\-/g ,".") );
					$("[name='depdt']").eq(idx).val( item );
					
					$("#multiWay [name='multiWayStart']").eq(idx).val( data.multiWayStart[idx].name ).data("item",data.multiWayStart[idx] );
					$("[name='depctycd']").eq(idx).val( data.multiWayStart[idx].code );
					
					$("#multiWay [name='multiWayArrive']").eq(idx).val( data.multiWayArrive[idx].name ).data("item", data.multiWayArrive[idx] );
					$("[name='arrctycd']").eq(idx).val( data.multiWayArrive[idx].code );
				})
								
				$("#multiWayCustom .in:eq(0) .list button[value='"+data.seatLevel+"']").trigger("click");
				$("#multiWayCustom .in:eq(1) .select:eq(0) .list button[value='"+data.adtcount+"']").trigger("click"); /* 성인 */
				$("#multiWayCustom .in:eq(1) .select:eq(1) .list button[value='"+data.chdcount+"']").trigger("click"); /* 아동 */
				$("#multiWayCustom .in:eq(1) .select:eq(2) .list button[value='"+data.infcount+"']").trigger("click"); /* 유아 */
				
				$("#multiWaySearch").trigger("click");
				
			})
			
			$("#airMultiWayHistory").append( $fragment )
			
			
			
		}		
		
		/* 다구간 이벤트 */
		this.multiWayEventInit = function(){
			
			/* 여정 추가 */
			$(".btn_add").on("click", $.proxy(function(){
				
				var len = $("#multiWay > .box_row").length; 
				
				if( len > 3 ){
					alert("다구간 여정은 최대 3건까지 추가 가능합니다.");
					return;
				}
				var $obj 				= $("#airStartArrivalCd");
				var $airStart 			= $("#airStart");
				var $airArrive  		= $("#airArrive");
				var $div 				= $("<div>",{ "class" : "box_row" });
				var $itemW50 			= $("<div>", { "class" : "item w_50" } );
				var $itemAuto 			= $("<div>", { "class" : "item auto" } );				
				var $depctycd			= $("<input>",{ "id" : "depctycd", "name" : "depctycd", "type" : $debug });
				var $arrctycd			= $("<input>",{ "id" : "arrctycd", "name" : "arrctycd", "type" : $debug });
				var $depdt				= $("<input>",{ "name" : "depdt", "id" : "calendarFrom", "type" : $debug });
				var $calendar			= $("<input>", { "type": "text", "title" : "가는 날", "class" : "insert_calendar", "style" : "width:273px" });
				var $del				= $("<button>",{ "type" : "button", "class" : "btn_add", "text" : "여정 삭제", "name" : "del_btn" })
											.data("element", { depctycd : $depctycd, arrctycd : $arrctycd, obj : $div, depdt : $depdt } );
				
				$itemW50.append( 	$("<div>",{ "class" : "in" }).append( $("<input>", { "type" : "text", "placeholder" : "출발지 검색", "style" : "width:100%", "name" : "multiWayStart", "autocomplete" : "off"  }) ) );
				$itemW50.append( 	$("<div>",{ "class" : "in" }).append( $("<input>", { "type" : "text", "placeholder" : "도착지 검색", "style" : "width:100%", "name" : "multiWayArrive", "autocomplete" : "off"  }) ) );				
				$itemAuto.append( 	$("<div>",{ "class" : "in" }).append( $calendar ) );
								
				$airStart.append( $depctycd );
				$airArrive.append( $arrctycd );
				$("[name='depdt']:last", $obj).after( $depdt );
				
				$div.append( $itemW50 )
					.append( $itemAuto )
					.append( $del );
				
				$calendar.ybDatePicker({
					viewMonthCount : 2,								
					enableAutoPosition : false,
	                onDateSelected : function(date){ 
	                	event.preventDefault();                	
	                	var index = $("#multiWay .insert_calendar").index( $calendar );	                	              	
	                	$("#airStartArrivalCd [name='depdt']").eq( index ).val( $.ybDate.getDateString(date) )
	            	}
	            }).data('ybDatePicker').setMinDate(getPlusToday(2));					
								
				$("#multiWay > .box_row:last").after( $div );
				
				this.addEvent();
				
			},this))
			

			this.addEvent = function(){
				
				$("[name='del_btn'],[name='multiWayStart'],[name='multiWayArrive']").unbind("click");
				
				/* 삭제 버튼 이벤트 */
				$("[name='del_btn']").on("click",function(){
					var data = $(this).data("element");
					// 파라미터 삭제 
					data.depctycd.remove();
					data.arrctycd.remove();
					data.depdt.remove();
					 // 입력란 삭제 
					data.obj.remove();
				})
				
				/* 팝업 이벤트 */
				$("[name='multiWayStart']").on( "click", function(){					
					popUpObj.callBack = $.proxy(function( data ){ 
						var $obj = $(this);
						var index = $("[name='multiWayStart']").index( $obj );
						$obj.val( data.name ).data("item",data);
						$("[name='depctycd']").eq(index).val( data.code );												
					},this) 
					popUpObj.airPop.open();					
				})
				
				$("[name='multiWayArrive']").on( "click", function(){
					popUpObj.callBack = $.proxy(function( data ){  
						var $obj = $(this);
						var index = $("[name='multiWayArrive']").index( $obj );
						$obj.val( data.name ).data("item",data);
						$("[name='arrctycd']").eq(index).val( data.code );
					},this)
					popUpObj.airPop.open();					
				})	
			}
			
			this.addEvent();
			
			$("#multiWay .insert_calendar").each(function(idx,item){				
				$(this).ybDatePicker({
					viewMonthCount : 2,					
					enableAutoPosition : false,
	                onDateSelected : $.proxy(function(date){ 
	                	event.preventDefault();
	                	var index = $("#multiWay .insert_calendar").index( this );	                	
	                	$("#airStartArrivalCd [name='depdt']").eq( index ).val( $.ybDate.getDateString(date) )	                	
	            	},this)
	            });
				
	            idx === 0 && $(this).data('ybDatePicker').setValue(getPlusToday(1,"dot")); 
				$(this).data('ybDatePicker').setMinDate(getPlusToday(1));
			})
			
			/* 다구간 검색하기 */
			$("#multiWaySearch").on("click",function(){
				
				var $obj = $("#multiWay");
				if( airValidate() ){					
					
					/* 히스토리 생성 */											
					setStorage('quickSearchAirMultiHis',{
						multiWayStart 		:	$.makeArray($( "[name='multiWayStart']" , $obj )).reduce(function(acc, keyitem){ return acc.concat( $(keyitem).data("item") ) },[])
						,multiWayArrive 	:	$.makeArray($( "[name='multiWayArrive']" , $obj )).reduce(function(acc, keyitem){ return acc.concat( $(keyitem).data("item") ) },[])
						,calendarFrom		:	$.makeArray($( "[name='depdt']")).reduce(function(acc, keyitem){ return acc.concat( $(keyitem).val() ) },[])						
						,seatLevel			:	$("#cabinclass").val()						
						,adtcount			:	$("#adtcount").val()
						,chdcount 			:	$("#chdcount").val()	
						,infcount 			:	$("#infcount").val()						
					});
					
					searchAirTicket( $("#airForm").serialize() );
				}
			})
		}
		
		/********************* 다구간 END ************************/
		
		
		/*****************************왕복***************************/
		

		/* 왕복 파라미터 */
		this.roundTripParameter = function(){

			var $obj 				= 	$("#airStartArrivalCd");
			var $airStart 			= 	$("<div>",{ "id" : "airStart" });
			var $airArrive  		= 	$("<div>",{ "id" : "airArrive" });
			
			/* 항공권 파라미터 초기화 */
			$obj.empty();				
			/*
			* 왕복 옵션 필수 파라미터 생성
			* 파라미터 구분 세팅 출발 도착지 파라미터 순서 중요 */
			$airStart.append( $("<input>",{ "name" : "depctycd", "type" : $debug }) )
					 .append( $("<input>",{ "name" : "arrctycd", "type" : $debug }) );
					 
			
			$airArrive.append( $("<input>",{ "name" : "depctycd", "type" : $debug }) )
			 		  .append( $("<input>",{ "name" : "arrctycd", "type" : $debug }) );
			
			/* 달력 파라미터 */
			$obj.append( $("<input>",{ "name" : "depdt","type" : $debug, "value" : getPlusToday(2,"dot").replace( /\./g ,"-")  }) );
			$obj.append( $("<input>",{ "name" : "depdt","type" : $debug  }) );
							
			$obj.append( $airStart );
			$obj.append( $airArrive );
			
			$("#roundTripStart, #roundTripArrive, #calendarTo").val("");			
			$("#calendarFrom").data('ybDatePicker') !== undefined && $("#calendarFrom").data('ybDatePicker').setValue( getPlusToday(2,"dot") );
			
			$("#initform").val("RT");
			$("#roundTripCustom .in .list").find("button:eq(0)").trigger('click');
			
					}
		
		/* 왕복 히스토리 */
		this.roundTripSetHistory = function(){
			var storage = JSON.parse( localStorage.getItem('quickSearchAirRoundHis') );
			var $fragment = $(document.createDocumentFragment());
			
			if( null != storage ){										
				$fragment.append(
					storage.map( function(item,idx){							
						var text = item.roundTripStart.name+"-"+item.roundTripArrive.name+","+item.calendarFrom+" 출발,"+item.calendarTo+" 도착";
						return $("<div>",{ "class" : "result"})
								.append( $("<span>",{"text" : text}).data("item",item) )										
								.append( $("<button>",{ "type" : "button", "class" : "btn_close", "text" : "검색 결과 닫기" }).data("index",item.index) )
					})
				)
			}
        	/* 히스토리 삭제 이벤트 */
        	$(".btn_close",$fragment).on( "click",function(){
        		var arr = JSON.parse( localStorage.getItem('quickSearchAirRoundHis') );
        		var index = $(this).data("index");
				localStorage.setItem('quickSearchAirRoundHis', JSON.stringify( arr.filter( function( item ){ return item.index != index }) ) );
				$(this).parent().remove();
        	});
        	
        	/* 히스토리 검색 조건 자동 입력 이벤트 */
        	$( "span", $fragment ).on( "click", function(){				
				var item = $(this).data("item");
				$("#roundTripStart").data("item", item.roundTripStart ).val( item.roundTripStart.name );
				$("#airStart #depctycd").val( item.roundTripStart.code ); 	//출발
				$("#airArrive #arrctycd").val( item.roundTripStart.code );	//도착									
				$("#roundTripArrive").data("item", item.roundTripArrive ).val( item.roundTripArrive.name );
				$("#airStart #arrctycd").val( item.roundTripArrive.code );	//출발
				$("#airArrive #depctycd").val( item.roundTripArrive.code );	//도착
									
				$("#calendarFrom").val( item.calendarFrom );
				$("#calendarTo").val(   item.calendarTo );
				$("#airStartArrivalCd [name=depdt]:eq(0)").val( item.calendarFrom.replace( /\./g ,"-") );
				$("#airStartArrivalCd [name=depdt]:eq(1)").val( item.calendarTo.replace( /\./g ,"-") );
				
				$("#roundTripCustom .in:eq(0) .list button[value='"+item.seatLevel+"']").trigger("click");
				$("#roundTripCustom .in:eq(1) .select:eq(0) .list button[value='"+item.adtcount+"']").trigger("click"); /* 성인 */
				$("#roundTripCustom .in:eq(1) .select:eq(1) .list button[value='"+item.chdcount+"']").trigger("click"); /* 아동 */
				$("#roundTripCustom .in:eq(1) .select:eq(2) .list button[value='"+item.infcount+"']").trigger("click"); /* 유아 */
				
				$("#airSearch").trigger("click");
				
        	});	
        	            	
        	$("#airRountTripHistory").empty().append( $fragment );
		}
		
		/* 왕복 이벤트 */
		this.roundTripEventInit = function(){
			
			/* 왕복 출발지 */
			$("#roundTripStart").on("click", function(){
				popUpObj.callBack = $.proxy(function( data ){
					$(this).val( data.name ).data( "item",data );					
					$("#airStart [name=depctycd]").val( data.code ); 	//출발
					$("#airArrive [name=arrctycd]").val( data.code );	//도착
					$("#depdomintgbn").val( data.nationcode );	//출발도시구분					
				},this) 
				popUpObj.airPop.open();
			});
			
			/* 왕복 도착지 */
			$("#roundTripArrive").on("click", function(){
				popUpObj.callBack = $.proxy(function( data ){
					$(this).val( data.name ).data( "item",data );					
					$("#airStart [name=arrctycd]").val( data.code );	//출발
					$("#airArrive [name=depctycd]").val( data.code );	//도착					
				},this) 
				popUpObj.airPop.open();
			});
			
			/* 왕복 달력 */
			var startingDateCal = 
				$("#roundTrip #calendarFrom").ybDatePicker({
	                viewMonthCount : 2,
	                to : $("#calendarTo"),
	                isStatusInfoBar : true,
	                enableAutoPosition : false,
	                isFillDefaultDate : true,
	                allowSelectPriorToday : false,
	                onDateSelected : function(date){ 
	                	event.preventDefault();
	            		var _obj = $("#airStartArrivalCd");                	
	            		$( "input:eq(0)" , _obj ).val( $.ybDate.getDateString(date)  );	            		
	            	}
	            }).data('ybDatePicker');
            startingDateCal.setValue(getPlusToday(1,"dot"));
            startingDateCal.setMinDate(getPlusToday(1));
			
            $("#roundTrip #calendarTo").ybDatePicker({
				viewMonthCount : 2,
                from : $("#calendarFrom"),
                isStatusInfoBar : true,
                enableAutoPosition : false,
                onDateSelected : function(date){ 
                	event.preventDefault();
            		var _obj = $("#airStartArrivalCd");                	
            		$( "input:eq(1)" , _obj ).val( $.ybDate.getDateString(date)  );
            	}
			}).data('ybDatePicker').setMinDate(getPlusToday(1));            
            
            
			
			/* 항공권 왕복옵션 검색하기 이벤트 ( 공통 사용 없이 별도로 지정 ) */
			$("#airSearch").on("click",$.proxy(function(){
				
				var $obj = $("#airStartArrivalCd");
				
				if( !$.makeArray($("#airStart [name='depctycd']")).every(function(item,idx){ return $(item).val().length > 0 }) ){
					alert( "출발지를 입력하세요." );
					return false;
				}				
				if( !$.makeArray($("#airStart [name='arrctycd']")).every(function(item,idx){ return $(item).val().length > 0 }) ){
					alert( "도착지를 입력하세요." );
					return false;
				}				
				if( $("> input:eq(0)", $obj ).val().length === 0 ){
					alert( "가는날을 입력하세요." );
					return false;
				}  				
				if( $("> input:eq(1)", $obj ).val().length === 0 ){
					alert( "오는날을 입력하세요." );
					return false;
				}				
				if( airValidate() ){
					/* 국제선 국내선 */
					var sArr = $("#roundTripStart").data("item");
					var aArr = $("#roundTripArrive").data("item");
					if( sArr.nationcode == "D" && aArr.nationcode == "D" ) $("#domintgubun").val( "D" );
					if( sArr.nationcode == "D" ) $("#depdomintgbn").val( "D" );
					
					/* 히스토리 생성 */											
					setStorage('quickSearchAirRoundHis',{
						roundTripStart 		:	sArr
						,roundTripArrive 	:	aArr
						,calendarFrom		:	$("#calendarFrom").val()
						,calendarTo			:	$("#calendarTo").val()
						,seatLevel			:	$("#cabinclass").val()						
						,adtcount			:	$("#adtcount").val()
						,chdcount 			:	$("#chdcount").val()	
						,infcount 			:	$("#infcount").val()						
					});
					
					/* 조회 */
					searchAirTicket( $("#airForm").serialize() );
				}				
			},this));
			
		}
		/*****************************왕복 END ***************************/
		
		/*****************************편도***************************/
		
		/* 편도 파라미터 */
		this.oneWayParameter = function(){

			var $obj 				= 	$("#airStartArrivalCd");
			var $airStart 			= 	$("<div>",{ "id" : "airStart" });
			var $airArrive  		= 	$("<div>",{ "id" : "airArrive" });
						
			/* 항공권 파라미터 초기화 */
			$obj.empty();				
			/* 편도 옵션 필수 파라미터 생성 */
			$airStart.append( $("<input>",{ "id" : "depctycd", "name" : "depctycd", "type" : $debug }) );
			
			$airArrive.append( $("<input>",{ "id" : "arrctycd", "name" : "arrctycd", "type" : $debug }) );
			
			/* 달력 파라미터 */
			$obj.append( $("<input>",{ "name" : "depdt", "id" : "calendarFrom"  ,"type" : $debug, "value" : getPlusToday(2,"dot").replace( /\./g ,"-")  }) );			
							
			$obj.append( $airStart );
			$obj.append( $airArrive );
			
			$("#oneWayStart, #oneWayArrive").val("");						
			$("#initform").val("OW");
			$("#oneWayCalendarFrom").data('ybDatePicker') !== undefined && $("#oneWayCalendarFrom").data('ybDatePicker').setValue( getPlusToday(2,"dot") );			
			$("#oneWayCustom .in .list").find("button:eq(0)").trigger('click');
			
		}
		
		/* 편도 히스토리 */
		this.oneWaySetHistory = function(){
			var storage = JSON.parse( localStorage.getItem('quickSearchAirOneWayHis') );
			var $fragment = $(document.createDocumentFragment());
			
			if( null != storage ){										
				$fragment.append(
					storage.map( function(item,idx){							
						var text = item.oneWayStart.name+"-"+item.oneWayArrive.name+","+item.calendarFrom+" 출발";
						return $("<div>",{ "class" : "result"})
								.append( $("<span>",{"text" : text}).data("item",item) )										
								.append( $("<button>",{ "type" : "button", "class" : "btn_close", "text" : "검색 결과 닫기" }).data("index",item.index) )
					})
				)
			}
        	/* 히스토리 삭제 이벤트 */
        	$(".btn_close",$fragment).on( "click",function(){
        		var arr = JSON.parse( localStorage.getItem('quickSearchAirOneWayHis') );
        		var index = $(this).data("index");
				localStorage.setItem('quickSearchAirOneWayHis', JSON.stringify( arr.filter( function( item ){ return item.index != index }) ) );
				$(this).parent().remove();
        	});
        	
        	/* 히스토리 검색 조건 자동 입력 이벤트 */
        	$( "span", $fragment ).on( "click", function(){				
				var item = $(this).data("item");				
				 
				 $("#oneWayStart").data("item", item.oneWayStart ).val( item.oneWayStart.name );				 
				 $("#oneWayArrive").data("item", item.oneWayArrive ).val( item.oneWayArrive.name );				 
				 $("#airStart #depctycd").val( item.oneWayStart.code ); 	
				 $("#airArrive #arrctycd").val( item.oneWayArrive.code );	
				 
				 
				 $("#airStartArrivalCd #calendarFrom").val( item.calendarFrom.replace( /\./g ,"-") );
				 $("#oneWayCalendarFrom").val( item.calendarFrom );
				 
				$("#oneWayCustom .in:eq(0) .list button[value='"+item.seatLevel+"']").trigger("click");	  /* 좌석 */
				$("#oneWayCustom .in:eq(1) .select:eq(0) .list button[value='"+item.adtcount+"']").trigger("click"); /* 성인 */
				$("#oneWayCustom .in:eq(1) .select:eq(1) .list button[value='"+item.chdcount+"']").trigger("click"); /* 아동 */
				$("#oneWayCustom .in:eq(1) .select:eq(2) .list button[value='"+item.infcount+"']").trigger("click"); /* 유아 */
				
				$("#onwWaySearch").trigger("click");
				
        	});	
        	
        	$("#airOneWayHistory").empty().append( $fragment );
		}
		
		/* 편도 이벤트 */
		this.oneWayEventInit = function(){
			 /* 편도 검색 출발지*/
			$("#oneWayStart").on("click", function(){ 
				popUpObj.callBack = $.proxy(function( data ){
					$(this).val( data.name ).data( "item",data );	
					$("#airStart #depctycd").val( data.code ); 	//출발								
					$("#depdomintgbn").val( data.nationcode );	//출발도시구분										
				},this) 
				popUpObj.airPop.open();
			});
			
			/* 편도 검색 도착지*/
			$("#oneWayArrive").on("click", function(){ 
				popUpObj.callBack = $.proxy(function( data ){
					$(this).val( data.name ).data( "item",data );
					$("#airArrive #arrctycd").val( data.code );	//도착										
				},this) 
				popUpObj.airPop.open();			
			});
			
			/* 편도 달력 */
			var oneWaycal = 
					$("#oneWayCalendarFrom").ybDatePicker({
						viewMonthCount : 2,
						isFillDefaultDate : true,
						allowSelectToday : false,
						enableAutoPosition : false,
		                onDateSelected : function(date){ 
		                	event.preventDefault();
		            		var _obj = $("#airStartArrivalCd");                	
		            		$( "#calendarFrom" , _obj ).val( $.ybDate.getDateString(date)  );	            		
		            	}
		            }).data('ybDatePicker');
			
			oneWaycal.setValue(getPlusToday(1,"dot"));
			oneWaycal.setMinDate(getPlusToday(1));
						
			/* 항공권 편도옵션 검색하기 이벤트 */
			$("#onwWaySearch").on("click",$.proxy(function(){
								
				if( airValidate() ){
					/* 국제선 국내선 */
					var sArr = $("#oneWayStart").data("item");
					var aArr = $("#oneWayArrive").data("item");
					if( sArr.nationcode == "D" && aArr.nationcode == "D" ) $("#domintgubun").val( "D" );
					if( sArr.nationcode == "D" ) $("#depdomintgbn").val( "D" );
					var params = $("#airForm").serialize();
					
					var p_depdt = "&depdt=&depdt=&depdt="; /* API 문서랑 맞는게 하나도 없음 꼭 넣어줘야 검색이 되는건지...??? */
							
					/* 히스토리 생성 */											
					setStorage('quickSearchAirOneWayHis',{
						oneWayStart 		:	sArr
						,oneWayArrive 		:	aArr
						,calendarFrom		:	$("#oneWayCalendarFrom").val()						
						,seatLevel			:	$("#cabinclass").val()
						,adtcount			:	$("#adtcount").val()
						,chdcount 			:	$("#chdcount").val()	
						,infcount 			:	$("#infcount").val()						
					});
					/* 조회 */
					searchAirTicket( params+p_depdt );
				}				
			},this));
			
		}
		/*****************************편도 END***************************/
	}
	
	/***********************호텔*************************/
	
	function hotelHistory(){
		
		var storage = JSON.parse( localStorage.getItem('quickSearchHotelHis') );
		var $fragment = $(document.createDocumentFragment());
		
		if( null != storage ){										
			$fragment.append(
				storage.map( function(item,idx){
					var text = item.hotelInfo.name+","+item.checkIn.replace( /\-/g ,".")+"체크인 - "+item.checkOut.replace( /\-/g ,".")+" 체크아웃";	
					return $("<div>",{ "class" : "result"})
							.append( $("<span>",{"text" : text}).data("item",item) )										
							.append( $("<button>",{ "type" : "button", "class" : "btn_close", "text" : "검색 결과 닫기" }).data("index",item.index) )
				})
			)
		}
    	/* 히스토리 삭제 이벤트 */
    	$(".btn_close",$fragment).on( "click",function(){
    		var arr = JSON.parse( localStorage.getItem('quickSearchHotelHis') );
    		var index = $(this).data("index");
			localStorage.setItem('quickSearchHotelHis', JSON.stringify( arr.filter( function( item ){ return item.index != index }) ) );
			$(this).parent().remove();
    	});
    	
    	/* 히스토리 검색 조건 자동 입력 이벤트 */
    	$( "span", $fragment ).on( "click", function(){				
    		var item = $(this).data("item");    		
    		$("#hotelTab .tf_search").val( item.hotelInfo.name );
    		$("#hotelForm #CityCode").data('item',item.hotelInfo).val( item.hotelInfo.CityCode );
    		
    		$("#hotelForm #CheckIn").val( item.checkIn );
    		$("#hotelForm #CheckOut").val( item.checkOut );
    		
    		$("#hotelTab .insert_calendar:eq(0)").data('ybDatePicker').setValue( item.checkIn.replace( /\-/g ,"") ); 
    		$("#hotelTab .insert_calendar:eq(1)").data('ybDatePicker').setValue( item.checkOut.replace( /\-/g ,"") );
    		    		
    		$("#hotelTab #roomCnt .list button[value='"+item.roomCnt+"']").trigger("click");	
    			    			
    		$("#hotelTab .in.hotel_line").slice(0,item.roomCnt).each(function(idx,element){
    			var info = item.paxInfo.split('@');
    			var customs = info[idx].split('^');
    			
    			$("#adultPerson .list button[value='"+customs[0]+"']",element).trigger("click");
    			$("#childPerson .list button[value='"+customs[1]+"']",element).trigger("click");
    			
    			customs[2].split('|').forEach(function(value, idx){
    				$("[name='childAge']",element).eq(idx).data('ybSelect').setValue(value);
    			});
    		})
    		
    		$("#hotelTab .btn_cof.cfrm").trigger("click");
    		
    	});	
    	            	
    	$("#hotelHistory").empty().append( $fragment );
		
	}
	
	
	function hotelTabInit(){
						
		var roomCnt = [];		
		var adultPerson = [];
		var childPerson = [];
		var age = []; 
		
		for(var i=0; i<11; i++){
			if( i < 5 ) roomCnt[i] = { text: (i+1), value: (i+1) } //1~5			
			if( i < 3 ) childPerson[i]	=	{ text: "아동 "+i+"명", value: i };
			if( i < 9 ) adultPerson[i] 	= 	{ text: "성인 "+(i+1)+"명", value: (i+1) };
			age[i] = { text: "만 "+(i+1)+"세", value: (i+1) } //1~5
		}			
		
		$("#hotelTab #roomCnt").ybSelect({ dataSource:roomCnt, height : 200 });
		$("#hotelTab #roomCnt .list button").on("click", function(){ 			
			var selVal = $(this).val();
			$("#hotelTab .in.hotel_line").hide().slice(0, selVal).show();
			$("#hotelForm #RoomCnt").val( selVal );				
		});
				
		$("#hotelTab [name='hoteladultPerson']").ybSelect({ dataSource:adultPerson, height : 200 });
		$("#hotelTab [name='hotelchildPerson']").ybSelect({ dataSource:childPerson, height : 200 });		
		$("#hotelTab [name='hotelchildPerson'] .list button").on("click",function(){
			var index = $("#hotelTab [name='hotelchildPerson'] .list").index( $(this).parents(".list") );
			$("#hotelTab .in.hotel_line").eq(index).find("[name='childAge']").hide().slice(0,$(this).val()).show();
		});
		
		$("[name='childAge']").ybSelect({ dataSource:age, height : 200 });
								
		/* 기본 성인 2명 선택 */
		$("#adultPerson .selectIn .list li:eq(1)").trigger("click");
		/* 아동 나이 선택 숨김 */
		$(".select:eq(2), .select:eq(3)" ,"#hotelTab .in.hotel_line").hide();				
		/* 기본 체크인 날짜 파라미터 */
		$("#hotelForm #CheckIn").val( getPlusToday(0,"dot").replace( /\./g ,"-") );
		
		$("#hotelTab .tf_search").val('')
		
		var checkInCal = 
			$("#hotelTab .insert_calendar:eq(0)").ybDatePicker({
                viewMonthCount : 2,
                to : $("#hotelTab .insert_calendar:eq(1)"),
                isStatusInfoBar : true,
                enableAutoPosition : false,
                isFillDefaultDate : true,
                allowSelectPriorToday : false,
                onDateSelected : function(date){ 
                	event.preventDefault();            		                	
            		$("#hotelForm #CheckIn").val( $.ybDate.getDateString(date) );
            	}
            }).data('ybDatePicker');
		checkInCal.setValue(getPlusToday(1))
		checkInCal.setMinDate(getPlusToday(1));
				
		$("#hotelTab .insert_calendar:eq(1)").ybDatePicker({
			viewMonthCount : 2,
            from : $("#hotelTab .insert_calendar:eq(0)"),
            isFillDefaultDate : false,
       		enableAutoPosition : false,
            onDateSelected : function(date){ 
            	event.preventDefault();
            	$("#hotelForm #CheckOut").val( $.ybDate.getDateString(date)  );
        	}
		}).data('ybDatePicker').setMinDate(getPlusToday(1));
		
		$("#hotelTab .tf_search").on("keyup",function(){
			 	var keyIn = $(this).val();
				var keySize = keyIn.length;				
				if( keySize > 0 ){					
					$.ajax({
				        url: "/main/HotelSearchKeyword.ajax",
				        timeout : 0,
				        data : { htlCityNm : keyIn },
				        beforeSend : function(xhr) {  xhr.setRequestHeader("Accept", "application/json"); },
				        success:function(data){
				        	var hotelList = JSON.parse(data.hotelKeywordList).d;				        	
				        	var hotelArr =
							        	hotelList.reduce(function(acc, item, index, array){
							        		var arr = item.split("|");	        		
							        		if( arr[0] === "C" )  acc = acc.concat( { type : arr[0], CityCode : arr[4], name : arr[5]+". "+arr[2] } );	        		
							        		if( arr[0] === "A" )  acc = acc.concat( { type : arr[0], CityCode : arr[4], name : arr[8]+". "+arr[5] } );	        		
							        		if( arr[0] === "H" )  acc = acc.concat( { type : arr[0], CityCode : arr[4], name : arr[11]+". "+arr[5] } );	        		
							        		return acc;
							        	},[])
							
							if( hotelArr.length > 0 ){
								var $div = $("<div>",{ "class" : "list_auto_search" });
								$("<ul>").append(
									hotelArr.map( function(item){
										var $li  = $("<li>");
										return $li.append( $("<a>",{ "href" : "#", "text" : item.name }).data("item", item ) )
									})		
								).appendTo($div);
								
								$( "a" ,$div ).on("click",function(){
									var item = $(this).data("item");									
									$("#hotelForm #CityCode").val( item.CityCode );
									$("#hotelTab .tf_search").val( item.name );
									$("#hotelKeyword").empty();
									$("#hotelForm #CityCode").data("item", item);
								});
								
								$("#hotelKeyword").empty().append( $div );
							}	        	
				        },
				        error:function(jqXHR, textStatus, errorThrown){}
				    });					
				}			 	
		});
		
		$("#hotelTab .tf_search").on("click",function(){ $(this).trigger('keyup'); })
		
		/* 검색하기 */
		$("#hotelTab .btn_cof.cfrm").on( "click", function(){
			var obj = $("#hotelForm");
			 			
			if( $( "#CityCode" , obj ).val().length === 0 ){ alert('여행지 또는 호텔명을 입력하세요.'); return; }			
			if( $( "#CheckIn" , obj ).val().length === 0 ){ alert('체크인 날짜를 입력하세요.'); return; }			
			if( $( "#CheckOut" , obj ).val().length === 0 ){ alert('체크아웃 날짜를 입력하세요.'); return; }
			
			var item = $("#CityCode" , obj ).data("item");
			var hotelName =  item.type === 'H' ? "&HotelName="+item.name : "";
			var roomCnt = $("#RoomCnt" , obj ).val();						
			var paxInfo = $.makeArray( $("#hotelTab .in.hotel_line").slice(0,roomCnt) ).reduce(function(acc, item, index, array){
								var adult 	= $("#adultPerson",item).data("ybSelect").getValue();
								var child 	= $("#childPerson",item).data("ybSelect").getValue();
								var age		= $.makeArray( $("[name='childAge']",item).slice(0,child) ).reduce(function(acc, item, index, array){
										 			return acc = acc.concat( $(item).data("ybSelect").getValue() )
										  	  },[]).join("|")
								return acc = acc.concat( adult+"^"+child+"^"+age );					
						  },[]).join("@");
			
			/* 히스토리 생성 */											
			setStorage('quickSearchHotelHis',{
					hotelInfo 		:	item
					,checkIn		:	$("#CheckIn" , obj ).val()
					,checkOut		:	$("#CheckOut" , obj ).val()
					,roomCnt		:	$("#RoomCnt" , obj ).val()					
					,paxInfo		:	paxInfo				
			});
			
		    
			
			location.href= 'https://hotel.ybtour.co.kr/Hotel/Int/Avail/List.aspx?'+$("#hotelForm").serialize()+"&PaxInfo="+paxInfo+hotelName;
			
		});
	}
		
	
	
	/****************호텔 END***********************************/
	
	//여행탭 초기세팅
	function travelTapViewInit(){
		
		//달력 초기화, 날짜 선택시 월선택 박스 초기화
		var ybTrvDt = $('#travelCalendarPiker').ybDatePicker({
					    		viewMonthCount : 2,
					    		enableAutoPosition : false,
					    		onDateSelected : function(date, data){
					    			event.preventDefault();
					    			var yyyy = date.getFullYear().toString();
					    		    var mm = (date.getMonth() + 1).toString();
					    		    var dd = date.getDate().toString();    		 
					    		     $("#departDate").val( yyyy + (mm[1] ? mm : '0'+mm[0]) + (dd[1] ? dd : '0'+dd[0])  );
					    		     $("#departMonth").val("")
					    		     $("#deparDueDate .selectIn .list li:eq(0)").trigger("click");
					    		}
		    			}).data('ybDatePicker');
		//오늘부터 선택가능한 달력으로 세팅
		ybTrvDt.setMinDate(getPlusToday(0));
		
		//여행탭 히스토리 태그 생성
		var travelStorage = localStorage.getItem('quickSearchTravelHis');
		if( null != travelStorage ){
			var $fragment = $(document.createDocumentFragment());
			
			$fragment.append(			
				JSON.parse(travelStorage).map( function(item,idx){
					return $("<div>",{"class":"result"})
								.append( $("<span>",{ "text": item.historyNm }).data("item",item) )								
								.append( $("<button>",{ "type":"button", "class":"btn_close", "text":"검색 결과 닫기" }).data("index",item.index) )
				})					
			);
			
			//검색 히스토리 태그 삭제 이밴트 등록
			$( ".btn_close", $fragment ).on( "click", function(){				
				var arr = JSON.parse( localStorage.getItem('quickSearchTravelHis') );
				var index = $(this).data("index");
				localStorage.setItem('quickSearchTravelHis', JSON.stringify( arr.filter( function( item ){ return item.index != index }) ) );
				$(this).parent().remove();				
			});
			
			//검색 히스토리 태그 이밴트 등록
			$( "span", $fragment ).on( "click", function(){				
				var item = $(this).data("item");				
				$("#cityArea").val( item.query );
				$("#travQuery").val( item.query );					
				$("#cityList").val( item.cityList );
				item.departMonth.length > 0 &&	$("#deparDueDate .list button[value='"+item.departMonth+"']").trigger("click");				
				
				if( item.departDate.length > 0 ){					
					ybTrvDt.setValue( item.travelCalendarPiker );						
					$("#departDate").val( item.departDate );
					$("#deparDueDate .list button:eq(0)").trigger("click");
				}
				$("#citySearch").trigger("click");
			});
			
			$("#travSearchHistory").append( $fragment );				
		}
		
		/* 추천도시 생성, 이벤트 등록 */
		ajax("/main/selectFastSearch.ajax").done(function(data){						
			if( null != data){					
				var $fragment 	= 	$(document.createDocumentFragment());
				var $boxLink 	= 	$("<p>",{ "class":"box_link"});
				var recoCity 	=	data.recomnandCity;
				$fragment.append( $("<strong>",{ "class" : "tit", "text" : recoCity[0].grpNm }) );										
				$boxLink.append( 
					recoCity.map(function(item){
						return $("<a>", { "href" : "#", "text": item.cityKorNm }).data( "item", { cityCd : item.cityCd, cityKorNm : item.cityKorNm })
					})			
				);					
				$("a", $boxLink ).on( "click", function(){
					var item = $(this).data("item");
					$("#cityArea").val( item.cityKorNm );
					$("#travQuery").val( item.cityKorNm );					
					$("#cityList").val( item.cityKorNm );
				});					
				$("#travelRecommend").empty().append( $fragment.append( $boxLink ) );					
			}				
		});
		/* 여행지 입력 자동완성 키워드, 이벤트 등록 */
		ajax("/main/travelSearchKeyword.ajax").done(function(data){
			if( null != data){
				var travelKeywordList = data.travelKeywordList;				
				var filterData;
				//키 입력시
				$("#cityArea").on( "keyup", function(){
					var keyIn = $(this).val();
					var keySize = keyIn.length;
					$("#cityKeyword").empty();						
					filterData = travelKeywordList.filter(function(item){
									var rtn = false;
									if( keySize > 0 && item.cityKorNm.indexOf( keyIn ) >= 0 ) rtn = true;
									return rtn;  
								});						
					if( filterData.length > 0 ){							
						var $fragment 	= 	$(document.createDocumentFragment());
						var $div = $("<div>",{"class":"list_auto_search"});
						var $ul = $("<ul>");
						$ul.append( filterData.map(function(item){ return $("<li>").append( $("<a>",{"href":"#","text":item.cityKorNm}).data("item", item ) ) }) );
						
						$( "a" ,$ul ).on("click",function(){
							var item = $(this).data("item");
							$("#travQuery, #cityList").val( item.cityKorNm );
							$("#cityKeyword").empty();
						});
						
						$("#cityKeyword").append( $div.append( $ul ) );
					}
				});				
				$("#cityArea").on("click",function(){ $(this).trigger('keyup'); })
			}
		});
		
		
		
	}
	
	//여행탭 이벤트 등록
	function travelTapEventInit(){
		
		var travelPop = $.ybPopup({
			title : '지역검색',
			type : 'large',
			contents : {url : "/main/fragment/findCity.yb" }
		});
		
		//도시검색 팝업
		$("#cityPopup").on("click", function(){ travelPop.open(); });
		
		//여행탭 출발예정일 월선택, 예정일 선택시 달력입력란 초기화
		$("#deparDueDate").ybSelect({ height : 200 })
				.data('ybSelect')
				._element
				.find(".selectIn .list li")
				.on("click",function(){
					if( $(this).index() != 0 ){
						$("#departMonth").val( $("button",this).val() );
						$("#departDate").val("");
						$("#travelCalendarPiker").val("");
					}else{
						$("#departMonth").val("");
					} 
				});
		
		//여행탭 검색하기
		$("#citySearch").on("click",function(){			
			var msg = "";			
			if($('#cityArea').val().length == 0){
				msg = "여행지를 입력하세요.";
			}/* else if( $("#departMonth").val().length == 0 && $("#departDate").val().length == 0 ){
				msg = "출발 예정일을 선택해주세요.";
			} */
			
			if( msg.length > 0 ){
				alert( msg );
				return false;
			}				
			
			setStorage( 'quickSearchTravelHis' , {
				historyNm : $("#travQuery").val()+", "+$("#departMonth").val()+$("#travelCalendarPiker").val(),	
				query : $("#travQuery").val(),				
				departMonth : $("#departMonth").val(),
				departDate : $("#departDate").val(),
				travelCalendarPiker : $("#travelCalendarPiker").val(),
				cityList : $("#cityList").val()
			})
			
			
			var searchDate = $("#departMonth").val().length > 0 ? "&departMonth="+$("#departMonth").val().replace( /[가-힣\s/]/g,"" ) : "&departDate="+$("#departDate").val();
			location.href="/search/searchPdt.yb"
						+"?query="+$("#travQuery").val()
						+searchDate
						+"&cityList="+$("#cityList").val();							
		});
		
	}
	
	
	
	
	function ajax(url,method){
		var deferred = $.Deferred();
		$.ajax({
	        url: url,
	        timeout : 0,
	        beforeSend : function(xhr) {
	            xhr.setRequestHeader("Accept", "application/json");
	        },
	        success:function(data){
	        	deferred.resolve(data);
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            
	        }
	    });
		return deferred.promise();			
	}
	
	/* 항공권 공통 유효성 체크 */
	function airValidate(){
		
		var $obj = $("#airStartArrivalCd");
		var adtcount = Number( $("#adtcount").val() );
		var chdcount = Number( $("#chdcount").val() );
		var infcount = Number( $("#infcount").val() );
		
		if( !$.makeArray($("[name='depctycd']",$obj)).every(function(item,idx){ return ( $(item).val().length === 0 ) ? false : true; }) ){
			alert( "출발지를 입력하세요." );
			return false;
		}				
		
		if( !$.makeArray($("[name='arrctycd']",$obj)).every(function(item,idx){ return ( $(item).val().length === 0 ) ? false : true; }) ){
			alert( "도착지를 입력하세요." );
			return false;
		}				
		
		if( !$.makeArray($("[name='depdt']", $obj)).every(function(item,idx){ return ( $(item).val().length === 0 ) ? false : true; }) ){
			alert( "가는날을 입력하세요." );
			return false;
		}
		
		if( (adtcount + chdcount + infcount) > 9 ){
			alert("총 9명까지 예약 가능합니다.");
			return false;
		}else if(adtcount <  infcount){
			alert("성인 1인당 유아 1인만 예약하실 수 있으며, "
					+"유아 인원이 초과하는 경우 아동으로 예약하셔야 합니다. 성인 항공권 예약 후 담당자에게 문의하시기 바랍니다.");
			return false;
		}
		
		return true;
	}
	
	/*히스토리 스토리지 생성 */		
	function setStorage( storageName , data ){
		var getStorage = JSON.parse( localStorage.getItem(storageName) );							
		if( null != getStorage  ){
			/* 최근 검색 항목이 가장 위로 오도록 */
			$.extend( data, { index : getStorage.length } );			
			localStorage.setItem( storageName , JSON.stringify( [data].concat( getStorage ) ) ); 
		}else{
			$.extend( data, { index : 0 } );
			localStorage.setItem( storageName , JSON.stringify([data]) );
		}			
	}
	
	//현재 + day 가져오기
	function getPlusToday(num,dot){
		var today = new Date();
		var dd = today.getDate()+num;
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();

		if(dd<10) {
		    dd='0'+dd
		}

		if(mm<10) {
		    mm='0'+mm
		}

		if(dot === "dot"){
		return yyyy+'.'+mm+'.'+dd;
		}else{
		return yyyy+mm+dd;
		}
	}
	
	function searchAirTicket( parameter ){
		
		var path = $("#airForm #domintgubun").val() == 'D' ? "https://air.ybtour.co.kr/air/b2c/AIR/DOM/AIRDOMSCH0100100090.k1?" : "https://air.ybtour.co.kr/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?";		
		var url = path+parameter+"&KSESID=air:b2c:SELK138AN:AA024::00";
		location.href = encodeURI(url);
	}
	
</script>            







</div> <!-- 빠른검색 -->
	<div>




































	<div class="main_section" id="mainSection" style="display: none;">
            <h2 class="tit_global">고객님을 위한 맞춤 상품</h2>	
            <div class="cust_area">               
                <ul class="pdt_catalog main_slide1" id="mainSectionSlide"></ul>
            </div>
	</div>	
<script>

	function mainSectionInit(){
		
		/* 상품 썸네일 템플릿 */
		var $custPrdt = $("#prdtThumbList #custPrdt");
		
		/* parameter */
		this.data = {}
		
		/* 30일전 날짜 생성 */
		this.getPrevDate = function(){			
			var date = new Date();
			var today = new Date(Date.parse(date) + -30 * 1000 * 60 * 60 * 24);
			var yyyy = today.getFullYear();
	   		var mm = today.getMonth()+1;
	   		var dd = today.getDate();	   		
	   		if(mm<10) mm = "0" + mm;    			
    		if(dd<10) dd = "0" + dd;    		
	   		
	   		return String(yyyy)+String(mm)+String(dd);			
		}
		
		/* ajax */
		this.doSearch = function(){			
			$.ajax({
		        url: "/main/getMainSectionList.ajax",
		        timeout : 0,
		        data : this.data,
		        method : "POST",
		        beforeSend : function(xhr) {
		            xhr.setRequestHeader("Accept", "application/json");
		        },
		        success:function(data){
		        	if( data.recommandCode != null && data.recommandCode.length > 0 ){
						$("#mainSectionSlide").append(
								data.recommandCode.map( function( item,idx ){
									var $temp =  $custPrdt.clone().html();							
									$temp = $temp.replace("@webLinkUrl", item.webLinkUrl)
													.replace("@imageThumb", prdtTag(item))
													.replace("@imgPath", item.imgPath)
													.replace("@goodsNm", item.goodsNm)
													.replace("@adtPrice", $.fmtNumber(item.adtPrice) );
									return $temp;
								})		
						)
						
						$("#mainSection").css('margin-top','-80px').show();
						
						$("#mainSectionSlide").bxSlider({
				            infiniteLoop:false,
				            pager: false,
				            hideControlOnEnd:true,
				            minSlides: 1,
				            maxSlides: 4,
				            moveSlides: 1,
				            slideWidth: 1200
				        });
					}
		        },
		        error:function(jqXHR, textStatus, errorThrown){}
		    });			
		}
				
		var loginYN = "";
		var prevDate = this.getPrevDate();		
		var eventHistory = JSON.parse( localStorage.getItem('ybEventList') ) === null ? [] : JSON.parse( localStorage.getItem('ybEventList') );
		var goodsHistory = JSON.parse( localStorage.getItem('ybGoodsList') ) === null ? [] : JSON.parse( localStorage.getItem('ybGoodsList') );		
		var historyList  = goodsHistory.concat( eventHistory );
		
		/* 30일 이내 데이터중 가장 최근 데이터 */
		var lately = historyList.filter(function(item){ return item.saveDate >= prevDate }).reduce(function(acc, item, index, array){ 
						if(index === 0) acc = item;
						/* 가장 최근 날짜중 가장 마지막으로 본 데이터 */
						return acc = (acc.saveDate < item.saveDate || acc.saveDate == item.saveDate) ? acc = item : acc;						
					},{}) 
		
		/* 행사 건일 경우 dspSid가 없어서 추가( 상품쪽 개선 이후에는 필요없음 ybEvnetList에 dspSid 항목을 추가 예정 ) */		
		if(lately.evUrl !== undefined) lately["dspSid"] = getQueryString( lately.evUrl ).dspSid;							
		
		/*
			1.로그인/미로그인 여부와 관계없이 조회이력이 있는경우 추천상품을 보여줌
			2.로그인일 경우 예약정보가 있는경우 예약정보 기반 추천상품을 보여준다 예약정보가 없는경우 추천상품을 보여준다
			3.미로그인일 경우 아무런 이력이 없다면 아무것도 보여주지 않는다		
		*/
		
		/* 로그인 여부와 관계없이 상품 조회 이력이 있는경우  */
		if( Object.keys( lately ).length > 0 ){ /* 이력 있는 경우 */
				this.data = lately;
				this.doSearch();
		} else {			
			if( loginYN === 'true' ){ /* 로그인 한 상태 */
				this.data = {};
				this.doSearch();
			}
		}	
	}
	
	

</script>
            
            	
        
</div><!-- 고객님을 위한 맞춤 상품 -->
	<div>




































	<div class="main_wide">            
	        	<h2 class="tit_global">추천상품</h2>
	            <div class="recom_area">                
	                <ul class="tab_main_category" id="recommendPRDTtab">
	                    <li class="on">	<a href="#">출발임박 특가</a>		</li>
	                    <li>			<a href="#">조기예약 특가</a>	</li>
	                </ul>
	                <div class="cont_tabs bg_gray" id="recommendPRDT">
	                    <div class="cont">
	                        <ul class="tab_loc_category">	                        	
	                        	
	                        		<li class="on"><a href="#" data-cdId="10">유럽</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="60">동남아</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="75">홍콩/대만</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="80">일본</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="40">괌/사이판</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="30">호주/뉴질랜드</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="20">미국/캐나다/중남미</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="95">국내</a></li>
	                        	
	                        		<li class=""><a href="#" data-cdId="99">크루즈/트레킹</a></li>
	                        	
	                        </ul>
	                        <div class="btn_right">
	                        	<a href="/promotion/recommendStartDecide.yb" class="link_line">더보기</a>
	                  		</div>
	                        <div class="sub_main_slide">
	                            <div class="slide_block_full">
	                                <ul class="pdt_catalog">
		                                 						
							                    <li>
							                        <a href="/product/localList.yb?menu=PKG&dspSid=AAAG000&goodsCd=EEP1154&selectDate=202002">
							                            <span class="thumb_pic">
							                                 <span class='tag'><span class='tag_square pre'><span>프리미엄</span></span><span class='tag_square pkg'><span>해외 패키지</span></span></span>
							                                 <img src="https://dimgcdn.ybtour.co.kr/TN/99/99897c62991b42e78a3c3fad024dce69.tn.410x280.jpg" alt="상품 이미지" onError="YBUtil.noImage(this)">
							                  			</span>
							                            <div class="pdt_list_info">
							                                <h5 class="tit_list_block">
																[품격에 편안함을 더하다_비지니스탑승(A380)/전일정1급호텔] 동유럽 4국9일 [OZ]
							                                </h5>
							                                <span class="list_date month">
																	02.28, 02.29, 03.07
							                                </span>
							                                <span class="list_price">
							                                	<em><strong>3,199,000</strong> 원~</em>
							                                </span>
							                            </div>
							                        </a>
							                    </li>
							   									
							                    <li>
							                        <a href="/product/localList.yb?menu=PKG&dspSid=AAAC000&goodsCd=EMP1174&selectDate=202002">
							                            <span class="thumb_pic">
							                                 <span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
							                                 <img src="https://dimgcdn.ybtour.co.kr/TN/92/92c81898a86fc5a52b4f25f4830d7bcf.tn.410x280.jpg" alt="상품 이미지" onError="YBUtil.noImage(this)">
							                  			</span>
							                            <div class="pdt_list_info">
							                                <h5 class="tit_list_block">
																가우디가 창조한 환상의 스페인 일주 8일 AY
							                                </h5>
							                                <span class="list_date month">
																	02.25
							                                </span>
							                                <span class="list_price">
							                                	<em><strong>1,399,000</strong> 원~</em>
							                                </span>
							                            </div>
							                        </a>
							                    </li>
							   									
							                    <li>
							                        <a href="/product/localList.yb?menu=PKG&dspSid=AAAD000&goodsCd=ETP1059&selectDate=202002">
							                            <span class="thumb_pic">
							                                 <span class='tag'><span class='tag_square pre'><span>프리미엄</span></span><span class='tag_square pkg'><span>해외 패키지</span></span></span>
							                                 <img src="https://dimgcdn.ybtour.co.kr/TN/05/0527657a56f9ce9c3384396d9660a901.tn.410x280.jpg" alt="상품 이미지" onError="YBUtil.noImage(this)">
							                  			</span>
							                            <div class="pdt_list_info">
							                                <h5 class="tit_list_block">
																[비즈니스]OZ★BEST[항공2회+전일특급(힐튼1박)+4대옵션+VIP버스+9대특식]터키9일
							                                </h5>
							                                <span class="list_date month">
																	02.22, 02.24
							                                </span>
							                                <span class="list_price">
							                                	<em><strong>2,299,000</strong> 원~</em>
							                                </span>
							                            </div>
							                        </a>
							                    </li>
							   									
							                    <li>
							                        <a href="/product/localList.yb?menu=PKG&dspSid=AAAA000&goodsCd=EWP1007&selectDate=202003">
							                            <span class="thumb_pic">
							                                 <span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
							                                 <img src="https://dimgcdn.ybtour.co.kr/TN/e1/e1796d23bb2c6a0eb7801f3852976fdf.tn.410x280.jpg" alt="상품 이미지" onError="YBUtil.noImage(this)">
							                  			</span>
							                            <div class="pdt_list_info">
							                                <h5 class="tit_list_block">
																[한폭의그림 이태리] 친퀘테레/오르비에또+로마아울렛포함 이태리완전일주 8일
							                                </h5>
							                                <span class="list_date month">
																	03.01
							                                </span>
							                                <span class="list_price">
							                                	<em><strong>1,299,000</strong> 원~</em>
							                                </span>
							                            </div>
							                        </a>
							                    </li>
							   			   
	                                </ul>
	                            </div>	                           
	                        </div>
	                    </div>
	                    <div class="cont" style="display: none">
	                        <ul class="tab_loc_category"></ul>
	                        <div class="btn_right">	                        	
	                        	<a href="/promotion/recommendEarlyBird.yb" class="link_line">더보기</a>
	                  		</div>                      
	                        <div class="sub_main_slide">                        	
	                            <div class="slide_block_full">
	                                <ul class="pdt_catalog"></ul>
	                            </div>	                            
	                        </div>
	                    </div>
	                </div>
	            </div>
        </div>
<script>         	

	function mainRecommendInit(){
		
   		$("#recommendPRDT .tab_loc_category li > a")
   				.each(function( idx,item ){ $(this).data('cdId', item.dataset.cdid); })
   				.on("click",function(){
		   			event.preventDefault();
		   			subTabSearch( { cdId : $(this).data('cdId'), eventType : "PRC" }, 0 );		   					   			
		   			var aIdx = $("#recommendPRDT .tab_loc_category").eq( 0 ).find('a').index( this );
   					$("#recommendPRDT .tab_loc_category").eq( 0 ).find('li').removeClass('on').find('a').eq( aIdx ).parent().addClass('on')
		   		})
   	
   		/* $("#recommendPRDT > div:eq(0) .pdt_catalog").bxSlider({
            captions: false,
            pager: false,
            infiniteLoop:false,
            hideControlOnEnd:true,
            minSlides: 4,
            maxSlides: 4,
            moveSlides: 1,
            slideWidth: 1200
		}); */
   		
   		$("#recommendPRDTtab > li").on("click",function(){
   			event.preventDefault();	
   			var index 	= $(this).index();
   			var type 	= (index === 0) ? "PRC" : "EAB";    			
   			var tabContent = $("#recommendPRDT");
   			
   			ajax("/main/recommendMoveTab.ajax",{ eventType : type }, "POST").done($.proxy(function(data){   				
   				/* 상품 */
   				$("#recommendPRDT .pdt_catalog").eq(index).empty().append( PrdtPaint( data ) );
   				
   				var $fragment = $(document.createDocumentFragment());
   				if(data.areaList){
	   				$fragment.append(
						data.areaList.map( function( item,idx ){   						
							var $li =  idx === 0 ? $( "<li>",{ "class" : "on" }) : $("<li>") 
	   						var $a  = $("<a>",{ "href" : "#", "text" : item.CDNM }).data( 'cdId', item.CDID );
	   						return $li.append( $a );   						
	   					})
	   				);
   				}
   				
   				$("a", $fragment).on("click",function(){ 
   					subTabSearch( { cdId : $(this).data('cdId'), eventType : type },index );   					
   					var aIdx = $("#recommendPRDT .tab_loc_category").eq( index ).find('a').index( this );
   					$("#recommendPRDT .tab_loc_category").eq( index ).find('li').removeClass('on').find('a').eq( aIdx ).parent().addClass('on')
   					
   				});
   				
   				$("#recommendPRDT .tab_loc_category").eq( index ).empty().append( $fragment );
   				
   				$(this).parent().find("> li").removeClass('on').eq( index ).addClass("on");
   				
   	   			$( "> div" ,tabContent ).hide()
   					   					.eq(index)
   					   					.show()
   					   					.find(".pdt_catalog")
   					   					/* .bxSlider({
   							                captions: false,
   							                pager: false,
   							                infiniteLoop:false,
   							                hideControlOnEnd:true,
   							                minSlides: 4,
   							                maxSlides: 4,
   							                moveSlides: 1,
   							                slideWidth: 1200
   					            		}) */;
   			},this));
   		});
   		
   	
   		function subTabSearch( data, index ){   			
   			ajax("/main/recommendMoveSubTab.ajax", data , "POST").done($.proxy(function(data){   				
   				$("#recommendPRDT .pdt_catalog").eq(index).empty().append( PrdtPaint( data ) );
			},this));	
   		}
   		
   		function PrdtPaint( data ){
   			if( !data.tgtList ) return;   			
   			var $fragment = $(document.createDocumentFragment());
   	   		/* 상품 썸네일 템플릿 */
   			var $prdtTemplate = $("#prdtThumbList > #prdtType1");
   			   	   		
   			$fragment.append(
   					data.tgtList.map( function( item,idx ){   						
   						return $prdtTemplate.clone().html().replace("@webLinkUrl", item.WEBLINKURL+"&selectDate="+item.OUTSTARTDT.substring(0,6))
		   										.replace("@imageThumb", prdtTag( { goodsTp : item.GOODSTP, goodsBrandCd : item.GOODSBRANDCD, goodTravelYn : item.GOODTRAVELYN } ))
		   										.replace("@imgPath", item.IMGTHUM3)
						   						.replace("@goodsNm", item.GOODSNM)
						   						.replace("@startYm", item.STARTYM)
						   						.replace("@adtPrice", $.fmtNumber(item.MINPRICE));
   					})		
   			)
   			return $fragment;
   		}
   		
   		
   		function ajax( url, data, method ){   			
   			var deferred = $.Deferred();
			$.ajax({
		        url: url,
		        timeout : 0,
		        data : data,
		        method : method,
		        beforeSend : function(xhr) {
		            xhr.setRequestHeader("Accept", "application/json");
		        },
		        success:function(data){
		        	deferred.resolve(data);
		        },
		        error:function(jqXHR, textStatus, errorThrown){
		            
		        }
		    });
			return deferred.promise();
			
   		}
   		
	}
</script>
        
</div><!-- 추천상품 --> 
	<div>




































	<div class="main_section" id="themaSection">
        	 <h2 class="tit_global">테마여행</h2>
        	 <div>
        	 	 <ul class="tab_main_category">
                                        	
                    	<li class="on"><a href="#" data-typeCd="">여행을 가볍게</a></li>
                                        	
                    	<li class=""><a href="#" data-typeCd="">2020 허니문페스타</a></li>
                                        	
                    	<li class=""><a href="#" data-typeCd="">추천 겨울여행지</a></li>
                                        	
                    	<li class=""><a href="#" data-typeCd="">나를 찾아 떠나는 여행</a></li>
                    
                 </ul>
        	 	 <div class="cont_tabs">        	 	 	
        	 	 		        	 	 		
        	 	 		        	 	 			
        	 	 			
						
														
							
							<!-- 2T  -->
								<div class="cont" style="display:  block">
									<a href="javascript:;" class="thema_black">	
										
											
																								
													 <div class="str_cont" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014970' );"> 
													
														<span>
															<p class="tit">영상으로 보는<br>크로아티아</p>
															<p class="stit">더 쉽고 가볍게<br>떠나요!<br></p>														
															 <button class="btn_cof_g cfrm" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014970' );">GO</button> 
														</span>
													</div>
												
												
											
										
											
												
												
													<div class="thumb_right">
														<img src="//cimgcdn.ybtour.co.kr/attachHome/HF/DM/202002/202002141556096591805001001032.jpg" alt="0" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014970' );">
													</div>
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
									</a>				
								</div>
							
							
							
						        	 	 			
        	 	 			
						
														
							
							<!-- 2T  -->
								<div class="cont" style="display:  none">
									<a href="javascript:;" class="thema_black">	
										
											
												
												
											
										
											
												
												
											
										
											
																								
													 <div class="str_cont" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014894&subDspMenu=PKG' );"> 
													
														<span>
															<p class="tit">2020년<br>허니문 페스타</p>
															<p class="stit">예비부부를 위한<br>신혼여행 대축제<br></p>														
															 <button class="btn_cof_g cfrm" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014894&subDspMenu=PKG' );">바로가기</button> 
														</span>
													</div>
												
												
											
										
											
												
												
													<div class="thumb_right">
														<img src="//cimgcdn.ybtour.co.kr/attachHome/HF/DM/202002/202002101040174041708011001010.jpg" alt="ㅇ" onclick="movePage('SELF',  '/promotion/promotionDetail.yb?mstNo=20000014894&subDspMenu=PKG' );">
													</div>
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
											
												
												
											
										
									</a>				
								</div>
							
							
							
						        	 	 			
        	 	 			
						
														
							
							
							
								<div class="cont" style="display:  none">
									<ul class="keyword_list">
																					
											
																					
											
																					
											
																					
											
																					
											
												<li data-mainThemaSeq="10001340" data-sectionSeq="3">
													<a href="#">#추위를피해서_동남아</a>
												</li>
											
																					
											
												<li data-mainThemaSeq="10001340" data-sectionSeq="4">
													<a href="#">#지금이최적기_대양주</a>
												</li>
											
																					
											
												<li data-mainThemaSeq="10001340" data-sectionSeq="5">
													<a href="#">#온천여행</a>
												</li>
											
																					
											
												<li data-mainThemaSeq="10001340" data-sectionSeq="6">
													<a href="#">#겨울방학 추천여행</a>
												</li>
											
																					
											
																					
											
																					
											
										
									</ul>
									<ul class="pdt_catalog them_list"></ul>
								</div>							
							
						        	 	 			
        	 	 			
						
														
							
							
							
								<div class="cont" style="display:  none">
									<ul class="keyword_list">
																					
											
																					
											
																					
											
																					
											
																					
											
																					
											
																					
											
																					
											
																					
											
												<li data-mainThemaSeq="10001301" data-sectionSeq="1">
													<a href="#">#인도/네팔/부탄</a>
												</li>
											
																					
											
												<li data-mainThemaSeq="10001301" data-sectionSeq="2">
													<a href="#">#미얀마</a>
												</li>
											
																					
											
												<li data-mainThemaSeq="10001301" data-sectionSeq="3">
													<a href="#">#트레킹</a>
												</li>
											
										
									</ul>
									<ul class="pdt_catalog them_list"></ul>
								</div>							
							
						
						
					</div>        	 	 
             	</div>
        	</div>
        
<script>
	function mainThemaSectionInit(){
		
		/* 슬라이드 초기화 */
		$("#themaSection .cont_tabs .cont").eq(0).find('ul.pdt_catalog').bxSlider({
            captions: false,
            pager: false,
            infiniteLoop:false,
            hideControlOnEnd:true,
            minSlides: 4,
            maxSlides: 4,
            moveSlides: 1,
            slideWidth: 1200
        });
		/* 키워드 테마형 이벤트 등록 */
		$("#themaSection .cont_tabs .cont .keyword_list li").each(function(idx,item){			
			$(item).data('item', {  themaSeq : item.dataset.mainthemaseq, secSeq : item.dataset.sectionseq });
		}).on('click', function(){			
			var target = $(this).parents('.cont');				
			$.ajax({
		        url: "/main/keyGoodsList.ajax",
		        timeout : 0,
		        method : "POST",
		        data : $(this).data('item'),
		        beforeSend : function(xhr) {  xhr.setRequestHeader("Accept", "application/json"); },
		        success:function(data){
		    		var $prdtTemplate = $("#prdtThumbList > #prdtType1");
   			   	   	var $prdtCatalog = $("<ul>",{ "class" : "pdt_catalog them_list" });
   			   	   	
   			   		$prdtCatalog.append(
			   			data.goodsList.map( function( item,idx ){
	   						var $temp = $prdtTemplate.clone().html();							
	   						$temp = $temp.replace("@webLinkUrl", null == item.webLinkUrl ? '#' : item.webLinkUrl )
				   						.replace("@imageThumb", prdtTag(item) )
				   						.replace("@imgPath", null == item.goodImgPath ? '' : item.goodImgPath)
				   						.replace("@goodsNm", item.goodsNM)
				   						.replace("@startYm", item.startDt ? $.ybDate.getDateString(item.startDt, {separator : '.'}) : "")
				   						.replace("@adtPrice",  null == item.adtPrice ? '' : $.fmtNumber(item.adtPrice) );
	   						return $temp;
	   					})
		   			)
		   			
		   			target.find('> div:eq(0)').remove().parent();
		   			target.append( $prdtCatalog );
   			   		$prdtCatalog.bxSlider({
			            captions: false,
			            pager: false,
			            infiniteLoop:false,
			            hideControlOnEnd:true,
			            minSlides: 4,
			            maxSlides: 4,
			            moveSlides: 1,
			            slideWidth: 1200
		            });
		        },	
		        error:function(jqXHR, textStatus, errorThrown){}
		    });
			$(this).parent().find( 'li' ).removeClass('on').eq( $(this).index() ).addClass('on');
		})
		
		/* 탭 이벤트 */
		$("#themaSection ul.tab_main_category > li").on("click",function(){			
			var index = $(this).index();				 
			//탭 이벤트
			$(this).parent().find("> li").removeClass('on').eq( index ).addClass("on");
			var contObj = $("#themaSection .cont_tabs .cont").hide().eq( index ); 
				
			if( $('> ul',contObj).hasClass('keyword_list') ){				
				contObj.show().find("ul li:eq(0)").trigger('click');
			} else{
				contObj.show().find('ul.pdt_catalog').bxSlider({
						            captions: false,
						            pager: false,
						            infiniteLoop:false,
						            hideControlOnEnd:true,
						            minSlides: 4,
						            maxSlides: 4,
						            moveSlides: 1,
						            slideWidth: 1200
					            }); 
			}
		});
	}	
	
	function movePage(type,url){
		if(type == null || type == ""  ){
			return false;
		}
		if(type.toLowerCase() === 'self'){
			location.href=url;
		}else{
			window.open(url,"new");
		}
	}
</script>
</div><!-- 테마여행 -->
	<div>




































		<!-- 노랑 TV -->
		<div class="main_wide bg_gray">
			<div class="main_section space">
				<div class="tv_area">
					<div class="col guide">
						<h2 class="tit_main_title">노랑 TV</h2>
						<p class="txt">생생한 영상과 함께<br>노랑TV만의<br>특별한 혜택,<br>지금 확인하세요!</p>
						<button type="button" class="btn_more" onclick="javascript:location.href='/yellowTv/yellowTvList.yb';">더보기</button>
					</div>
					
						<div id="yellTvDiv" class="tv_block">
							<a href="/yellowTv/yellowTvList.yb?ybtvSeq=1100026180">
								<div class="tv_video"><img src="https://dimgcdn.ybtour.co.kr/TN/c6/c68b6795e803b61c617455cbb22d8c55.tn.630x410.png" alt=""></div>
								<div class="tv_info">
									<p class="txt">전 일정 특급호텔로 즐기는 문화의 나라! 인도 9일</p>
									
										<em class="tit">혜택</em>
										<ul class="list_benefit">
											<li><span class="num">1.</span>아유르베다 세안 세트(1인 1개)</li>
											
											
										</ul>
									
								</div>
							</a>
						</div>
					
				</div>
			</div>
		</div>
		<!-- // 노랑 TV -->
<script>
	function mainYellowTvInit(){ }
</script>
            
            	
        
</div><!-- 노랑TV -->
	<div>




































		<div class="main_section">
            <div class="prm_area">
                <!-- 홈쇼핑 -->
                <div class="promotion_block">
                    <h2 class="tit_global">홈쇼핑 방영상품</h2>
                    <div class="btn_right">
                        <a href="/promotion/homeShopping.yb" class="link_line">더보기</a>
                    </div>
                    <div class="in">
                        
		            		<div class="hsp">
		            			<a href="/promotion/homeShoppingDetail.yb?mstNo=20000014990">
		                        <h3 class="tit_logo"><img src="//cimgcdn.ybtour.co.kr//attachErp/PB/BF/201912031707304861807020001056.png" alt="홈앤쇼핑"></h3>
		                        <em class="date emp_blue">2020.02.16 (일) 22:00 방영</em>
		                        <div class="thumb">
		                            <img src="//cimgcdn.ybtour.co.kr/attachHome/HP/HM/202002/202002131416501251412002001021.jpg" alt="미서부 완전일주+4대캐년 9/10일">
		                        </div>
		                        <p class="txt">미서부 완전일주+4대캐년 9/10일</p>
		            			</a>
		                    </div>
            			
		            		<div class="hsp">
		            			<a href="/promotion/homeShoppingDetail.yb?mstNo=20000014790">
		                        <h3 class="tit_logo"><img src="//cimgcdn.ybtour.co.kr//attachErp/PB/BF/201912031707304861807020001056.png" alt="홈앤쇼핑"></h3>
		                        <em class="date emp_blue">2020.02.02 (일) 18:20 방영</em>
		                        <div class="thumb">
		                            <img src="//cimgcdn.ybtour.co.kr/attachHome/HP/HM/202001/202001291105032361410002001040.jpg" alt="미동부 + 캐나다 완전일주 10일/11일">
		                        </div>
		                        <p class="txt">미동부 + 캐나다 완전일주 10일/11일</p>
		            			</a>
		                    </div>
            			
                    </div>
                </div>
                <!-- // 홈쇼핑 -->
                
                 <!-- 이벤트 -->
                 <div class="promotion_block">
                    <h2 class="tit_global">이벤트</h2>
                    <div class="btn_right">
                        <a href="/promotion/event.yb" class="link_line">더보기</a>
                    </div>
                    <div class="box_bnn">
                        
                        	                        		
                        		<a href="/promotion/eventDetail.yb?mstNo=20000008833" target="_self">
                        			<img src="//cimgcdn.ybtour.co.kr/attachHome/EM/EB/202002/202002031720070381410002001070.jpg" alt="제주중문면세점 빅세일!" />
                       			</a>		
                        	                        	
                        
                        	                        	
                        
                        	                        	
                        
                        <div class="bnn main_slide4" style="display: none">
	                                                	
	                        	
	                                                	
	                        		                        		
                        			<a href="/promotion/eventDetail.yb?mstNo=20000006496" target="_self">
                        				<img src="//cimgcdn.ybtour.co.kr/attachHome/EM/EB/202002/202002071051207211410002001078.jpg" alt="노랑풍선 롯데카드 최대 3만원 할인혜택" />
                        			</a>	                        		
	                        	
	                                                	
	                        		                        		
                        			<a href="https://ap.wifidosirak.com/?ybtour " target="_new">
                        				<img src="//cimgcdn.ybtour.co.kr/attachHome/EM/EB/201904/201904121131312441410002001020.jpg" alt="해외에서 데이터 고플 땐 와이파이 도시락" />
                        			</a>	                        		
	                        	
	                        
                        </div>                        
                    </div>
                </div>
                <!-- // 이벤트 -->
            </div>
        </div>
        
<script>
	function mainHomeShoppingInit(){		
           $(".main_slide4").bxSlider({
                infiniteLoop:false,
                controls:false,
                hideControlOnEnd:true,
                minSlides: 1,
                maxSlides: 1,
                moveSlides: 1,
                slideMargin: 10,
                slideWidth: 590
            }).show();
	}
</script>
            
            	
        
</div><!-- 홈쇼핑/이벤트 -->
	<div>




































	
	<!-- 고객 여행기 -->
	<div class="main_wide bg_gray">
        <div class="main_section">
            <div class="review_area">
                <div class="col guide">
                    <h2 class="tit_main_title">노랑풍선<br>고객 여행기</h2>
                    <p class="txt">'여행을 가볍게'<br>노랑풍선과 함께 한<br>여러분들의<br>즐거웠던 추억을<br>공유해 보세요!</p>
                    <button type="button" class="btn_more" onclick="location.href='/eplg/episodeList.yb'">더보기</button>
                </div>

                <!-- 후기/상품 -->
                <div class="main_slide5" style="display: none">                    
                    
	                    <div class="col box">
	                        <!-- 베스트 후기 -->
	                        <div class="col best">
								
								<div class="tit_area">
									 <em class="flag">Best 후기</em> 									
									<div class="best_info_con">
										<p class="info">패키지 > 아시아</p>
										<strong class="tit ellipsis1">“선물같았던 태국여행(방콕파타야) with.노병걸가이드님”</strong>
									</div>
								</div>
								
	                            <div class="txt_area">
	                                <div class="thumb">
	                                    
											
											
												<img src="//cimgcdn.ybtour.co.kr/attachHome/YT/TR/202002/202002141717361361712021001063.jpg"alt="여행후기 이미지">
											
										
	                                </div>
	                                <div class="txt_info">
	                                    <span class="date">2020.01.04</span>
	                                    <p>여행도 누구와, 어떤 여행을 하느냐에 따라 정말 가치가 달라지는 것 같습니다. 
노랑풍선 여행사로 여행을 다녀와서, 노병걸가이드님과, 또 우리 좋은 팀원들과 여행을 함께해서 정말 완벽했던 여행을 다녀온 것 같아 노랑풍선과 노병걸가이드님, 함께 여행했던 팀원들 모두 감사합니다. 
여행을 준비하고 있는 다른 분들께 저의 행복을 나누고 싶은 마음에 이번 여행기를 쓰게 되었습니다. 보고 미리 설레고, 미리 준비할 수 있는, 준비된 여행을 잘 다녀오시길 바랍니다.
</p>
	                                    <div class="box_link">
	                                        <a href="/eplg/episodeView.yb?travrvNo=20000022839" class="underline_link arrow">자세히 보기</a>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                        </div>
	                        <!-- // 베스트 후기 -->
	                        <!-- 상품 -->
	                        <div class="col prod">
	                            <ul class="pdt_catalog">
	                                								
										
											<li>
												<a href="/product/localList.yb?menu=PKG&dspSid=AABP000&goodsCd=ATP2131"> 
													<span class="thumb_pic">
														<span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
														<img src="https://dimgcdn.ybtour.co.kr/TN/6d/6d3dbf513a0c5c500404019e19547073.tn.410x280.jpg" alt="상품 이미지" onerror="YBUtil.noImage(this)">
													</span>
													<div class="pdt_list_info">
														<h5 class="tit_list_block">[방콕&파타야] 끝판왕! ALL포함 초특급 더자인리조트 4,5일</h5>
													</div>
												</a>
											</li>
										
																	
										
											<li>
												<a href="/product/localList.yb?menu=PKG&dspSid=AABP000&goodsCd=ATP2133"> 
													<span class="thumb_pic">
														<span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
														<img src="https://dimgcdn.ybtour.co.kr/TN/17/1737402336a408d6cec5935d7798623a.tn.410x280.jpg" alt="상품 이미지" onerror="YBUtil.noImage(this)">
													</span>
													<div class="pdt_list_info">
														<h5 class="tit_list_block">[방콕&파타야] ♬뻔한여행과는 달라달라 아로마스파 포함 4일,5일</h5>
													</div>
												</a>
											</li>
										
																	
										
																	
										
									
	                            </ul>
	                        </div>
	                        <!-- // 상품 -->
	                    </div>
                    
	                    <div class="col box">
	                        <!-- 베스트 후기 -->
	                        <div class="col best">
								
								<div class="tit_area">
									 <em class="flag">Best 후기</em> 									
									<div class="best_info_con">
										<p class="info">패키지 > 유럽</p>
										<strong class="tit ellipsis1">“자유 여행만 즐기다 처음 경험한 패키지 여행 후기!! (with 박재현 인솔자님♡)”</strong>
									</div>
								</div>
								
	                            <div class="txt_area">
	                                <div class="thumb">
	                                    
											
											
												<img src="//cimgcdn.ybtour.co.kr/attachHome/YT/TR/202002/202002141719412211712021001040.jpg"alt="여행후기 이미지">
											
										
	                                </div>
	                                <div class="txt_info">
	                                    <span class="date">2020.01.23</span>
	                                    <p>여러 핵심 국가들을 가고 싶지만 그 많은 국가의 이동경로와 도시 별 일정 짜기가 너무 어렵고 부담스러우신 분
핵심 국가들을 역사적 설명을 들으며 알차게 즐기고 싶은 분
10일 만에 핵심도시를 알찬 설명과 일주한다는 점에서 괜찮은 가성비의 투어상품</p>
	                                    <div class="box_link">
	                                        <a href="/eplg/episodeView.yb?travrvNo=20000023517" class="underline_link arrow">자세히 보기</a>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                        </div>
	                        <!-- // 베스트 후기 -->
	                        <!-- 상품 -->
	                        <div class="col prod">
	                            <ul class="pdt_catalog">
	                                								
										
																	
										
																	
										
											<li>
												<a href="/product/localList.yb?menu=PKG&dspSid=AAAB000&goodsCd=EKP2152"> 
													<span class="thumb_pic">
														<span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
														<img src="https://dimgcdn.ybtour.co.kr/TN/26/260c66c988e2ec55e243c255f5e19597.tn.410x280.jpg" alt="상품 이미지" onerror="YBUtil.noImage(this)">
													</span>
													<div class="pdt_list_info">
														<h5 class="tit_list_block">프라하 직항으로 두브로브니크까지 한번에! [동유럽 반♡발칸 반] 4국9일/5국10일</h5>
													</div>
												</a>
											</li>
										
																	
										
											<li>
												<a href="/product/localList.yb?menu=PKG&dspSid=AAAB000&goodsCd=EKP3037"> 
													<span class="thumb_pic">
														<span class='tag'><span class='tag_square pkg'><span>해외 패키지</span></span></span>
														<img src="https://dimgcdn.ybtour.co.kr/TN/50/5049c319736cc579c2a019e970975cc8.tn.410x280.jpg" alt="상품 이미지" onerror="YBUtil.noImage(this)">
													</span>
													<div class="pdt_list_info">
														<h5 class="tit_list_block">[동3국(독,오,체) 발3국(크,슬,보)12일]OZ /두브로브니크+베를린+퓌센/프라하자유]</h5>
													</div>
												</a>
											</li>
										
									
	                            </ul>
	                        </div>
	                        <!-- // 상품 -->
	                    </div>
                    
                </div>                
                <!-- 후기/상품 -->
            </div>
        </div>
        <!-- // 고객 여행기 -->
    </div>    
		
<script>
	function mainCustReviewInit(){	
		
		$(function(){
            $(".main_slide5").bxSlider({
                infiniteLoop:false,
                controls:false,
                hideControlOnEnd:true,
                minSlides: 1,
                maxSlides: 1,
                moveSlides: 1,
                slideWidth: 915
            }).show();
        });
		
	}
</script>
            
            	
        
</div><!-- 고객 여행기 -->
	<div>




































	
	<!-- 기타안내 -->
        <div class="main_section">
            <div class="etc_area">
                <!-- 전화번호 안내 -->
                <div class="col">
                    <div class="customer_tel_block">
                        <ul class="ctr_btn_link direct_num">
                            <li class="ctr_num_tour"><h3 class="tit_list_block">여행/호텔 상담</h3><span class="tel_num">1544-2288</span></li>
                            <li class="ctr_num_air"><h3 class="tit_list_block">항공상담</h3><span class="tel_num">1644-3399</span></li>
                        </ul>
                    </div>
                    <a href="/cs/arsGuide.yb" class="link_tel_loc">지역별 직통 상담 번호 안내</a>
                    <p class="txt_info tel_guide">
                        <strong>부산 지사</strong><em>051-710-7744</em><span></span>                        
                    </p>
                    <h3 class="txt_info">상담시간</h3>
                    <div class="tel_time">
                        <strong>여행</strong>
                        <dl class="definition_list">
                            <dt>평일</dt> 
                            <dd>오전 9시 ~ 오후 6시</dd>
                        </dl>
                        <dl class="definition_list">
                            <dt>토요일</dt>
                            <dd>오전 9시 ~ 오후 3시 (일요일 및 공휴일 휴무)</dd>
                        </dl>
                    </div>
                    <div class="tel_time">
                        <strong>호텔/항공권</strong>
                        <dl class="definition_list">
							<dt>평일</dt>
							<dd>오전 9시 ~ 오후 6시 (토, 일요일 및 공휴일 휴무)<br>* 해외항공권 취소/변경/환불 업무는 평일 오후 5시까지</dd>
                        </dl>
                    </div>
                </div>
                <!-- // 전화번호 안내 -->
    
                <!-- 자주하는 질문 -->
                <div class="col">
                    <h2 class="tit_main_title">자주하는 질문</h2>
                    <div class="btn_right">
                        <a href="/cs/faqList.yb" class="link_line">더보기</a>
                    </div>
                    <ul class="list_menu">
                        <li><a href="/cs/faqList.yb?searchCateCd=PRS">상품예약</a></li>
						<li><a href="/cs/faqList.yb?searchCateCd=PPT">상품결제</a></li>
						<li><a href="/cs/faqList.yb?searchCateCd=TPD">여행상품</a></li>
						<li><a href="/cs/faqList.yb?searchCateCd=MLG">마일리지</a></li>
						<li><a href="/cs/faqList.yb?searchCateCd=ATK">해외항공권</a></li>
						<li><a href="/cs/faqList.yb?searchCateCd=WEB">홈페이지이용</a></li>
                    </ul>
                </div>
                <!-- // 자주하는 질문 -->
    
                <!-- 이용안내 -->
                <div class="col">
                    <h2 class="tit_main_title">이용안내</h2>
                    <div class="btn_right">
                        <a href="/cs/reserveGuide.yb" class="link_line">더보기</a>
                    </div>
                    <ul class="list_menu">
                        <li><a href="/cs/reserveGuide.yb">예약안내</a></li>
						<li><a href="/cs/paymentGuide.yb">결제방법안내</a></li>
						<li><a href="javascript:;" onclick="window.open('/cs/freeInstallmentPopup.yb','','width=800, height=936, scrollbars=yes')">무이자할부</a>
						<li><a href="/cs/mileageGuide.yb">마일리지</a></li>
						<li><a href="/prom/couponList.yb">할인쿠폰</a></li>
						<li><a href="/cs/giftCardGuide.yb">여행상품권</a></li>
                    </ul>
                </div>
                <!-- // 이용안내 -->
                <div class="txt_guid">
                    <p class="txt_info">본 화면의 모든 상품가격은 항공운임(항공권) 등이 포함된 총 금액이며, 유류할증료는 유가와 환율에 따라 변동될 수 있습니다.</p>
                </div>
            </div>
        </div>
        <!-- // 기타안내 -->
        
        <!-- 문의 안내 -->
        <div class="tail_menu">
            <div class="in">
                <a href="/cs/qnaGuide.yb" class="icon mn1">1:1 문의</a>
                <a href="/cs/estimateWrite.yb" class="icon mn2">견적 문의</a>
                <a href="/utility/bizTravel.yb" class="icon mn3">기업/단체 문의</a>
                <a href="#" class="icon mn4" onclick="chatPopup()">챗봇 상담</a>                
                <p class="notice">
					<span class="tit">공지사항</span><a href="/cs/noticeView.yb?noticeNo=20000008562" class="link_ellipsis" style="width: 389px">[항공권소식] [제주항공] 부산발 하계기간 스케줄 변경 안내</a>
				</p>
                <a href="/cs/noticeList.yb" class="link_line">더보기</a>
            </div>
        </div>
        <!-- // 문의 안내 -->
        
		<!-- 메인 공지 배너 -->
		<div class="mpop_wrap notice" id="squareLayerPopup" style="display: none"></div>
		
		<!-- 메인 라운드 배너 -->
		<div class="mpop_wrap" id="roundLayerPopup" style="display: none;"></div>
		
<script>
	function mainETCInit(){
		$(".footer_banner").hide();
		
		
		this.showLayerBanner = function(){				
			$.ajax({
		        url: "/main/mainLayerBanner.ajax",
		        timeout : 0,
		        data : this.data,
		        method : "POST",
		        beforeSend : function(xhr) {
		            xhr.setRequestHeader("Accept", "application/json");
		        },
		        success:function(data){		        
		        	
			        if(	data.layerBanner.length > 0 ){		        	
			        		
			        		var obj = data.layerBanner[0]; 
			        		var $div = $("<div>",{ "class" : "mpop_box" });
			        		var $a   = $("<a>",{ "href" : obj.link, "class" : "mpop" }).append( $("<img>",{ "src" : "//cimgcdn.ybtour.co.kr/"+obj.imgPath, "alt" : obj.alt }) );
			        		var $layer = obj.layerTypeCd 	=== 'NCT' ? $("#squareLayerPopup") : $("#roundLayerPopup");
			        		var $text = obj.layerTypeCd 	=== 'NCT' ? "오늘 하루 그만보기" : $("<span>",{ "text" : "오늘 하루 그만보기" });
			        		var $close = obj.layerTypeCd 	=== 'NCT' ? "닫기" : $("<span>",{ "text" : "닫기" });			        		
			        		var $btnWrap = obj.layerTypeCd 	=== 'NCT' ? $("<div>",{"class" : "box_btn"}) : $(document.createDocumentFragment()); 
			        	
			        		$btnWrap.append( $("<button>",{ "type" : "button", "class" : "btn_today_close" }).append( $text ) )
			        				.append( $("<button>",{ "type" : "button", "class" : "btn_mpop_close" }).append( $close ) );
			        		
			        		$div.append( $a ).append( $btnWrap );
			        		$layer.append( $div ).show();
			        		
					        $(".btn_mpop_close",$layer).on( 'click',function(){
					        	$(this).parent().parent().hide();
					        })
					        
					        $(".btn_today_close",$layer).on( 'click',function(){
					        	var t = new Date();
				    		    localStorage.setItem("time", t.getTime());
				    		    $(this).parent().parent().hide();
					        })
			        }
		         	
		        },
		        error:function(jqXHR, textStatus, errorThrown){}
		    }); 
			
		}
		
		/* 레이어 배너 팝업 */
		if( null == localStorage.getItem("time") || localStorage.getItem("time").length == 0  ){
			this.showLayerBanner();			
		} else { /* 저장된 날짜가 있을경우  */
			var storageDate = new Date(parseInt(localStorage.getItem("time")));
            var today = new Date();            
            if(storageDate.getDate() != today.getDate()) this.showLayerBanner();
		}
		
		
		
		
		
		
	}
</script>
            
            	
        
</div><!-- 기타안내 -->
</div>
<script>

	$(document).ready(function(){
		$.type(mainSpotInit) === 'function' && mainSpotInit();
		$.type(mainQuickSearchInit) === 'function' && mainQuickSearchInit();
		$.type(mainSectionInit) === 'function' && mainSectionInit();
		$.type(mainRecommendInit) === 'function' && mainRecommendInit();
		$.type(mainThemaSectionInit) === 'function' && mainThemaSectionInit();
		$.type(mainYellowTvInit) === 'function' && mainYellowTvInit();
		$.type(mainHomeShoppingInit) === 'function' && mainHomeShoppingInit();
		/* $.type(mainEpisodeInit) === 'function' && mainEpisodeInit(); */
		$.type(mainCustReviewInit) === 'function' && mainCustReviewInit();
		$.type(mainETCInit) === 'function' && mainETCInit();
	});

</script>

	

	
		<!-- T:footer START-->
	 	<div id="footer">	
			


































	<!-- banner -->

	<div class="footer_banner" style="background:#f9f9e4">
		<a href="/promotion/promotionDetail.yb?mstNo=20000014610" target="_self"><img src="https://cimgcdn.ybtour.co.kr/attachHome/DM/BM/202001/202001141033328001104009001038.jpg" alt="노랑풍선 N개국 여행" ></a>
	</div>

	<!-- //banner -->
			


































		<!-- 미로그인 상태 -->
        
        	 
		

		<!-- 로그인 상태 -->
		

		<!-- footer -->
		<div class="global_block">
			<ul class="fnb_nav">
				<li><a href="http://company.ybtour.co.kr" target="_blank">회사소개</a></li>
				<li class="privacy"><a href="/common/privacy.yb" target="_self">개인정보처리방침</a></li>
				<li><a href="/common/internetAgree.yb" target="_self">인터넷회원규정</a></li>
				<li><a href="/common/travelAgree.yb" target="_self">여행약관</a></li>
				<li><a href="/common/travelerInsuInfo.yb" target="_self">여행자보험</a></li>
				<li><a href="http://company.ybtour.co.kr/agent/about.do" target="_blank">대리점안내</a></li>
				<li><a href="/cs/newsAdvertisement.yb" target="_self">신문광고</a></li>
				<li><a href="/cs/directionGuide.yb" target="_self">오시는 길</a></li>
			</ul>
			<ul class="sns_nav">
				<li><a href="https://www.facebook.com/yellowballoonofficial/" 			target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns1.png" alt="노랑풍선 페이스북 바로가기"></a></li>
				<li><a href="https://www.instagram.com/yellowballoon_official/" 			target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns2.png" alt="노랑풍선 인스타 바로가기"></a></li>
				<li><a href="https://www.youtube.com/user/ybtour2013" 				target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns7.png" alt="노랑풍선 유튜브 바로가기"></a></li>
				<li><a href="https://pf.kakao.com/_hhAxbd" 							target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns3.png" alt="노랑풍선 플러스친구 바로가기"></a></li>
				<li><a href="https://blog.naver.com/yb_tour" 						target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns5.png" alt="노랑풍선 네이버블로그 바로가기"></a></li>
				<li><a href="https://post.naver.com/myProfile.nhn?memberNo=1173675" target="_blank" itemprop="sameAs"><img src="/static/images/common/btn_fnb_sns6.png" alt="노랑풍선 네이버포스트 바로가기"></a></li>
				
				
				
				
				
			</ul>
		</div>
		<div class="footer_block">
			 <div class="global_block">
				 <h5 class="tit_norang">(주)노랑풍선<span><img src="/static/images/common/logo_kosdaq.png" alt="KOSDAQ 코스닥 상장법인"></span></h5>
				 <address>
					대표이사 김인중  |  서울특별시 중구 수표로 31, 노랑풍선빌딩<br>
					사업자등록번호 104-81-64440  |  관광사업자등록증번호 제2006-000003호<br>
					통신판매업신고번호 제2008-서울중구-0278   <a href="http://www.ftc.go.kr/www/bizCommList.do?key=232" target="_blank" class="btn_norangbiz">사업자 정보확인</a>
				 </address>
				 <p class="txt_footer_info">
					대표전화 1544-2288  |  이메일 <a href="mailto:master@ybtour.com" class="underline_link">master@ybtour.com</a><br>
					영업배상책임보험가입 총 20억원, 한국관광협회중앙회 여행공제회 공제영업보증가입 10억원, 공제기획여행보증가입 5억원
				 </p>
				 <address>
					[부산지사] 사업자등록번호 605-85-38384  |  부산광역시 진구 중앙대로 708 부산 파이낸스센터 13층<br>					
					&copy;YBTOUR., All Rights Reserved.
				 </address>
				<div class="ctr_info_block">
					<h5 class="tit_fnv_ctr">상담 대표번호</h5>
					<dl class="ctr_center">
						<dt>여행/호텔 상담</dt>
						<dd>1544-2288</dd>
						<dt>부산지사</dt>
						<dd>051-710-7744</dd>
						<dt>항공권 상담</dt>
						<dd>1644-3399</dd>						
					</dl>
					<button type="button" class="btn_rd_ctr" onclick="javascript:location.href='/cs/main.yb'">고객센터</button>
					<button type="button" class="btn_rd_cht" onclick="chatPopup()">챗봇상담</button>
					<button type="button" class="btn_loc_ctr" onclick="javascript:location.href='/cs/arsGuide.yb'" >지역별 직통 상담번호 안내</button>
					<div class="site_blc">
						<button type="button" class="btn_tour_link">여행시 참고할 사이트</button>
						<ul class="sel_site_list" style="display:none">
							<li><input type="radio" name="sitelink" value="http://www.0404.go.kr" id="site1"><label for="site1">외교부 해외안전여행</label></li>
							<li><input type="radio" name="sitelink" value="http://www.ftc.go.kr" id="site2"><label for="site2">공정거래위원회</label></li>
							<li><input type="radio" name="sitelink" value="https://www.kca.go.kr/index.do" id="site3"><label for="site3">한국소비자원</label></li>
							<li><input type="radio" name="sitelink" value="http://www.kata.or.kr" id="site4"><label for="site4">한국여행업협회</label></li>
						</ul>
						<button type="button"  class="btn_gosite">GO</button>
					</div>
				</div>
				<ul class="cert_list" id="award"></ul>
			 </div>
		</div>

	<!-- //footer -->
	<!-- 플로팅 -->
	<div class="floating">
		<ul class="floating_list">
			<li style="display:none" class="scroll_top"><a href="#" class="float_top"><span>최상단으로 이동</span></a></li>
			<li><a href="#n" class="float_chat" onclick="chatPopup()"><span>챗봇</span></a></li>
			<li id="recentlyViewfloating"><a href="javascript:;" class="float_today"><span>최근 본</span></a></li><!-- 조회한 상품이 없는 경우 a태그에 disabled 추가 -->
		</ul>
	</div>

	<!-- //플로팅 -->
	<script>
		$("#award").load('/static/views/MAIN/awardList.html',function(){			
			staticUrl = '/static/views/MAIN/awardPopup.html '
			$("#award li").has('[data-id]').on('click',function(){
				$('#commonPopup').load( staticUrl+this.querySelector('button').dataset.id ,function(){
					$.ybPopup({contents : "#commonPopup"}).open();
				}); 
			})	
		});
	
		$(".btn_tour_link").click(function() {
			$(".sel_site_list").toggle();
		});

		$("input[name=sitelink]").change(function(idx, itm) {
				var radioId = $(this).attr("id");
				$(".btn_tour_link").text($("label[for='"+radioId+"']").text());
				$("ul.sel_site_list").hide();
		});

		$( ".btn_gosite" ).bind( "click", function( event ) {
			var url = $(":input:radio[name=sitelink]:checked").val();
			 if(undefined == url) return;
			window.open(url);
		});

		$('#popupLogin').on('click', function(){
			$.ybLogin().open();
		});

    	//최근본 상품, 관심상품 플로팅 메뉴
	 	$("#recentlyViewfloating").click(function(e){
			var data = {'ajaxNm':'firstLoad' };
			 $.ybPopup({
					type : 'large',
					contents : {
						url : "/common/selectRecentlyView.yb",
						data : data
					}
				}).open();
		});

	 	var getLocalStorageYbData = function(eventType){
    		var ybStorageArr = JSON.parse(localStorage.getItem(eventType));

    		var returnArr = new Array();
    		$.each(ybStorageArr, function(i,obj){

    			if(obj.saveDate >= fn_getAccumulateDate()){
    				returnArr.push(obj);
    			}
    		});

    		return returnArr;

    	}

    	//30일 누적 날짜 조회
    	var fn_getAccumulateDate = function (){
    		var date = new Date();
    		var today = new Date(Date.parse(date) + -30 * 1000 * 60 * 60 * 24);

    		var yyyy = today.getFullYear();
    		var mm = today.getMonth()+1;
    		var dd = today.getDate();

    		if(mm<10){
    			mm = "0" + mm;
    		}if(dd<10){
    		 	dd = "0" + dd;
    		}
    		return yyyy+''+mm+''+dd;
    	}

    	var cntCheck = function(){

			var goodsArr =  getLocalStorageYbData("ybGoodsList");
	 		var eventArr =  getLocalStorageYbData("ybEventList");

	 		var viewOn = false;
	 		var loginCheckFlag = 'N';
	 		if(goodsArr.length != 0 || eventArr.length != 0){
	      		viewOn=true;
	 		}else if(  goodsArr.length === 0 && eventArr.length === 0 && loginCheckFlag == 'N'){
	 			viewOn=false;
	 		}else if(goodsArr.length === 0 && eventArr.length === 0 && loginCheckFlag == 'Y'){

	 			$.ajax({
	 					type:"POST"
	 					,url:  "/common/selectRecentlyView.yb"
	 					,data:{"ajaxNm" : "cntCheck"}
	 				   	,success:function(result){

	 				   		if(result.wishCnt == 0){
	 				   			viewOn = false;
	 				   		}else{
	 				   			viewOn = true;
	 				   		}
	 				   	}
	 				   ,error: function(result) {
	 						console.log(result);
	 				}
    			});
	 		}

	 		if(!viewOn) {
	 			$('#recentlyViewfloating > a').addClass('disabled');
	 		}

    	}


 	cntCheck();

	</script>

		</div>
		<!-- T:footer END -->
	</div>
	


































<div id="mlgJoinPop" class="popup_wrap">
	<div class="small popup_block">
		<div class="popup_top">
			<h2 class="tit_popup">노랑풍선 마일리지 가입 안내</h2>
			<button type="button" class="btn_pop_close"><span>레이어팝업 닫기</span></button>
		</div>
		<div class="popup_area all_center">
			<div class="cont_mileage_join">
				<p class="txt_popup">여행가면 갈수록 쌓이는 여행포인트!</p>
				<h3 class="stit_ico ico_peple_m">
					여행의 시작<br> <strong>노랑풍선 마일리지</strong>
				</h3>
				<div class="btn_poparea">
					<a href="/mypage/mileageJoin.yb" class="btn_cof_g cfrm">노랑풍선 마일리지 가입하기</a>
				</div>
			</div>
		</div>
		<div class="box_nomoreday">
			<input type="checkbox" id="chkJoinNonDay" name="nomore_day"><label for="chkJoinNonDay">오늘 하루 그만보기<span></span></label>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#chkJoinNonDay").on("click", function () {
			YBUtil.setCookie("ybtourPopup_JOIN", "done", "1");
			$("button.btn_pop_close").trigger("click");
		});
	});
</script>
	



































<div id="mlgRecPop" class="popup_wrap">
	<div class="regular popup_block">
		<div class="popup_top">
			<h2 class="tit_popup">노랑풍선 마일리지 선물 도착 알림</h2>
			<button type="button" class="btn_pop_close"><span>레이어팝업 닫기</span></button>
		</div>
		<div class="popup_area  all_center">
			<h3 class="stit_ico_center ico_milege">노랑풍선 <strong class="emp_blue">마일리지 선물</strong>이 도착했습니다.</h3>
			<p class="txt_popup">
				제한 시간 내에 마일리지를 받지 않으시면 적립 받으실 수 없습니다.<br>
				지금 선물 온 마일리지를 확인하세요!
			</p>
			<p class="txt_dot">마일리지 규정에 동의하지 않으신 회원님은 마일리지 규정 동의 페이지로 이동합니다.</p>
			<div class="btn_poparea">
				<a href="/mypage/mileageGiftReceive.yb" class="btn_cof_g cfrm">선물 확인하러 가기</a>
			</div>
		</div>
		<div class="box_nomoreday">
			<input type="checkbox" id="chkRcvNonDay" name="nomore_day"><label for="chkRcvNonDay">오늘 하루 그만보기<span></span></label>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#chkRcvNonDay").on("click", function () {
		YBUtil.setCookie("ybtourPopup_REC", "done", "1");
		$("button.btn_pop_close").trigger("click");
	});
</script> 

	<div class="back_dim" style="display:none"></div>
	<div class="loading"  style="display:none"></div>
	




















 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			
			<script type="text/javascript" src="/js/nlogger.js" ></script>
<script type="text/javascript">document.addEventListener("DOMContentLoaded", function() {    nLogger.log(); });</script>
		 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			
			<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 967993111;
var google_conversion_label = "XXSqCJHb4QgQl87JzQM";
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<div style="display: none">
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
</div>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967993111/?value=1.00&amp;currency_code=KRW&amp;label=XXSqCJHb4QgQl87JzQM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
<!-- 2014.04.02 푸터 구글 스크립트 추가 -->
		 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			
			<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N769DH4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

		 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		

 	
 		
			 
		
		
		
			 
			
		
		
		
 		
 		



</body>




















<script>
/* 동적 추적 스크립트 */
var _TrackingDynamic = $.extend(true, {}, _TrackingDynamic, {
	login : function(){
		/* 이곳에 PC 채널의 로그인 동적 스크립트 추가 */
	}
	/* ... 스크립트 위치 추가 */
});
</script>






















 		
			
			<!-- adinsight 공통스크립트 start -->
<script type="text/javascript">
var TRS_AIDX = 11087;
var TRS_PROTOCOL = document.location.protocol;
var TRS_DOMAIN="ybtour.co.kr";
document.writeln();
var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL=='https:')?'analysis.adinsight.co.kr':'adlog.adinsight.co.kr') +  '/emnet/trs_esc.js';
document.writeln("<scr"+"ipt language='javascript' src='" + TRS_URL + "'></scr"+"ipt>");
</script>
<!-- adinsight 공통스크립트 end -->
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			
			<!-- EDN 공통스크립트 end -->
<iframe id="hfrADCheck" src="https://adcheck.about.co.kr/mad/prd/view?shopid=ybtour" scrolling="no" frameborder="0" width="0" height="0"></iframe>
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			
			<!-- 공통 호출 하단 스크립트 : 모든페이지 하단 설치 -->
<!-- PlayD TERA Log Script v1.1 -->
<script>
var _nSA=(function(_g,_c,_s,_p,_d,_i,_h){ 
 if(_i.wgc!=_g){var _ck=(new Image(0,0)).src=_p+'//'+_c+'/?cookie';_i.wgc=_g;_i.wrd=(new Date().getTime());
 var _sc=_d.createElement('script');_sc.src=_p+'//sas.nsm-corp.com/'+_s+'gc='+_g+'&rd='+_i.wrd;
 var _sm=_d.getElementsByTagName('script')[0];_sm.parentNode.insertBefore(_sc, _sm);_i.wgd=_c;} return _i;
})('TR10060001557','ngc1.nsm-corp.com','sa-w.js?',location.protocol,document,window._nSA||{},location.hostname);
</script><noscript><img src="//ngc1.nsm-corp.com/?uid=TR10060001557&je=n&" border=0 width=0 height=0></noscript>
<!-- LogAnalytics Script Install -->
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			
			<!-- WIDERPLANET  SCRIPT START 2019.1.22 -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"42886",	/*광고주 코드 */
		ty:"Home",	/*트래킹태그 타입 */
		device:"web"	/*디바이스 종류  (web 또는  mobile)*/
		
	};
}));
</script>
<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
<!-- // WIDERPLANET  SCRIPT END 2019.1.22 -->
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
			<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
<script type="text/javascript">
window.criteo_q = window.criteo_q || [];
window.criteo_q.push(
        { event: "setAccount", account: 28284 },
		
        { event: "setSiteType", type: "d" },
        { event: "viewHome" }
);
</script>
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


 		
			
			<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtp1.acecounter.com','8080','AM3A34627437260','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://gtp1.acecounter.com:8080/?uid=AM3A34627437260&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End -->
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			
			<!-- Withpang Tracker v3.0 [공용] start -->
<script type="text/javascript">
 function mobRf(){
  	var rf = new EN();
	rf.setSSL(true);
	rf.sendRf();
   }
</script>
<script src="https://cdn.megadata.co.kr/js/enliple_min2.js" async="true" onload="mobRf()"></script>
<!-- Withpang Tracker v3.0 [공용] end -->
		 
 			
		
		
			
			
		
		
		
 		
 		


 		
			 
 			
		
		
			
			
		
		
		
 		
 		


</html>