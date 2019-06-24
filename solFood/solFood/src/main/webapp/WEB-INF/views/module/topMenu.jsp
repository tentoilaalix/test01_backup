<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<%--a 스타일 --%>
	<style type="text/css">
 		a { text-decoration: none;}
 		a:link { color: black; text-decoration: none !important;}
 		a:active { color: black !important; text-decoration: none !important;}
		a:visited { color: black !important; text-decoration: none !important;}
 		a:hover { color: black !important; text-decoration: none !important;}
	</style>
    <style>
      body {
        font-weight: bold;
      }
      .jbTitle {
        text-align: center;
      }
      .jbMenu {
        background-color: #FAE0D4;
        width: 100%;
        z-index: 10;
        font-size: 18px;
      }
      .jbContent {
        
      }
      .jbFixed {
        position: fixed;
       	top: 0px;
      }
      #topMenu {
      	display: inline-block;
      	width: 100px;
      	height: 40px;
      	text-align: center;
      	line-height: 48px;
      }
      #topCate {
      	display: inline-block;
      	width: 100px;
      	height: 40px;
      	text-align: center;
      	line-height: 48px;
      }
      
      
    #topMenu::after {
    width: 67%;
    height: 0;
    background: #fff;
    content: '';
    position: absolute;
    top: 75%;
    left: 0;
    opacity: 0;
    transition: all 0.3s ease-out;
    margin: auto;
  }
  #topMenu:hover::after {
    opacity: 1;
    top: 100%;
    height: 4px;
  }
      
      #topSearch {
      	border-radius: 5px;
      }
	     
      li.dropdown {
      	list-style: none;
      }
      
      ul.dropdown-menu {
      	margin-top: 10px;
      	border-radius: none;
      }
      .dropdown-submenu{
      	position:relative;
      }
	  
	  a.dropdown-toggle:hover {
	  	background-color: #FAE0D4;
	  }
	  #topCate:hover>#middleCate{
	  	display: block;
	  }
	  .dropdown-submenu>.dropdown-menu{
	  	top:0;
	  	left:100%;
	  	margin-top: -4px;
	  	margin-left: 0px;
	  	}
	  
	  .dropdown-submenu:hover>.dropdown-menu{
	  	display:block;
	  	}

	  .dropdown-submenu>a:after{
	  	display:block;
	  	content:" ";
	  	}

	  .dropdown-submenu:hover>a:after{
	  	border-left-color:#FAE0D4;
	  	}

	  .dropdown-submenu.pull-left{
	  	float:none;
	  	}
	  	
	  .dropdown-submenu.pull-left>.dropdown-menu{
	  	left:-100%;
	  	margin-left:10px;
	  	}
	  	
.d3 {
  margin-top: 5px;
  background: #fff;
  width: 230px;
  border-radius: 5px;
 }
.d3 form {
  background: #fff;
  border-radius: 5px;
}
.d3 input, .d3 button {
  border: none;
  outline: none;
  background: transparent;
  
}
.d3 input {
  width: 100%;
  height: 40px;
  padding-left: 15px;
  border-radius: 5px;
  font-size: 10px !important;
}
.d3 button {
  height: 38px;
  width: 35px;
  position: absolute;
  top: 8px;
  right: -50px !important;
  padding: 0;
  cursor: pointer;
}
.d3 button:before {

}
    </style>
    <script>
      $( document ).ready( function() {
        var jbOffset = $( '.jbMenu' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
      });

    </script>
  </head>
  <body>

    <div class="jbTitle">
  
    </div>
    
    <div class="jbMenu">
    <div class="container">
    <div class="row">
    <div class="col-xs-2">
     <nav>
   <div>
      <ul>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="topCate"><img src="../resources/image/list.png">&nbsp;&nbsp;카테고리</a>
            <ul class="dropdown-menu" id="middleCate">
               <li class="dropdown-submenu">
                  <a href="#"><strong>채소·과일</strong></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">국산 과일</a></li>
                     <li><a href="#">수입 과일</a></li>
                     <li><a href="#">기본 채소</a></li>
                     <li><a href="#">쌈·간편채소</a></li>
                     <li><a href="#">콩나물·버섯류</a></li>
                     <li><a href="#">양파·마늘·생강·파</a></li>
                  </ul>
               </li>
               <li class="dropdown-submenu">
                  <a href="#"><strong>국·반찬·요리</strong></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">국·탕·찌개</a></li>
                     <li><a href="#">밑반찬</a></li>
                     <li><a href="#">김치·장아찌·젓갈</a></li>
                     <li><a href="#">두부·어묵</a></li>
                     <li><a href="#">메인요리</a></li>
                  </ul>
               </li>
               <li class="dropdown-submenu">
                  <a href="#"><strong>정육·계란</strong></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">소고기</a></li>
                     <li><a href="#">돼지고기</a></li>
                     <li><a href="#">양고기</a></li>
                     <li><a href="#">닭·오리고기</a></li>
                     <li><a href="#">계란·돈까스</a></li>
                  </ul>
               </li>
               <li class="dropdown-submenu">
                  <a href="#"><strong>샐러드·간편식</strong></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">샐러드·도시락</a></li>
                     <li><a href="#">간편식·냉동식품</a></li>
                     <li><a href="#">죽·수프</a></li>
                     <li><a href="#">선식·시리얼·그래놀라</a></li>
                  </ul>
               </li>
            </ul>
         </li>
      </ul>
   </div>
</nav>

  </div>
  <div class="col-xs-2">
  <a href="#" id="topMenu">공 지 사 항</a>
  </div>
  <div class="col-xs-2">
  <a href="#" id="topMenu">이 벤 트</a>
  </div>
  <div class="col-xs-2">
  <a href="#" id="topMenu">게 시 판</a>
  </div>
  <div class="col-xs-2">
  <a href="#" id="topMenu">레 시 피</a>
  </div>
  <div class="col-xs-2">
<div class="d3">
<form>
  <input type="text" placeholder="검색어 입력" style="font-size: 15px !important;">
  <button type="submit"><strong><span class="glyphicon glyphicon-search"></span></strong></button>
</form>
</div>
</div>
</div>
</div>
    <div class="jbContent">
	</div>
</div>
</html>