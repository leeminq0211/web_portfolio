<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- Footer -->
	 	<div id="footer">	
		<!-- footer -->
		<div class="text-center">
		<a href="#" title="To Top">
		    <span class="glyphicon glyphicon-chevron-up"></span>
		  </a>
		  </div>
		<div class="global_block">
			<ul class="fnb_nav">
				<li><a href="http://leeminq0211.cafe24.com/spring003/" target="_blank">스프링게시판</a></li>
				<li class="privacy"><a href="${pageContext.request.contextPath}/notice.do?pstartno=0&table=notice" target="_self">공지사항</a></li>
				<li><a href="${pageContext.request.contextPath}/using.do?pstartno=0&table=usinggreenballoon" target="_self">자주묻는질문</a></li>
				<li><a href="${pageContext.request.contextPath}/list.do?pstartno=0" target="_self">1:1상담</a></li>
			</ul>
		</div>
		<div class="footer_block">
			 <div class="global_block">
				 <h5 class="tit_norang">(주)녹색풍선</h5>
				 <address>
					주소 : 서울시 강남구 역삼동 815-4 만이빌딩 5층, 10층
				 </address>
				 <p class="txt_footer_info">
					대표전화 1588.9780  |  이메일 <a href="greenballon@green.com" class="underline_link">greenballon@green.com</a><br>
				 </p>
				<div class="ctr_info_block">
					<h5 class="tit_fnv_ctr">그린풍선은</h5>
					<dl class="ctr_center">
						<dt>꿈이 담긴</dt>
						<dd>새로운 여행을</dd>	
						<dd>찾아드립니다</dd>				
					</dl>
				</div>
				<ul class="cert_list" id="award"></ul>
			 </div>
		</div>

	<!-- //footer -->
</div>
		<!-- T:footer END -->

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
