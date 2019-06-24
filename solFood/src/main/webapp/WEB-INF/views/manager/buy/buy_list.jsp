<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>buy_list</title>
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<%--■■■■■■■■■■■■■■■■■■■■■■ top & menu ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<jsp:include page="../../module/managerTop.jsp"/>
	<br><br><br><br>
	
	<%--■■■■■■■■■■■■■■■■■■■■■■ contents ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<div class="table">
		<table class="table table-bordered table-striped table-hover">
				<tr height="30" class="info">
					<td align= "center" width="50">ID</td>
					<td align= "center" width="50">PRICE</td>
					<td align= "center" width="50">DATE</td>
					<td align= "center" width="50">ADDRESS</td>
					<td align= "center" width="50">TEL</td>
					<td align= "center" width="50">DELIVERY</td>
					<td align= "center" width="50">ACCOUNT USER</td>
					<td align= "center" width="50">PRODUCT ID</td>
					<td align= "center" width="50">PRODUCT COUNT</td>
					<td>수정</td>
					<td>삭제</td>	
				</tr>	
				
				<c:forEach items="${buyList}" var="buy">
				<tr>
					<td align="center">${buy.buy_id}</td>
					<td align="center">${buy.buy_price}</td>
					<td align="center">${buy.buy_date}</td>
					<td align="center">${buy.buy_address}</td>
					<td align="center">${buy.buy_tel}</td>
					<td align="center">${buy.buy_delivery}</td>
					<td align="center">${buy.account_user}</td>
					<td align="center">${buy.product_id}</td>
					<td align="center">${buy.product_count}</td>
					
					<%--==========================수정/ 삭제======================================= --%>
					<td align="center">
						<a href="buyUpdateForm.jsp?product_id=">수정</a>
					</td>
					<td align="center">
						<a href="buyDeleteForm.jsp?product_id=">삭제</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>