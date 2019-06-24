			
			
				<%-- 창현오빠가 하신거 회원목록 쫙 보는거를 여기다가 붙이면 됩니다 --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>account_list</title>
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
					<td align= "center" width="50">USER</td>
					<td align= "center" width="50">PASSWORD</td>
					<td align= "center" width="50">NAME</td>
					<td align= "center" width="50">DATE</td>
					<td align= "center" width="50">TEL</td>
					<td align= "center" width="50">ADDRESS</td>
					<td align= "center" width="50">GRADE</td>
					<td align= "center" width="50">AGE</td>
					<td align= "center" width="50">GENDER</td>
					<td align= "center" width="50">EMAIL</td>
					<td>수정</td>
					<td>삭제</td>	
				</tr>	
				
				<c:forEach items="${accountList}" var="account">
				<tr>
					<td align="center">${account.account_user}</td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					<td align="center"></td>
					
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