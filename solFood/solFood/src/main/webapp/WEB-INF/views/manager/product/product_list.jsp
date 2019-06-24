<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>product_list</title>
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<%@ include file = "../../module/managerTop.jsp" %>
	
</head>
<body>
	<%--■■■■■■■■■■■■■■■■■■■■■■ top & menu ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<jsp:include page="../../module/managerTop.jsp"/>
	<br><br><br><br>
	
	<%--■■■■■■■■■■■■■■■■■■■■■■ contents ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<div class="table">
	<h1>상품관리 : 상품목록</h1>
		<table class="table table-bordered table-striped table-hover">
				<tr height="30" class="info">
					<td align= "center" width="50">ID</td>
					<td align= "center" width="50">NAME</td>
					<td align= "center" width="50">CATEGORY1</td>
					<td align= "center" width="50">CATEGORY2</td>
					<td align= "center" width="50">PRICE</td>
					<td align= "center" width="50">DISCOUNT RATE</td>
					<td align= "center" width="50">COUNT</td>
					<td align= "center" width="50">IMAGE</td>
					<td align= "center" width="50">PACKAGE</td>
					<td align= "center" width="50">EA</td>
					<td align= "center" width="50">CONTENT</td>
					<td align= "center" width="50">DATE</td>
					<td>수정</td>
					<td>삭제</td>	
				</tr>	
				
				<c:forEach items="${productList}" var="product">
				<tr>
					<td align="center">${product.product_id}</td>
					<td align="center">${product.product_name}</td>
					<td align="center">${product.product_category1}</td>
					<td align="center">${product.product_category2}</td>
					<td align="center">${product.product_price}</td>
					<td align="center">${product.product_discountrate}</td>
					<td align="center">${product.product_count}</td>
					<td align="center">${product.product_image}</td>
					<td align="center">${product.product_package}</td>
					<td align="center">${product.product_ea}</td>
					<td align="center">${product.product_content}</td>
					<td align="center">${product.product_date}</td>
					
					<%--==========================수정/ 삭제======================================= --%>
					<td align="center">
						<a href="productUpdateForm.jsp?product_id=">수정</a>
					</td>
					<td align="center">
						<a href="productDeleteForm.jsp?product_id=">삭제</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>