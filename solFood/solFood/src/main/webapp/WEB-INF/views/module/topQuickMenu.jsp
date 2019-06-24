<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		a { text-decoration: none;}
 		a:link { color: black; text-decoration: none !important;}
 		a:active { color: black !important; text-decoration: none !important;}
		a:visited { color: black !important; text-decoration: none !important;}
 		.quickMenu a:hover {
 				color: black !important;
 				border-radius: 5px;
 				background: #FFEBFF;
 				text-decoration: none !important;}
	</style>
	
	<script>
	$(window).scroll(function(){
		var scrollTop = $(document).scrollTop();
		if (scrollTop < 180) {
		 scrollTop = 180;
		}
		$(".quickMenu").stop();
		$(".quickMenu").animate( { "top" : scrollTop + 180 });
		});
	
	function goTop(){
		$('html').scrollTop(0);
	}
	</script>
	
	<style>
	.quickMenu { 
			position:absolute !important; 
			top:30px; 
			right:1%; 
   			z-index: 10;
		}
	.goTop {
		width: 50px;
		height: 50px;
		border: none;
		border-radius: 50px;
		background: #47C83E;
		text-align: center;
	}
	#caption {
		font-family: sans-serif;
		font-size: 10px;
		display: block;
	}
	</style>
	
	
</head>
<body>
	<div class="quickMenu" align="center">
		<br>
		<a href="cartList" id="caption"><img src="../resources/image/basket.png" alt="장바구니"><br>장바구니</a><br><br>
		<a href="" id="caption"><img src="../resources/image/newest.png" alt="최근 본 상품"><br>최근 본 상품</a><br><br>
		<a href="" id="caption"><img src="../resources/image/like.png" alt="찜한 상품"><br>찜한 상품</a><br><br>
		<a href="${path}/member/login.do"><img src="../resources/image/top.png" onclick="#" alt="맨 위로"></a><br><br>
		<a href="${path}/board/list.do" id="caption"><img src="../resources/image/top.png" onclick="#" alt="asdasd"><br>테스트페이지</a><br><br>

		<a href="${path}/member/mypage.do"><br>mypage</a><br><br>
		<a href="${path}/manager/product/product_register.do">상품등록</a><br><br>

		
	</div>
</body>
</html>