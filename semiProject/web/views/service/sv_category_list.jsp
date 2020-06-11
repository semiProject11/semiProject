<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	
	
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading" style="font-size: large;">

              Category</div>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/man.png" style="width: 25px; height: 20px;"></div>
              Artist
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/fork.png" style="width: 25px; height: 20px;"></div>
              Restaurant business
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/doctor22.png" style="width: 25px; height: 20px;"></div>
              Medicine
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/soccerman.png" style="width: 25px; height: 20px;"></div>
              Sports
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/hatt.png" style="width: 25px; height: 20px;"></div>
              Fashion
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/monitor.png" style="width: 25px; height: 20px;"></div>
              It
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/money8.png" style="width: 25px; height: 20px;">
              </div>
              Finance
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/staff.png" style="width: 27px; height: 20px;"></div>
              Public official
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/bag.png" style="width: 25px; height: 20px;"></div>
              Business(foundation)
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/shott.png" style="width: 25px; height: 20px;"></div>
              Marketing
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/giftt.png" style="width: 25px; height: 20px;"></div>
              Event
            </a>

       
          </div>
        </div>
      </nav>
    </div><!-- layoutSidenav_nav 끝  -->
    
      <div id="layoutSidenav_content">
            <!-- 경매 및 일반 / 정렬 표시 -->
            <br>
            <div class="container">
                <div class="row" style="height: 30px !important">
                    <div class="col-lg-9">
                        <table>
                            <tr>
                                <td>
                                    <label style="font-size: 20px;">카테고리 > 선택 카테고리 명</label>
                                </td>
                            </tr>
                        </table>

                    </div>
                    <div class="col-lg-3">
                        <form action="">
                            <table style="float: right;">
                                <tr>
                                    <td>
                                        <input type="radio" id="auction" name="salemethod" value="auction" checked>
                                        <label for="auction" style="font-size: 15px;">경매</label> &nbsp;
                                    </td>
                                    <td>
                                        <input type="radio" id="general" name="salemethod" value="general">
                                        <label for="general" style="font-size: 15px;">일반</label>
                                    </td>
                                    <td>
                                        <div class="dropdown">
                                            <a class="btn btn-dong btn-sm dropdown-toggle" href="#" role="button"
                                                id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                <label style="font-size: 15px;">정렬</label>
                                            </a>             
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <a class="dropdown-item" href="#">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="reset" name="sort"
                                                            class="custom-control-input" checked>
                                                        <label class="custom-control-label"
                                                            for="reset">초기화</label>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item" href="#">
                                                  <div class="custom-control custom-radio">
                                                      <input type="radio" id="highprice" name="sort"
                                                          class="custom-control-input">
                                                      <label class="custom-control-label"
                                                          for="highprice">높은 가격순</label>
                                                  </div>
                                              </a>
                                                <a class="dropdown-item" href="#">
                                                  <div class="custom-control custom-radio">
                                                      <input type="radio" id="lowprice" name="sort"
                                                          class="custom-control-input">
                                                      <label class="custom-control-label"
                                                          for="lowprice">낮은 가격순</label>
                                                  </div>
                                              </a>
                                                <a class="dropdown-item" href="#">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="views" name="sort"
                                                            class="custom-control-input">
                                                        <label class="custom-control-label"
                                                            for="views">조회수 순</label>
                                                    </div>
                                                </a>
                                                <a class="dropdown-item" href="#">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="newregistration" name="sort"
                                                            class="custom-control-input">
                                                        <label class="custom-control-label"
                                                            for="newregistration">신규등록 순</label>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                        </form>
                    </div>
                </div>
                <hr style="margin-top: 0;">
            </div>

            <!--img slide end-->
            <div class="container">
                <!-- 컨테이너 시작-->
                <div class="row">
                    <!-- 첫번째 row 시작 -->

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                </div> <!-- 첫번째 row 끝 -->

                <div class="row">
                    <!-- 두번째 row 시작 -->

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                </div> <!-- 두번째 row 끝 -->

                <div class="row">
                    <!-- 세번째 row 시작 -->

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card h-100">
                          <div style="overflow: hidden;">
                            <a href="subpageclick.html"><img class="card-img-top transform1"
                                src="<%=request.getContextPath()%>/image/man.png" alt=""></a>
                          </div>
                          <ul class="list-group list-group-flush">
                            <li class="list-group-item cd_id_style">아이디(왼쪽정렬)</li>
                            <li class="list-group-item cd_title_style">술집 창업에 대한 노하우를 팝니다. 관심있으면 클릭!!</li>
                            <li class="list-group-item cd_timeoutprice_style">
                              <span id="cd_timeout">마감시간</span>
                              <span id="cd_price">300,000원</span>
                            </li>
                            <li class="list-group-item cd_rankviews_style">
                              <span id="cd_rank">등급 : 다이아</span>
                              <span id="cd_views">조회수 : 81</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                </div> <!-- 세번째 row 끝 -->
            </div><!--컨테이너 끝 -->



            <!--footer-->
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2019</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div><!-- layoutSidenav_content 끝 -->	   
	</div><!-- layoutSidenav 끝 -->
</body>
</html>