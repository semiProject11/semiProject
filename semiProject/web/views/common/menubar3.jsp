<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>

<%
    Member loginUser = (Member)session.getAttribute("loginUser");
    //String loginUser = "admin"; // if-else문 잘 되는지 확인하기위해 적은 코드
%>

<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="<%=request.getContextPath() %>/css/styles.css" />
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!--  <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"/> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" ></script>
  <style>
  @font-face { font-family: 'SeoulNamsanM'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/SeoulNamsanM.woff') format('woff'); 
font-weight: normal; font-style: normal; }
   *{   
      font-family : 'SeoulNamsanM';   
   }
   
   p{
      font-family : 'SeoulNamsanM';
   }
   div{
      font-family : 'SeoulNamsanM';
      font-size :medium;
   }

    #jin {
      background: black;
      border: none;
    }

    #young {
    
      color: black;
    }

    .dropdown-item {
      font-size: 14px;
    }

    .transform1:hover {
      transform: scale(1.3, 1.3);
      transition-duration: 0.5s;
    }

    .cd_id_style {
      float: left;
      padding-left: 0;
      font-size: 11px !important;
      margin: 0;
      letter-spacing: -0.37px;
      color: #999999;
      font-family: MetroSans;
      font-weight: 400;
      line-height: 1.1;
    }

    .cd_title_style {
      text-align: center;
      margin-bottom: 0;
      margin-top: 5px;
      padding: 0;
      font-size: 14px !important;
      letter-spacing: -0.3px;
      position: relative;
      line-height: 23px !important;
      height: 46px !important;
    }

    .cd_timeoutprice_style {
      padding-left: 0;
      padding-right: 0;
    }

    .cd_rankviews_style {
      padding-left: 0;
      padding-right: 0;
    }

    #cd_timeout {
      float: left;
    }

    #cd_price {
      float: right;
      font-size: 17px;
      font-weight: 700;
    }

    #cd_rank {
      float: left;
    }

    #cd_views {
      float: right;
    }
    #cd_rankimg{
      width: 20px; 
      height: 18px;
    }
    
  </style>


</head>

<body class="sb-nav-fixed sb-sidenav-toggled" >



  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-light">
    <!-- <a class="navbar-brand" href="index.html">Start Bootstrap</a> -->
    <img src="<%=request.getContextPath()%>/image/logo.png" usemap="#map1" style="width: 180px; height: 40px; margin-left: 23px;">
    <map name="map1">
      <area shape="rect" coords="00,00,180px,40px" onclick="logomain();" target="_self" style="outline:none;">
    </map>
    <div style="padding-left: 20px;">
      <h9 style="font-weight: bold;">카테고리</h9>
    </div>


    <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#" style="color:black">
      <i class="fas fa-bars"></i></button><!-- Navbar Search-->
      
    
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">

        <select class="form-control">
          <option selected>전체</option>
          <option>예술</option>
          <option>요식업</option>
          <option>의료</option>
          <option>스포츠</option>
          <option>패션</option>
          <option>It</option>
          <option>금융</option>
          <option>공무원</option>
          <option>창업</option>
          <option>마케팅</option>
          <option>이벤트</option>
				</select>
      
        <input class="form-control" type="text" placeholder="제목을 입력해주세요." aria-label="Search"
          aria-describedby="basic-addon2" />
        <div class="input-group-append"></div>
        <button class="btn btn-primary" type="submit" id="jin">
          <i class="fas fa-search"></i>
        </button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%if(loginUser == null){ %>  
            <button type="button" class="btn" onclick="loginPage();" style="background:black; color:white; width:95px;">Login</button>
        <%}else{ %>  
      </div>
      </div>
    </form>
        <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false" style="color:black">
          <i class="fas fa-user fa-fw" style="color:blacak"></i></a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" onclick="myPageinfo();">마이페이지</a>
          <a class="dropdown-item" onclick="serviceRegister();">판매 등록</a>
          <a class="dropdown-item" onclick="serviceCenter();">고객센터</a>
          <%if(loginUser.getUserId().equals("admin")){ %>
          <a class="dropdown-item" onclick="adminCenter();">관리자센터</a>
          <% } %>
          <a class="dropdown-item" onclick="logout();">로그아웃</a>
        </div>
      </li>
    </ul>
    <%} %>
    
  </nav>

<!--   <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>  
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>   -->
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</body>

  <script>
  /* 메뉴바 Login버튼 클릭시 로그인 페이지로 이동 */
  function loginPage(){
      location.href="<%=request.getContextPath()%>/views/loginAndRegister/LS_login.jsp";
      }
  
  /* 로그인 시 드롭메뉴바 마이페이지 클릭 시 마이페이지로 이동 */
  function myPageinfo(){
     location.href="<%=request.getContextPath()%>/myPage.me";
      }
  
  
  /* 로그인 시 드롭메뉴바 판매등록 클릭 시 판매등록 페이지로 이동 */
  function serviceRegister(){
      location.href="<%=request.getContextPath()%>/views/service/service_register.jsp";
      }
  
  /* 로그인 시 드롭메뉴바 고객센터 클릭 시 고객센터 페이지로 이동 */
  function serviceCenter(){
     location.href="<%=request.getContextPath()%>/list.notice";
      }
  
  
  /* 로그인 시 드롭메뉴바 관리자센터 클릭 시 관리자센터 페이지로 이동 */
  function adminCenter(){
     location.href="<%=request.getContextPath()%>/list.grade";
      }
  
  /* 로그인 시 드롭메뉴바 로그아웃 클릭 시 비 로그인화면 으로 이동 */
  function logout(){
     location.href="<%=request.getContextPath()%>/logout.me";
      }
  
/*   타임셀러 로고클릭 시 메인페이지 이동 */
  function logomain(){
	    location.href="<%=request.getContextPath()%>/main.service";
	 }
  </script>



</html>