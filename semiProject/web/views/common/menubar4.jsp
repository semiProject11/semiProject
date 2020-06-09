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
                <!--클릭할때 글자색상이 파란색이라 color바꿔줌-->
                <div class="sb-sidenav-menu">
                    <div class="nav">

                        <div class="sb-sidenav-menu-heading">
                            <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                                    clip-rule="evenodd" />
                            </svg>
                            관리자센터</div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                            aria-expanded="false" aria-controls="collapseUsers">
                            <svg class="bi bi-people-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;사용자 관리
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseUsers" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="admin_grade.html">판매자 등급 관리</a>
                                <a class="nav-link" href="admin_transaction.html">거래내역 관리</a>
                                <a class="nav-link" href="admin_review.html">전체 리뷰 관리</a>
                                <a class="nav-link" href="admin_inquiry.html">문의 사항 관리</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReport"
                            aria-expanded="false" aria-controls="collapseReport">
                            <svg class="bi bi-brightness-alt-high-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;신고처리
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseReport" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_report.html">신고
                                    내역 관리</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePoints"
                            aria-expanded="false" aria-controls="collapsePoints">

                            <svg class="bi bi-server" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M13 2c0-1.105-2.239-2-5-2S3 .895 3 2s2.239 2 5 2 5-.895 5-2z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 3.75c-.322.24-.698.435-1.093.593C10.857 4.763 9.475 5 8 5s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 3.75V6c0 1.105 2.239 2 5 2s5-.895 5-2V3.75z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 7.75c-.322.24-.698.435-1.093.593C10.857 8.763 9.475 9 8 9s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 7.75V10c0 1.105 2.239 2 5 2s5-.895 5-2V7.75z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 11.75c-.322.24-.698.435-1.093.593-1.05.42-2.432.657-3.907.657s-2.857-.237-3.907-.657A4.883 4.883 0 0 1 3 11.75V14c0 1.105 2.239 2 5 2s5-.895 5-2v-2.25z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;포인트/환불
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePoints" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_point.html">포인트
                                    관리</a><a class="nav-link" href="admin_refund.html">환불 관리</a></nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNotice"
                            aria-expanded="false" aria-controls="collapseNotice">
                            <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                                <path fill-rule="evenodd"
                                    d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;공지사항/이벤트
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseNotice" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_notice.html">공지사항
                                    관리</a><a class="nav-link" href="admin_event.html">이벤트 관리</a></nav>
                        </div>
                    </div>
                </div>

                <!--side nav footer start-->
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