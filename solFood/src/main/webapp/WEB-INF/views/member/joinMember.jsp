<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file = "../module/Top.jsp" %>
</head>
<body>
	<div align="center">
		<h1>회원가입</h1>
		
		
		<form class="form-horizontal" method="post">
		
			<div class="form-group">
			  	<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			 	 <div class="col-sm-10">
			    	<input type="email" class="form-control" id="inputEmail3" placeholder="Email">
			  	</div>
			</div>
		
		
		
			<div class="form-group">
				<label class="control-label col-sm-1">아이디</label>
				<div class="input-group col-sm-3">
					
					<input type="text" class="form-control" name="account_user" maxlength="20" placeholder="Enter Title" aria-label="Amount (to the nearest dollar)"  aria-describedby="basic-addon2">
					<span class="input-group-addon" id="basic-addon2">@example.com</span>
				</div>
			</div>
			
			<!-- <div class="form-group">
				<label class="control-label col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_password" maxlength="20" placeholder="Enter Writer">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_name" maxlength="20" placeholder="Enter Writer">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_tel" maxlength="20" placeholder="Enter Writer">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_address" maxlength="50" placeholder="Enter Writer">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">생년월일</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_age" maxlength="20" placeholder="Enter Writer">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">성별</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_gender" maxlength="20" placeholder="Enter Writer">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2">E-Mail</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="account_email" maxlength="40" placeholder="Enter Writer">
				</div>
			</div> -->
			
			
			
			
			
			
			
			
			
			
			
			
			
			<div class="form-group">
			<button type="submit" class="btn btn-primary btn-sm">가입완료</button>
			</div>
		</form>




	</div>
</body>
</html>