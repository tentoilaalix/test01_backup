<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>account_list</title>
	<link href="../../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../../../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../../../resources/bootstrap/js/bootstrap.js"></script>
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
	 
	<!-- include summernote css/js-->
	<link href="../../../resources/summernote/summernote.css" rel="stylesheet">
	<script src="../../../resources/summernote/summernote.js"></script>
	<script src="../../../resources/summernote/lang/summernote-ko-KR.js"></script>
	<script type="text/javascript">
	$(function() {
		$('.summernote').summernote({
			height: 300,          // 기본 높이값
			minHeight: null,      // 최소 높이값(null은 제한 없음)
			maxHeight: null,      // 최대 높이값(null은 제한 없음)
			focus: true,          // 페이지가 열릴때 포커스를 지정함
			lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
		});
	});
	</script>
</head>
<body>
	<%--■■■■■■■■■■■■■■■■■■■■■■ top & menu ■■■■■■■■■■■■■■■■■■■■■■■■--%>	
	<%@ include file = "../../module/managerTop.jsp" %>
	<br><br><br><br>
	
	<%--■■■■■■■■■■■■■■■■■■■■■■ contents ■■■■■■■■■■■■■■■■■■■■■■■■--%>
	<h2 align="center">상품등록</h2>	
	<div class="container">
	<form method="post" name="productInsertForm" action="/productInsertPro" onsubmit="postForm()">
		<div class="form-group col-md-8 col-md-offset-2">
		
		<%-- 제목 --%>
		<div class="form-group">
		    <label for="staticEmail">상품ID:</label>
		    <input class="form-control form-control-lg" id="product_id" name="product_id" type="text">
		
		    <label for="staticEmail">상품이름:</label>
		    <input class="form-control form-control-lg" id="product_name" name="product_name" type="text">

		    <label for="staticEmail">상품카테고리-대분류:</label>
		    <input class="form-control form-control-lg" id="product_category1" name="product_category1"  type="text">
	
		    <label for="staticEmail">상품카테고리-소분류:</label>
		    <input class="form-control form-control-lg" id="product_category2" name="product_category2" type="text">
		    
		    <label for="staticEmail">상품가격:</label>
		    <input class="form-control form-control-lg" id="product_price" name="product_price" type="text">
		    
		    <label for="staticEmail">상품할인:</label>
		    <input class="form-control form-control-lg" id="product_discountrate" name="product_discountrate" type="text">%
		    
		    <label for="staticEmail">상품개수:</label>
		    <input class="form-control form-control-lg" id="product_count" name="product_count" type="text">
		    
		    <label for="staticEmail">상품대표사진:</label>
		    <input class="form-control form-control-lg" id="product_image" name="product_image" type="file">
		    
		    <label for="staticEmail">상품PACK:</label>
		    <input class="form-control form-control-lg" id="product_package" name="product_package" type="text">
		
			<label for="staticEmail">상품EA:</label>
		    <input class="form-control form-control-lg" id="product_ea" name="product_ea" type="text">
		
		    <label for="staticEmail">상품입고날짜:</label>(2019-00-00)
		    <input class="form-control form-control-lg" id="product_date" name="product_date" type="text">
		
			<%-- 상품내용 --%>
			<textarea name="product_content" style="display:none"></textarea>
		</div>
		
		<%-- 노트 --%>
		<label for="staticEmail">상품설명:</label>
		<div class="form-group" id="summernote" ><p></p></div>
		
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					height: 500,          // 기본 높이값
					width: 800,
					minHeight: null,      // 최소 높이값(null은 제한 없음)
					maxHeight: null,      // 최대 높이값(null은 제한 없음)
					//focus: true,        // 페이지가 열릴때 포커스를 지정함
					lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
				});
			});
			
			function postForm(){
				$('textarea[name="product_content"]').val($('#summernote').summernote('code'));
			}
		</script>
		
		<!-- 서브밋 -->
		<div class="form-group">
		    <button type="submit" name="submit" class="btn btn-primary">등록</button>
		</div>
		</div>
	</form>
	</div>

<!-- 	private int product_id;
    private String product_name;
    private String product_category1;
    private String product_category2;
    private int product_price;
    private int product_discountrate;
    private int product_count;
    private String product_image;
    private int product_package;
    private int product_ea;
    private String product_content;
    private Date product_date; -->
 
 
</body>
	<!-- include summernote css/js-->
	<link href="../../../resources/summernote/summernote.css" rel="stylesheet">
	<script src="../../../resources/summernote/summernote.js"></script>
	<script src="../../../resources/summernote/lang/summernote-ko-KR.js"></script>
</html>

