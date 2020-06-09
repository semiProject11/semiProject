<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" />
 <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"
    crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
    crossorigin="anonymous"></script>
  <style>
    #jin {
      background: black;
      border: none;
    }

    #young {
      font-family: "돋움";
      color: black;
      font: bold;
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
  </style>


</head>


<body class="sb-nav-fixed">


  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-light">
    <!-- <a class="navbar-brand" href="index.html">Start Bootstrap</a> -->
    <img src="<%=request.getContextPath()%>/image/logo.png" usemap="#map1" style="width: 180px; height: 40px; margin-left: 23px; ">
    <map name="map1">
      <area shape="rect" coords="00,00,180px,40px" href="home.html" target="_self" style="outline:none;">
    </map>
    <div style="padding-left: 20px;">
      <h9 style="font-weight: bold;">Category</h9>
    </div>


    <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#" style="color:black">
      <i class="fas fa-bars"></i></button><!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">

        <select class="form-control">
          <option selected>All</option>
          <option>Artist</option>
          <option>Restaurant business</option>
          <option>Medicine</option>
          <option>Sports</option>
          <option>Fashion</option>
          <option>It</option>
          <option>Finance</option>
          <option>Public official</option>
          <option>Business(foundation)</option>
          <option>Marketing</option>
          <option>Event</option>
        </select>

        <input class="form-control" type="text" placeholder="제목을 입력해주세요." aria-label="Search"
          aria-describedby="basic-addon2" />
        <div class="input-group-append"></div>
        <button class="btn btn-primary" type="submit" id="jin">
          <i class="fas fa-search"></i>

        </button>
      </div>
      </div>
    </form>

    <!-- Navbar-->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false" style="color:black">
          <i class="fas fa-user fa-fw" style="color:blacak"></i></a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="mp_my_info.html">마이페이지</a>
          <a class="dropdown-item" href="#">판매 등록</a>
          <!-- <div class="dropdown-divider"></div> -->
          <a class="dropdown-item" href="#">고객센터</a>
          <a class="dropdown-item" href="LS_login.html">로그아웃</a>

        </div>
      </li>
    </ul>
  </nav>

  <!--메인사이드바 시작-->

<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">

        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading">
              <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                  clip-rule="evenodd" />
              </svg>
              마이페이지</div>
            <a class="nav-link" href="mp_my_info.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 100-6 3 3 0 000 6z"
                    clip-rule="evenodd" />
                </svg></div>
              내정보
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-pencil" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M11.293 1.293a1 1 0 011.414 0l2 2a1 1 0 010 1.414l-9 9a1 1 0 01-.39.242l-3 1a1 1 0 01-1.266-1.265l1-3a1 1 0 01.242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 00.5.5H4v.5a.5.5 0 00.5.5H5v.5a.5.5 0 00.5.5H6v-1.5a.5.5 0 00-.5-.5H5v-.5a.5.5 0 00-.5-.5H3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              회원정보수정
            </a>
            <a class="nav-link" href="mp_buy_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-task" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M2 2.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5V3a.5.5 0 00-.5-.5H2zM3 3H2v1h1V3z"
                    clip-rule="evenodd" />
                  <path
                    d="M5 3.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zM5.5 7a.5.5 0 000 1h9a.5.5 0 000-1h-9zm0 4a.5.5 0 000 1h9a.5.5 0 000-1h-9z" />
                  <path fill-rule="evenodd"
                    d="M1.5 7a.5.5 0 01.5-.5h1a.5.5 0 01.5.5v1a.5.5 0 01-.5.5H2a.5.5 0 01-.5-.5V7zM2 7h1v1H2V7zm0 3.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5H2zm1 .5H2v1h1v-1z"
                    clip-rule="evenodd" />
                </svg></i></div>
              구매내역
            </a>
            <a class="nav-link" href="mp_sell_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-ul" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M5 11.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm-3 1a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2z"
                    clip-rule="evenodd" />
                </svg></i></div>
              판매내역
            </a>
            <a class="nav-link" href="mp_consultation_history.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-clipboard" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              1:1 상담내역
            </a>

          </div>
        </div>

        <div class="sb-sidenav-footer">
          <div class="small">Logged in as:</div>
          Start Bootstrap
        </div>
      </nav>
    </div>


  <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <script src="<%=request.getContextPath()%>/js/scripts.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
  
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
  
</body>
</html>