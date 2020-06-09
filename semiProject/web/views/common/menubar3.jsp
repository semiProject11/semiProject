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
              고객센터</div>
            <a class="nav-link" href="cs_notice.html">
              <div class="sb-nav-link-icon">
                <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                  <path fill-rule="evenodd"
                    d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
                    clip-rule="evenodd" />
                </svg>
              </div>
              공지사항

            </a>
            <a class="nav-link" href="cs_faq.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-question-circle" width="1em" height="1em"
                  viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z"
                    clip-rule="evenodd" />
                  <path
                    d="M5.25 6.033h1.32c0-.781.458-1.384 1.36-1.384.685 0 1.313.343 1.313 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.007.463h1.307v-.355c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.326 0-2.786.647-2.754 2.533zm1.562 5.516c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
                </svg></div>
              FAQ
            </a>
            <a class="nav-link" href="cs_inquiry.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-clipboard" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              1:1 문의
            </a>
            <a class="nav-link" href="cs_report.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-brightness-alt-high-fill" width="1em" height="1em"
                  viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
                    clip-rule="evenodd" />
                </svg></div>
              신고하기
            </a>
            <a class="nav-link" href="cs_law.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-file-text" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1h8a2 2 0 012 2v10a2 2 0 01-2 2H4a2 2 0 01-2-2V3a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V3a1 1 0 00-1-1H4z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M4.5 10.5A.5.5 0 015 10h3a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 8h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 6h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 4h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5z"
                    clip-rule="evenodd" />
                </svg></div>
              개인정보처리방침
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