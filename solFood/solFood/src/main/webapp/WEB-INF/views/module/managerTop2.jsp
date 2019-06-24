<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>manager main page</title>
	<meta name="viewport" content="width=device-width. initial-scale=1">
	<link href="../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../resources/bootstrap/js/bootstrap.js"></script>
	<script src="../../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
	<%@ include file = "../module/topMemberCheck.jsp" %>
	
</head>

<body data-spy= "scroll" data-target=".navbar" data-offset="50">
	<%-- <jsp:include page="./topMemberCheck.jsp"/> --%>
	<%--=================================== header menu ==============================================--%>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${path}/manager/managerMain.do">Management</a>
			</div>
			
	<%--=================================== menu ==============================================--%>
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							상품관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
						<li><a href="${path}/manager/product/product_register.do">상품등록</a></li>
						<li><a href="${path}/manager/product/product_list.do">상품목록</a></li>
							</ul>
						</li>
						<li>
							<a href="${path}/manager/account/account_list.do">회원관리</a>
						</li>
						<li>
							<a href="${path}/manager/buy/buy_list.do">구매관리</a>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							통계관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="graph1">월별 판매 비율 리스트</a></li>
								<li><a href="graph2">상품종류별 판매 비율</a></li>
							</ul>
						</li>
						<li>
							<a href="${path}/manager/product/product_list.do">게시판관리</a>
						</li>
						<li>
							<a href="#">로그아웃</a>						
						</li>
						
	<%--================================= 관리자 account_name 보여주기 =========================================--%>
						<li id="administer">
							<a href="">관리자: <%= session.getAttribute("userName") %>님</a>
							
						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>