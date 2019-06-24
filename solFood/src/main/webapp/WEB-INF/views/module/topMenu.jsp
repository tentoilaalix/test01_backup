<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
    <style>
      body {
        margin: 0px;
        padding: 0px;
      }
      .jbTitle {
        text-align: center;
      }
      .jbMenu {
        background-color: #FAE0D4;
        padding: 5px 0px;
        width: 100%;
        z-index: 10;
      }
      .jbContent {
        
      }
      .jbFixed {
        position: fixed;
        top: 0px;
      }
      #topMenu {
      	border: none;
      	background-color: #FAE0D4;
      }
      #topSearch {
      	border-radius: 5px;
      }
      
      li.dropdown {
      	list-style: none;
      	margin-top: 7px;
      }
      
      ul.dropdown-menu {
      	margin-top: 15px;
      	border-radius: none;
      }
      .dropdown-submenu{
      	position:relative;
      }
	  
	  a.dropdown-toggle:hover {
	  	background-color: #FAE0D4;
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
}
.d3 button {
  height: 38px;
  width: 35px;
  position: absolute;
  top: 0;
  right: 0;
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
    <div class="row">
    <div class="col-md-2 col-md-offset-1">
     <nav>
   <div>
      <ul>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong><span class="glyphicon glyphicon-menu-hamburger"></span>&nbsp;카테고리</strong></a>
            <ul class="dropdown-menu">
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
  <div class="col-md-2">
  <button class="btn btn-default" id="topMenu"><strong>신상품</strong></button>
  </div>
  <div class="col-md-2">
  <button class="btn btn-default" id="topMenu"><strong>베스트</strong></button>
  </div>
  <div class="col-md-2">
  <button class="btn btn-default" id="topMenu"><strong>이벤트</strong></button>
  </div>
  <div class="col-md-2">
  <div class="d3">
<form>
  <input type="text" placeholder="검색어 입력">
  <button type="submit"><strong><span class="glyphicon glyphicon-search"></span></strong></button>
</form>
</div>
  <%-- <input type="text" id="topSearch">&nbsp;<strong><span class="glyphicon glyphicon-search"></span></strong> --%>
  </div>
  </div>
  </div>
    <div class="jbContent">
	

	</div>
</html>