<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>account_list</title>
	<link href="../../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../../../resources/bootstrap/js/bootstrap.js"></script>
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
	 
	<!-- include summernote css/js-->
	<link href="../../../resources/summernote/summernote.css" rel="stylesheet">
	<script src="../../../resources/summernote/summernote.js"></script>
	
	<!-- summer note korean language pack -->
	<script src="../../../resources/summernote/lang/summernote-ko-KR.js"></script>
	
	<script type="text/javascript">
	$(function() {
		$('.summernote').summernote({
			height: 300,          // 기본 높이값
			minHeight: null,      // 최소 높이값(null은 제한 없음)
			maxHeight: null,      // 최대 높이값(null은 제한 없음)
			focus: true,          // 페이지가 열릴때 포커스를 지정함
			lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
		});
	});
	</script>
	<%@ include file = "../../module/managerTop.jsp" %>
	
</head>
<body>

	<%--■■■■■■■■■■■■■■■■■■■■■■ top & menu ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<br><br><br><br>
	
	<%--■■■■■■■■■■■■■■■■■■■■■■ contents ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<h1>상품관리 : 상품등록</h1>
	<hr>

	
	<!-- 디비연결 테스트영역 - 상품정보 수정에서 활용 -->
	<c:choose>
	    <c:when test="${sessionScope.userId == null}">
	        <a href="${path}/member/login.do"><strong>로그인&nbsp;</strong></a>&nbsp;｜&nbsp;
	        <a href="${path}/member/joinMember.do"><strong>회원가입&nbsp;</strong></a>
	    </c:when>
	    <c:otherwise>
	        ${sessionScope.userId}님이 로그인중입니다.&nbsp;
	        ${sessionScope.userName}님의 회원등급은 ${sessionScope.userGrade}.&nbsp;
	        <a href="${path}/member/logout.do"><strong>로그아웃</strong></a>
	    </c:otherwise>
	</c:choose>
		
		
	
	<!-- 상품등록 폼 -->
	<div class="form-group col-md-8 col-md-offset-2">
	
	
		<!-- 상품제목 -->
		<div class="form-group">
		    <label for="staticEmail">Subject:</label>
		    <input class="form-control form-control-lg" id="subject" name="subject" placeholder="Enter your subject" type="text">
		</div>
		
		
		<!-- 노트영역 -->
		<div class="form-group" id="summernote"><p></p></div>
		
		
		<!-- 노트 스크립트 -->
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					height: 300,          // 기본 높이값
					minHeight: null,      // 최소 높이값(null은 제한 없음)
					maxHeight: null,      // 최대 높이값(null은 제한 없음)
					//focus: true,        // 페이지가 열릴때 포커스를 지정함
					lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
				});
			});
		</script>
		
		
		<!-- 서브밋 -->
		<div class="form-group">
		    <button type="submit" name="submit" class="btn btn-primary">등록</button>
		</div>
		
	</div>
	


<!-- 	private int product_id;
    private String product_name;
    private String product_category1;
    private String product_category2;
    private int product_price;
    private int product_discountrate;
    private int product_count;
    private String product_image;
    private int product_package;
    private int product_ea;
    private String product_content;
    private Date product_date; -->
 
 
</body>
	<!-- include summernote css/js-->
	<link href="../../../resources/summernote/summernote.css" rel="stylesheet">
	<script src="../../../resources/summernote/summernote.js"></script>
	
	<!-- summer note korean language pack -->
	<script src="../../../resources/summernote/lang/summernote-ko-KR.js"></script>
		
</html>

