<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="views/common/menubar.jsp" />
	
	
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
      <!--main-->
      <br>
      <br>
      <div class="container">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" align="center">
            <div class="carousel-item active">
              <img style="height: 370px;" src="image/bts.png" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5 id="young">BTS 만남 이벤트</h5>
                <p>BTS와 함께 보낼 수 있는 올해 마지막 기회!!</p>
              </div>
            </div>
            <div class="carousel-item">
              <img style="height: 370px;" src="image/bill.png" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>빌게이츠 만남 이벤트</h5>
                <p>10년에 한번 올까말까한 만남 이벤트!!</p>
              </div>
            </div>
            <div class="carousel-item">
              <img style="height: 370px;" src="image/bts2.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Third slide label</h5>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      
        <!--img slide end-->
      <br>
      <br>
      <br>
      <div class="container">
        <div>
          <h3 style="font-size: 18px; font-weight: bold;">카테고리 별 인기 상품</h3>
        </div>
        
        <br>
        <!-- Artist -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/man.png" style="width: 25px; height: 20px;">Artist
          </h3>
        </div>
        <div class="row">
          <!-- 1번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/man.png" alt=""></a>
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
                    src="image/man.png" alt=""></a>
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
                    src="image/man.png" alt=""></a>
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
                    src="image/man.png" alt=""></a>
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
        </div> <!-- 1번째 row 끝 -->
    	
    	 <br>
        <!--Restaurant business-->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/fork.png" style="width: 25px; height: 20px;">Restaurant business
          </h3>
        </div>

        <div class="row">
          <!-- 2번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/fork.png" alt=""></a>
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
                    src="image/fork.png" alt=""></a>
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
                    src="image/fork.png" alt=""></a>
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
                    src="image/fork.png" alt=""></a>
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
        </div> <!-- 2번째 row 끝 -->

        <br>
        <!-- Medicine -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/doctor22.png" style="width: 25px; height: 20px;">Medicine
          </h3>
        </div>
        <div class="row">
          <!-- 3번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/doctor22.png" alt=""></a>
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
                    src="image/doctor22.png" alt=""></a>
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
                    src="image/doctor22.png" alt=""></a>
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
                    src="image/doctor22.png" alt=""></a>
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
        </div><!-- 3번째 row 끝 -->

        <br>
        <!-- Sports -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/soccerman.png" style="width: 25px; height: 20px;">Sports
          </h3>
        </div>

        <div class="row">
          <!-- 4번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/soccerman.png" alt=""></a>
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
                    src="image/soccerman.png" alt=""></a>
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
                    src="image/soccerman.png" alt=""></a>
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
                    src="image/soccerman.png" alt=""></a>
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
        </div><!-- 4번째 row 끝 -->

        <br>
        <!-- Fashion -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/hatt.png" style="width: 25px; height: 20px;">Fashion
          </h3>
        </div>

        <div class="row">
          <!-- 5번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/hatt.png" alt=""></a>
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
                    src="image/hatt.png" alt=""></a>
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
                    src="image/hatt.png" alt=""></a>
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
                    src="image/hatt.png" alt=""></a>
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
        </div><!-- 5번째 row 끝 -->

        <br>
        <!-- It -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/monitor.png" style="width: 25px; height: 20px;">It
          </h3>
        </div>

        <div class="row">
          <!-- 6번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/monitor.png" alt=""></a>
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
                    src="image/monitor.png" alt=""></a>
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
                    src="image/monitor.png" alt=""></a>
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
                    src="image/monitor.png" alt=""></a>
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
        </div><!-- 6번째 row 끝 -->

        <br>
        <!-- Finance -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/money8.png" style="width: 25px; height: 20px;">Finance
          </h3>
        </div>

        <div class="row">
          <!-- 7번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/money8.png" alt=""></a>
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
                    src="image/money8.png" alt=""></a>
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
                    src="image/money8.png" alt=""></a>
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
                    src="image/money8.png" alt=""></a>
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
        </div><!-- 7번째 row 끝 -->

        <br>
        <!-- Public official -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/staff.png" style="width: 25px; height: 20px;">Public official
          </h3>
        </div>

        <div class="row">
          <!-- 8번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/staff.png" alt=""></a>
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
                    src="image/staff.png" alt=""></a>
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
                    src="image/staff.png" alt=""></a>
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
                    src="image/staff.png" alt=""></a>
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
        </div><!-- 8번째 row 끝 -->

        <br>
        <!-- Business(foundation) -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/bag.png" style="width: 25px; height: 20px;">Business(foundation)
          </h3>
        </div>

        <div class="row">
          <!-- 9번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/bag.png" alt=""></a>
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
                    src="image/bag.png" alt=""></a>
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
                    src="image/bag.png" alt=""></a>
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
                    src="image/bag.png" alt=""></a>
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
        </div><!-- 9번째 row 끝 -->

        <br>
        <!-- Marketing -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/shott.png" style="width: 25px; height: 20px;">Marketing
          </h3>
        </div>

        <div class="row">
          <!-- 10번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/shott.png" alt=""></a>
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
                    src="image/shott.png" alt=""></a>
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
                    src="image/shott.png" alt=""></a>
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
                    src="image/shott.png" alt=""></a>
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
        </div><!-- 10번째 row 끝 -->

        <br>
        <!-- Event -->
        <div>
          <h3 style="font-size: 18px;">
            <img src="image/giftt.png" style="width: 25px; height: 20px;">Event
          </h3>
        </div>

        <div class="row">
          <!-- 11번째 row 시작 -->

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
              <div style="overflow: hidden;">
                <a href="subpageclick.html"><img class="card-img-top transform1"
                    src="image/giftt.png" alt=""></a>
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
                    src="image/giftt.png" alt=""></a>
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
                    src="image/giftt.png" alt=""></a>
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
                    src="image/giftt.png" alt=""></a>
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
        </div><!-- 11번째 row 끝 -->
     
    </div><!-- container 끝  -->
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