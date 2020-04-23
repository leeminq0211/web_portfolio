<script>
	$(document).ready(function() {
		
		
		rvwEvent.init();		
		prdtEpiEvent.init();
		cmmnRvwPoint.init();
		
		$("#_rvwListOrder li").on('click',function(){
			event.preventDefault();
			$.extend( rvwEvent.state, { sortOrder : this.dataset.field, pageNum : 1 } );
			rvwEvent.rvwListInit();
			$(this).parent().find('li').removeClass('on').eq( $(this).index() ).addClass('on');
		});

	});
	
	var rvwEvent = {
			
			state : { 
				goodsCd : "EWP3058"
				,viewCount : 5
				,pageNum : 1
				,sortOrder : "RVW_AVG DESC,REG_DT"
			}
			,reverseEscape : function(str){
				var charObj = {
					"&lt;" : "<"
					,"&gt;" : ">"
					,"&nbsp;" : " "
					,"&amp;" : "&"
					,"&quot;" : '"'						
				}			
				return str.replace( /&amp;/g,"&").replace( /&amp;+|&lt;+|&gt;+|&nbsp;+|&quot;+/g,function(c){ return charObj[c] });
			}
			
			,init : function(){
				var _this = this;
				$.ajax({
					url : '/product/selectRvwTabList.ajax',
			        type : 'POST',					
			        data : _this.state
			        ,success:function(result) {
			        	
			        	//고객리뷰 탭 생성
			        	var $fragment = $(document.createDocumentFragment());			        	
			        	var totCnt 	= 	result.rwvTabList.reduce(function(acc,item){ return acc+item.grpCnt },0);			        	
			        	var $li 	= 	$("<li>",{ "class" : "on" }).data("item",  { goodsCd : "EWP3058", tourlistDivi : "", grpCnt : totCnt } )
	        			var $a		=	$("<a>", { href : "#" });
	        			var $span	=	$("<span>").append( $("<em>",{ text : "전체" }) ).append( '('+totCnt+'건)' );
			        	
	        			$fragment.append( $li.append( $a.append( $span ) )  )
				        	.append(  
			        			result.rwvTabList.map(function(item,idx){				        		
					        		var $li 	= 	$("<li>").data("item",item);
				        			var $a		=	$("<a>", { href : "#" });
				        			var $span	=	$("<span>").append( $("<em>",{ text : item.commCdNm }) ).append( '('+item.grpCnt+'건)' );
				        			return $li.append( $a.append( $span ) ) ;
					        	})
				        	);
			        	
			        	$("#_rvwTab").empty().append( $fragment ).find('li').on( 'click',function(){ 
			        		$(this).parent().find('li').removeClass('on').eq( $(this).index() ).addClass('on');
			        		$.extend( _this.state, { tourlistDivi : $(this).data('item').tourlistDivi , pageNum : 1 , thisTabCnt : $(this).data('item').grpCnt });
			        		_this.tabContentsInit();
			        		_this.rvwListInit();
			        	});
			        	
			        	$("#_rvwTab > li:eq(0)").trigger('click');
			        	$("#_rvw").show();
			        	'' == 'Y' && $(".goods_reviews_list a").trigger('click');
			        }, error:function(e) {
						console.log( '고객리뷰 로딩 error' );
			    	}
				})
			}
			,tabContentsInit : function(item){
				var _this = this;
				$.ajax({
					url : '/product/selectRvwSummery.ajax',
			        type : 'POST',
			        data : this.state
			        ,success:function(result) {			   
			        	
			        	var imgViewArr 	= $("#_rvwStarImg li").hide();
			        	var rootSrc 	= "/static/images/content/ico/ico_star_";
			        	var data 		= result.rwvSummery;
			        	var score 		= [ data.rvwVeryGoodCnt ,data.rvwGoodCnt ,data.rvwNormalCnt ,data.rvwNotCnt ,data.rvwVeryNotCnt ];
			        	
			        	if( data.rvwGoodsDivi === 'SINGLE'){			        		
			        		data.rvwCnt > 0 	&& imgViewArr.eq(5).show().find('.emp_black').text( data.rvwAvg ).parent().find("img").attr("src",rootSrc+data.rvwIco+".png").attr("alt", data.rvwAvg );
			        		data.rvwCnt === 0 	&& imgViewArr.eq(5).show().find('.emp_black').text( data.rvwCnt ).parent().find("img").attr("src",rootSrc+"0.png").attr("alt", data.rvwCnt );
			        	} else {
			        		$("#_rvwStarImg li").slice(5).remove();
			        		data.gudAvg > 0 	&& imgViewArr.eq(0).show().find('.emp_black').text( data.gudAvg ).parent().find("img").attr("src",rootSrc+data.gudIco+".png").attr("alt", data.gudAvg );
				        	data.cdtAvg > 0 	&& imgViewArr.eq(1).show().find('.emp_black').text( data.cdtAvg ).parent().find("img").attr("src",rootSrc+data.cdtIco+".png").attr("alt", data.cdtAvg );
				        	data.schAvg > 0 	&& imgViewArr.eq(2).show().find('.emp_black').text( data.schAvg ).parent().find("img").attr("src",rootSrc+data.schIco+".png").attr("alt", data.schAvg );
				        	data.fodAvg > 0 	&& imgViewArr.eq(3).show().find('.emp_black').text( data.fodAvg ).parent().find("img").attr("src",rootSrc+data.fodIco+".png").attr("alt", data.fodAvg );
				        	data.htlAvg > 0 	&& imgViewArr.eq(4).show().find('.emp_black').text( data.htlAvg ).parent().find("img").attr("src",rootSrc+data.htlIco+".png").attr("alt", data.htlAvg );
				        	data.rvwCnt === 0 	&& imgViewArr.show().find('.emp_black').text( data.rvwCnt ).parent().find("img").attr("src",rootSrc+"0.png").attr("alt", data.rvwCnt );
			        	}
			        				        	
			        	$('#_rvwGraphList > li').each(function(index,ele){			        		
			        		if( data.rvwCnt === 0 ){
			        			$('.graph_bar',this).css("width", "0%");	
			        		}else {
			        			$('.graph_bar',this).css("width", (score[index]/data.rvwCnt)*100 + "%");
			        		}
							$('.graph_count',this).text( score[index] );
						})						
						$("#_rvwStar .reviews_total").text( "("+data.rvwCnt+"건)" ).parent().find('.reviews_score > em').text( data.rvwAvg );
			        	$("#_rvwStar img").attr("src", rootSrc+data.rvwIco+".png" );
			        	
			        	data.rvwTotCnt > 0 && $("[name=_VwBlock]").show();
			        	
			        }, error:function(e) {
						console.log( '고객리뷰 요약정보 error' );
			    	}
				})
			}
			,searchRvwList : function(){
				var deferred = $.Deferred();
				$.ajax({
					url : '/product/selectRvwList.ajax'
						,type : 'POST'
						,data : this.state
						,success : function(result){
							deferred.resolve(result);
						}, error: function(e){ console.log( '고객리뷰 리스트 error' ); }	
			    });
				return deferred.promise();
			}
			,rvwListInit : function(){				
				var _this = this;
				this.searchRvwList().done($.proxy(function(result){
					$("#_rvwList > #tsub1 .reviews_page").empty();
					if( result.rvwList.length === 0 ){		
						$("#_rvwTabTitle").empty().append( $("<em>",{ "text" : "고객리뷰" }) ).append( "(0건)" );
						$("<div>").ybPaging().appendTo( $("#_rvwList > #tsub1 .reviews_page").empty() );
						$("#_rvwList > #tsub1 .reviews_accordion").empty();
						$("#_rvwList > #tsub1 .condition").after(                    		
	                   		$("<div>",{ "class" : "reviews_accordion" })
	                   			//.append( $("<p>",{ "class" : "txt_none" , "text" : "등록된 리뷰가 없습니다. 리뷰를 작성해 주세요." }) )
	                   			.append('<p class="txt_none">등록된 고객리뷰가 없습니다.<br><em class="emp_black">이 상품의 첫 리뷰를 작성하시면 3,000 마일리지를 드립니다.</em><br>(2020.1.14~2020.3.31)<br><br>* 본 프로모션은 내부사정에 따라 변경/취소 될 수 있습니다.</p>')
						 );
					} else {						
						this.drawRvwList( result );											
						$("#_rvwTabTitle").empty().append( $("<em>",{ "text" : "고객리뷰" }) ).append( "("+result.rvwList[0].rvwCnt+"건)" );					
						if( result.rvwList.length > 0 ){							
							$("<div>").ybPaging({
								lastPage : result.rvwList[0].totPageNo,							
								pageChanged : $.proxy(function(iPage){
									event.preventDefault();
									$.extend( this.state , { pageNum : iPage } );
									this.movePage();
								},this)
							}).appendTo( $("#_rvwList > #tsub1 .reviews_page") )
						}
					}
					$("<div>",{ "class" : "btn_brd_area" })
						.append( $("<button>",{ "type" : "button", "class" : "btn_wit", "text" : "고객리뷰 작성" }) )
						.appendTo( $("#_rvwList > #tsub1 .reviews_page") )
						.find('button').on( 'click',function(){  cmmnRvwPoint.rvwWritePopup( _this.state ); })
				},this));
			}
			
			,movePage : function(){				
				this.searchRvwList().done($.proxy(function(result){
					this.drawRvwList( result );
					var $obj = $("#_rvwTab li.on span");
					var $tNm = $("#_rvwTab li.on em").text();					
					//페이징 에서 리스트 건수가 바뀔경우 컨텐츠 및 탭 갱신
					if( result.rvwList && this.state.thisTabCnt !== result.rvwList[0].rvwCnt ){
						$obj.empty().append( $("<em>",{ "text" : $tNm }) ).append( "("+result.rvwList[0].rvwCnt+"건)" )						
						$("#_rvwTabTitle").empty().append( $("<em>",{ "text" : "고객리뷰" }) ).append( "("+result.rvwList[0].rvwCnt+"건)" );
						this.tabContentsInit();
					}
				},this));				
			}
			
			,drawRvwList : function(result){	
				var $fragment = $(document.createDocumentFragment());
				var rootSrc 	= "/static/images/content/ico/ico_star_";
				var _this 		= this;
				$fragment.append(
					result.rvwList.map(function(item,idx){
						var html =  $("#_rvwListTemplate").clone().html();								
						
						//리스트
						html = $(html.replace('@title',_this.reverseEscape( item.title ))
								   .replace('@cmntCnt',item.cmntCnt === 0 ? '' : "("+item.cmntCnt+")" )									
								   .replace('@rvwAvg',item.rvwAvg)
								   .replace('@regDt',item.regDt)
								   .replace('@contents',_this.reverseEscape( item.contents ))
								   .replace('@commCdNm',item.commCdNm)
								   .replace('@likeCnt',item.likeCnt)
								   .replace('@webCustNm',null === item.webCustNm ? "_*_"+"님" : item.webCustNm+"님" ));						
						
						$('.box_info img',html).attr('src',"/static/images/content/ico/ico_star_"+item.rvwIco+".png")
											   .attr('alt', item.rvwAvg );			
						
						
						//별점
						var $star = $("<li>").append( $("<em>",{ "text" : "상세평점" }) );						
						if(item.rvwGoodsDivi === 'PACKAGE'){
							
							/* item.webGuidConfYn === 'Y' && $star.append( $("<span>",	{ "class" : "tit_reviews", "text" : "가이드" }) )
															   .append( $("<img>",	{ "class" : "star", "src" : rootSrc+item.gudScore+".png" }) )
															   .append( $("<span>",	{ "class" : "emp_black", "text" : item.gudScore+".0" }) );
															   
							item.webInsolConfYn === 'Y' && $star.append( $("<span>",	{ "class" : "tit_reviews", "text" : "인솔자" }) )
																.append( $("<img>",	{ "class" : "st…</script>