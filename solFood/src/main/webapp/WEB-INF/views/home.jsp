<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%NumberFormat nf = NumberFormat.getNumberInstance();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SolFood</title>
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resources/css/carouselMulti.css" rel="stylesheet">
	<link href="../resources/css/animate.css" rel="stylesheet">
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/css/multi.js"></script>
	<style type="text/css">
		a { text-decoration: none;}
 		a:link { color: black; text-decoration: none !important;}
 		a:active { color: black !important; text-decoration: none !important;}
		a:visited { color: black !important; text-decoration: none !important;}
 		a:hover { color: black !important; text-decoration: none !important;}
	</style>
	<style>
		body {
		padding: 10px 15px 0px 15px;
		width: 100%;
		font-family: 굴림체;
		align: center !important;
		}

		#thumb {
			border: 0;
		}
		#eventArea {
			background-color: #EAEAEA;
		}
		.recipeHr {
			border: 0;
    		height: 2px;
    		background: #EAEAEA;
		}
	</style>
</head>
<body>

<!--■■■■■■■■■■■■■■■■■■■■■■ Header ■■■■■■■■■■■■■■■■■■■■■■■■-->

<jsp:include page="module/Top.jsp" flush="false"/>
<br><br>

<!--■■■■■■■■■■■■■■■■■■■■■■ 상단 배너 ■■■■■■■■■■■■■■■■■■■■■■■■-->

	<div id="myCarousel" class="carousel slide text-center" data-ride ="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active" align="center">
				<a href=""><img src="../resources/image/banner1.jpg"></a>
			</div>
			<div class="item" align="center">
				<a href=""><img src="../resources/image/banner2.jpg"></a>
			</div>
			<div class="item" align="center">
				<a href=""><img src="../resources/image/banner3.jpg"></a>
			</div>
		</div>
		<!-- Left and Right Controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		</a>
	</div>
<br><br>

<!--■■■■■■■■■■■■■■■■■■■■■■ 카테고리별 품목들 ■■■■■■■■■■■■■■■■■■■■■■■■-->

<div class="container">
<div align="center"><h2>인기 상품</h2></div><br><br><br>
    <div class="row">
		<div class="col-md-12">
                <div id="Carousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                <div class="item active">
                	<div class="row">
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods1.jpg" style="max-width:100%;"></a><br>
                	  <a href="#" class="noul"><strong>[신선한특가]식빵+유기농 제주 목초 우유</strong><br>
						<%=nf.format(5900)%>원</a></div>
                	 <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods2.jpg" style="max-width:100%;"></a><br>
                	   <a href="#" class="noul"><strong>[신선한특가] DOLE 실속 바나나</strong><br>
						<%=nf.format(1900)%>원</a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods3.jpg" style="max-width:100%;"></a><br>
                	   <a href="#" class="noul"><strong>DOLE 스위티오 바나나</strong><br>
						<%=nf.format(3800)%>원</a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods4.jpg" style="max-width:100%;"></a><br>
                	  <a href="#" class="noul"><strong>GAP 가지</strong><br>
						<%=nf.format(2100)%>원</a></div> 
                	</div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                	<div class="row">
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods5.jpg" style="max-width:100%;"></a><br>
                	  <a href="#" class="noul"><strong>[나탈리스]프리미엄 착즙 오렌지비트 주스</strong><br>
						<%=nf.format(9900)%>원</a></div>
                	 <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods6.jpg" style="max-width:100%;"></a><br>
                	   <a href="#" class="noul"><strong>[콜리탈리] 발사믹 8종 </strong><br>
						<%=nf.format(10900)%>원</a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods7.jpg" style="max-width:100%;"></a><br>
                	   <a href="#" class="noul"><strong>[얼리키친] 수제 등심 돈까스(냉동)</strong><br>
						<%=nf.format(10000)%>원</a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="../resources/image/goods8.jpg" style="max-width:100%;"></a><br>
                	  <a href="#" class="noul"><strong>[휘태커스] 초콜릿 6종</strong><br>
						<%=nf.format(4130)%>원</a></div> 
                	</div><!--.row-->
                </div><!--.item-->
                </div><!--.carousel-inner-->
                <a data-slide="prev" href="#Carousel" class="left slide-control"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
                <a data-slide="next" href="#Carousel" class="right slide-control"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
                </div><!--.Carousel-->
		</div>
	</div>
