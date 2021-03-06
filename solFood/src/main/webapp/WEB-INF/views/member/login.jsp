<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file = "../module/Top.jsp" %>
	<script>
    $(document).ready(function(){
        $("#btnLogin").click(function(){
            // 태크.val() : 태그에 입력된 값
            // 태크.val("값") : 태그의 값을 변경 
            var account_user = $("#account_user").val();
            var account_user = $("#account_password").val();
            if(account_user == ""){
                alert("아이디를 입력하세요.");
                $("#account_user").focus(); // 입력포커스 이동
                return; // 함수 종료
            }
            if(account_password == ""){
                alert("비밀번호를 입력하세요.");
                $("#account_password").focus();
                return;
            }
            // 폼 내부의 데이터를 전송할 주소
            document.loginForm.action="${path}/member/loginPro.do"
            // 제출
            document.loginForm.submit();
        });
    });
</script>
</head>
<body>


<div align="center">
	<h1>login</h1>
	<form name="loginForm" class="form-horizontal" method="post">
		<table border="1" width="400px">
            <tr>
                <td>아이디</td>
                <td><input name="account_user" id="account_user"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="text" name="account_password" id="account_password"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="button" id="btnLogin">로그인</button>
                <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
                </td>
            </tr>
        </table>
	</form>
</div>



</body>
</html>