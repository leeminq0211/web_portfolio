<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include  file="../inc/header.jsp" %>
<script>
jQuery(document).ready(function() {
	jQuery("#join").click(function() {
		if( !($(":checkbox[name='confirm']:checked").length==2) ){
			alert("동의를 눌러주세요");
			return false;
		}
	});
});
</script>
<div class="container-fluid">
<div class="containerLog">
	<h3>J O I N</h3>
	<p>(*)은 필수입력사항입니다</p>
	
	<h3>Company 서비스 약관 동의</h3>
			<div class="form-group">
				<div class="form-group row">
					<div class="col-md-8">
						<label for="fircheck"><strong>Company 서비스 약관 동의</strong></label>
					</div>
					<div class="col-md-4 text-right">
						<input type="checkbox" name="confirm" id="fircheck" value="fircheck">
					</div>
				<textarea cols="70" rows="10" name="form1" id="form1" class="form-control" style="resize: none;"><%@ include file="agreement/1.txt" %></textarea>
				</div>
			</div>
			
			<h3>Company 개인정보 수집 및 이용 동의</h3>
			<div class="form-group">
				<div class="form-group row">
					<div class="col-md-8 ">
						<label for="seccheck"><strong>Company 개인정보 수집 및 이용 동의</strong></label>
					</div>
					<div class="col-md-4 text-right">
						<input type="checkbox" name="confirm" id="seccheck" value="seccheck">
					</div>
				<textarea cols="70" rows="10" name="form2" id="form2" class="form-control" style="resize: none;"><%@ include file="agreement/2.txt" %></textarea>
				</div>
			</div>
			<div align="center">
				<a href="join.jsp"   class="btn btn-default" title="동의하기" id="join">동의하기</a>
			</div>
	</div>
</div>

<%@ include  file="../inc/footer.jsp" %>