</div><!--.container-->

<br><br><br><br>

<div class="container" id="eventArea">
	<div class="col-md-12"><br><br>
		<div align="center"><h1><a href="#">이벤트 보기&nbsp;<span class="glyphicon glyphicon-gift"></span></a></h1></div>
		<br><br><br>
<div class="col-md-12" align="center">
	<div class="row">
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event1.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>한식 레스토랑</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>불고기·국물요리 최대 15% 할인</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event2.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>정직·신뢰 제품</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>서강유업 최대 20% 할인</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event3.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>삼진어묵 특가전</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>어묵 5% 할인 & GIFT</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	</div><%-- div row --%><br><br><br>
	<div class="row">
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event4.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>따끈따끈 브레드</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>바게트·식빵 최대 30% 할인</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event5.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>다이어트의 계절</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>샐러드·다이어트 식품 30% 할인</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	<div class="col-md-4">
  	<figure class="snip1132">
 		 <img src="../resources/image/event6.jpg" alt="sample22" />
  	<figcaption>
    	<div class="heading">
      		<h3><span>프리미엄 요거트</span></h3>
    	</div>
    	<div class="caption">
      		<p><strong>요거트·유산균 음료 15% 할인</strong></p>
    	</div>
  	</figcaption>
  		<a href="#"></a>
	</figure>
	</div>
	</div><%-- div row --%><br><br><br>
</div>
</div>
</div>
<br><br><br><br>

<%--■■■■■■■■■■■■■■■■■■■■■■ 레시피 ■■■■■■■■■■■■■■■■■■■■■■■■■--%>
<div class="container">
<div align="center"><h2>SolFood 레시피</h2></div>
<br><hr class="recipeHr">
<div class="row" align="center">
<div class="col-xs-4">
<figure class="snip1436">
  <img src="../resources/image/dakbokk.png"/>
  <figcaption>
    <h3>토종닭 캐슈넛볶음</h3>
    <p>토종닭 1팩, 캐슈넛 1/2컵, 마늘종 10대, 마늘 10알, 양파 1/2개, 베트남 고추 10개, 다진생강 1/4 작은술</p><a href="#" class="read-more">자세히 보기</a>
  </figcaption>
</figure>
</div>
<div class="col-xs-4">
<figure class="snip1436"><img src="../resources/image/gomtang.png"/>
  <figcaption>
    <h3>꼬리곰탕</h3>
    <p>한우 꼬리 1kg, 마늘 10알, 대파 1/2대, 양파 1개, 월계수잎 3장, 통후추 1작은술</p><a href="#" class="read-more">자세히 보기</a>
  </figcaption>
</figure>
</div>
<div class="col-xs-4">
<figure class="snip1436"><img src="../resources/image/meat.png"/>
  <figcaption>
    <h3>우족수육</h3>
    <p>우족 1kg, 마늘 10알, 대파 1대, 양파 1개, 부추 50g, 월계수잎 3장, 통후추 1작은술, 연겨자 1작은술</p><a href="#" class="read-more">자세히 보기</a>
  </figcaption>
</figure>
</div>
</div>
</div><br><br><br>
<div class="container" id="recipeInfo">
<div align="center">
	<img src="../resources/image/spatula.png" class="bounce">&nbsp;
	<img src="../resources/image/cleaver.png" class="bounce">&nbsp;
	<img src="../resources/image/ladle.png" class="bounce">&nbsp;
	<img src="../resources/image/stew.png" class="bounce">&nbsp;&nbsp;
	<br><br>
	<p style="font-size: 15px; font-weight: bold">SolFood만의 레시피로 건강하고 맛있는 요리를 해보세요 !</p>
</div>
</div>
<br>
<br>
<br>


<!--■■■■■■■■■■■■■■■■■■■■■■ Bottom ■■■■■■■■■■■■■■■■■■■■■■■■-->
<jsp:include page="module/Bottom.jsp" flush="false"/>

</body>
</html>