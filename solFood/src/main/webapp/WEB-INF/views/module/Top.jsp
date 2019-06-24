<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.*" %>
<%NumberFormat nf = NumberFormat.getNumberInstance();%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>top</title>
	
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/logo.css" rel="stylesheet">
	<link href="resources/css/carouselMulti.css" rel="stylesheet">
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		a { text-decoration: none;}
 		a:link { color: black; text-decoration: none !important;}
 		a:active { color: black !important; text-decoration: none !important;}
		a:visited { color: black !important; text-decoration: none !important;}
 		a:hover { color: black !important; text-decoration: none !important;}
	</style>
	<style>
		.logo {
			position: absolute;
			top: 55px;
			left: 47%;
			display:block;
			z-index: 10;
		}
	</style>

</head>
<body>

<!-- 
	<a href="/member/login.do">로그인1</a>
	<a href="${path}/member/login.do">로그인2</a>
	
	<a href="../">메인메뉴 1</a>
	<a href="../${path}">메인메뉴 2</a>
	<a href="../../${path}">메인메뉴 3</a>
	똑같이 연결됨
 -->
	<%--■■■■■■■■■■■■■■■■■■■■■■ Top ■■■■■■■■■■■■■■■■■■■■■■■■--%>
	<br>
	<div class="row">
		<div class="col-sm-offset-10">
			<c:choose>
			    <c:when test="${sessionScope.userId == null}">
			        <a href="${path}/member/login.do"><strong>로그인&nbsp;</strong></a>&nbsp;｜&nbsp;
			        <a href="${path}/member/joinMember.do"><strong>회원가입&nbsp;</strong></a>
			    </c:when>
			    <c:otherwise>
			        <a href="${path}/board/list.do"><strong>마이페이지&nbsp;</strong></a>&nbsp;｜&nbsp;
			        <a href="${path}/member/logout.do"><strong>로그아웃&nbsp;</strong></a>
			    </c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<div class="row">
	
		<!-- 로고 이미지 -->
		<div class="col-md-3 col-md-offset-1" href="../../${path}">
			
				<div style="position: relative; top: 10px; left: 40px;"><img src="../resources/image/sun.png" class=sun><a href="../../${path}"><img src="../resources/image/trees.png"></a></div>
				<div style="position: absolute; top: 100px; left: 90px;"><img src="../resources/image/cheese.png" class=floating></div>
				<div style="position: absolute; top: 110px; left: 105px;"><img src="../resources/image/carrot.png" class=floating></div>
				<div style="position: absolute; top: 100px; left: 120px;"><img src="../resources/image/apple.png" class=floating></div>
				<div style="position: absolute; top: 110px; left: 135px;"><img src="../resources/image/grapes.png" class=floating></div>
				<div style="position: absolute; top: 100px; left: 150px;"><img src="../resources/image/orange.png" class=floating></div>
				<div style="position: absolute; top: 110px; left: 165px;"><img src="../resources/image/tomato.png" class=floating></div>
				<div style="position: absolute; top: 100px; left: 180px;"><img src="../resources/image/strawberry.png" class=floating></div>
	
		</div>
		
		<!-- 메인 배너 : 클릭시 메인 메뉴로 이동 -->
		<div class="col-md-7 col-md-offset-1">
			<a href="../../${path}"><img src="../resources/image/logo.jpg"></a>
		</div>
		
	</div>
	<br><br>
    
	

	<br>
	<br>
	<br>
<%--■■■■■■■■■■■■■■■■■■■■■■ Top ■■■■■■■■■■■■■■■■■■■■■■■■--%>
	
</body>
	<%@ include file = "topMenu.jsp" %>
	<%@ include file = "topQuickMenu.jsp" %>

</html>