<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<%-- =============================== top =========================================--%>
	<%@ include file = "../module/Top.jsp" %>
</head>
<body>
<h1>마이페이지</h1>
<hr>

<%-- =============================== contents =======================================--%>
<table>
	<thead>
		<tr>
			<th>account_user</th>
			<th>account_password</th>
			<th>account_name</th>
			<th>account_tel</th>
			<th>account_date</th>
			<th>account_address</th>
			<th>account_grade</th>
			<th>account_age</th>
			<th>account_gender</th>
			<th>account_email</th>    	
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${login.account_user}</td>
			<td>${login.account_password}</td>
			<td>${login.account_name}</td>
			<td>${login.account_tel}</td>
			<td>${login.account_date}</td>
			<td>${login.account_address}</td>
			<td>${login.account_grade}</td>
			<td>${login.account_age}</td>
			<td>${login.account_gender}</td>
			<td>${login.account_email}</td>
		</tr>
	</tbody>
</table> 

</body>
</html>