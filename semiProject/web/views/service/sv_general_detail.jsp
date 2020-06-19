<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.transform1:hover {
		transform: scale(2, 2);
	}
	
	.tel_info {
		position: absolute;
		z-index: 1000;
		padding: 0px 5px;
		font-size: 11px;
		width: 250px;
		border: 2px solid #c0c0c0;
		background: #fff;
		line-height: 20px;
		font-family: 'Nanum Gothic';
	}
	
	.nav-link {
		display: block;
		padding: 0.5rem 1.05rem !important;
	}
	
	.tab-pane {
		word-break: break-all !important;
	}
	
	#btn_style {
		color: white;
		background: black;
		font-size: 16px;
		width: 100%;
		font-weight: 500;
		float: unset;
	}
	
	.modal-content {
		width: 70%;
	}
	
	.modal-footer {
		padding-right: 95px;
	}
	
	#btn_style:hover {
		color: #303441 !important;
		border-color: #1d2124;
		background: #ffd400;
	}
</style>

</head>
<body>
	<jsp:include page="../common/menubar4.jsp" />
	
	
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading" style="font-size: large;">

              Category</div>
            <a class="nav-link" onclick="categoryAr();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/man.png" style="width: 25px; height: 20px;"></div>
              Artist
            </a>       
            <a class="nav-link" onclick="categoryRe();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/fork.png" style="width: 25px; height: 20px;"></div>
              Restaurant business
            </a>
            <a class="nav-link" onclick="categoryMe();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/doctor22.png" style="width: 25px; height: 20px;"></div>
              Medicine
            </a>
            <a class="nav-link" onclick="categorySp();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/soccerman.png" style="width: 25px; height: 20px;"></div>
              Sports
            </a>
            <a class="nav-link" onclick="categoryFa();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/hatt.png" style="width: 25px; height: 20px;"></div>
              Fashion
            </a>
            <a class="nav-link" onclick="categoryIt();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/monitor.png" style="width: 25px; height: 20px;"></div>
              It
            </a>
            <a class="nav-link" onclick="categoryFi();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/money8.png" style="width: 25px; height: 20px;">
              </div>
              Finance
            </a>
            <a class="nav-link" onclick="categoryPu();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/staff.png" style="width: 27px; height: 20px;"></div>
              Public official
            </a>
            <a class="nav-link" onclick="categoryBu();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/bag.png" style="width: 25px; height: 20px;"></div>
              Business(foundation)
            </a>
            <a class="nav-link" onclick="categoryMa();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/shott.png" style="width: 25px; height: 20px;"></div>
              Marketing
            </a>
            <a class="nav-link" onclick="categoryEv();">
              <div class="sb-nav-link-icon"><img src="<%=request.getContextPath()%>/image/giftt.png" style="width: 25px; height: 20px;"></div>
              Event
            </a>

       
          </div>
        </div>
      </nav>
    </div><!-- layoutSidenav_nav 끝  -->
    <div id="layoutSidenav_content">

            <div class="container">

                <div class="row" style="padding-top: 20px; padding-bottom: 20px;">
                    <a href="#">카테고리</a>
                    &nbsp; > &nbsp;
                    <a href="#">창업</a>
                </div>
                <div class="row justify-content-between">
                    <div style="padding-left: 0px;" class="col-7">
                        <img style="width: 100%;" src="<%=request.getContextPath()%>/image/bts.png" class="d-block" alt="...">


                        <nav style="padding-top: 30px;">
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                              <a class="nav-item nav-link active" id="nav-ServiceDescription-tab" data-toggle="tab" href="#nav-ServiceDescription" role="tab" aria-controls="nav-ServiceDescription" aria-selected="true">서비스 설명</a>
                              <a class="nav-item nav-link" id="nav-AvailableArea-tab" data-toggle="tab" href="#nav-AvailableArea" role="tab" aria-controls="nav-AvailableArea" aria-selected="false">가능지역</a>
                              <a class="nav-item nav-link" id="nav-AvailableDays-tab" data-toggle="tab" href="#nav-AvailableDays" role="tab" aria-controls="nav-AvailableDays" aria-selected="false">가능요일</a>
                              <a class="nav-item nav-link" id="nav-Relatedtopics-tab" data-toggle="tab" href="#nav-Relatedtopics" role="tab" aria-controls="nav-Relatedtopics" aria-selected="false">관련주제</a>
                              <a class="nav-item nav-link" id="nav-RefundPolicy-tab" data-toggle="tab" href="#nav-RefundPolicy" role="tab" aria-controls="nav-RefundPolicy" aria-selected="false">환불규정</a>
                              <a class="nav-item nav-link" id="nav-ServiceEv-tab" data-toggle="tab" href="#nav-ServiceEv" role="tab" aria-controls="nav-ServiceEv" aria-selected="false">서비스 평가</a>
                            </div>
                          </nav>
                          <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-ServiceDescription" role="tabpanel" aria-labelledby="nav-ServiceDescription-tab">
                                aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                            <div class="tab-pane fade" id="nav-AvailableArea" role="tabpanel" aria-labelledby="nav-AvailableArea-tab">B</div>
                            <div class="tab-pane fade" id="nav-AvailableDays" role="tabpanel" aria-labelledby="nav-AvailableDays-tab">C</div>
                            <div class="tab-pane fade" id="nav-Relatedtopics" role="tabpanel" aria-labelledby="nav-Relatedtopics-tab">D</div>
                            <div class="tab-pane fade" id="nav-RefundPolicy" role="tabpanel" aria-labelledby="nav-RefundPolicy-tab">E</div>
                            <div class="tab-pane fade" id="nav-ServiceEv" role="tabpanel" aria-labelledby="nav-RefundPolicy-tab">F</div>
                          </div>
                    </div>

                    <div class="col-1">
                    </div>

                    <div class="col-4">

                        <div>제목</div>
                        <h5 style="text-align: right;">300,000원</h5>
                        <h5 style="text-align: right;">(VAT포함)</h5>
                        <div style="padding: 20px 0 12px 0; border: 1px solid #e4e5ed;">

                            <div style=" top: 0; left: 0;" class="text-center">
                                <img style="width: 50px; height: 50px; border-radius: 50%;"
                                    src="<%=request.getContextPath()%>/image/bill.png" alt="...">
                            </div>
                            <h1 style="text-align: center; font-size: 22px; margin: 16px 0 0 0;">판매자 아이디 : 마동석</h1>
                            <hr style=" width: 30px;
                                        height: 2px;
                                        background: #ffd400;
                                        margin: 0 auto;
                                        margin-top: 15px;
                                        display: block;">
                            <ul style="text-align: center; padding-top: 10px; padding-left: 0px;">
                                <li style="font-size: 12px; list-style-type: none;">
                                    연락처
                                    <a id="test" style="font-family: 'Nanum Gothic'; text-decoration: none;" href="#">
                                        <img style="width:14px; padding-bottom: 2px;" src="<%=request.getContextPath()%>/image/qmark.png" alt="">
                                    </a>
                                    <span style="padding-left: 20px;
                                                width: auto;
                                                color: #14a7af;
                                                font-weight: bold;">(결제 후 공개)</span>
                                    </li>
                                    <div class="tel_info" id="tel_info" style="display: none;">
                                        <h3 style="margin: 0px;
                                                    padding: 0px;
                                                    display: block;
                                                    font-size: 1.17em;
                                                    margin-block-start: 1em;
                                                    margin-block-end: 1em;
                                                    margin-inline-start: 0px;
                                                    margin-inline-end: 0px;
                                                    font-weight: bold;">
                                            판매자의 연락처</h3>
                                        <p style="display: block;
                                                    margin-block-start: 1em;
                                                    margin-block-end: 1em;
                                                    margin-inline-start: 0px;
                                                    margin-inline-end: 0px;">
                                            주문 후 판매자의 연락처 확인이 가능해집니다.
                                            주문 전에는 판매자 문의하기를 통해 판매자에게 직접 문의를 할 수 있습니다.
                                        </p>
                                    </div>
                                <h5 style="font-size: 12px;">연락 가능시간 : 12시 ~ 17시</h5>
                            </ul>
                            <hr style=" width: 80%;
                                        background: lightgray;
                                        margin: 0 auto;
                                        margin-top: 15px;
                                        display: block;
                                        border-top: 1px solid #e4e5ed;">
                    
                            <h5 
                            style="font-size: 13px !important;
                            font-weight: 500;
                            color: #303441;
                            margin-top: 12px;
                            padding-left: 46px;">판매자 정보</h5>
                        
                            <p style="font-size: 13px !important;
                            font-weight: 500;
                            color: #303441;
                            margin-top: 12px;
                            padding-left: 46px;
                            padding-right: 46px;">
                            
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            판매자 정보 내용 판매자 정보 내용 판매자 정보 내용
                            </p>
                            

                        </div>

                
                        <!-- Button trigger modal -->

                        <div style="padding-left: 100px; padding-right: 100px;"> <!-- 구매버튼 div 시작 -->
                            <button type="button" id="btn_style" class="btn" data-toggle="modal" data-target="#exampleModalCenter">
                                구매하기
                            </button>
                            
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content" style="width: 70%;">
                                    <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">해당 상품을 구매하시겠습니까?</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    </div>
                                    <div class="modal-footer" style="padding-right: 95px;">
                                        <button type="button" class="btn btn-primary">구매하기</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                    </div> <!-- 구매버튼 div 끝 -->
                    </div>
                </div>
            </div>
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



<!-- 연락처 (?)아이콘 함수 -->
<script>
    $("#test").hover(function () {
        $("#tel_info").css("display", "block");
    })

    $("ul").hover(function () {
        $("#tel_info").css("display", "none");
    })
    
    
/*카테고리 별 상품 페이지 이동 함수*/    
    
function categoryAr(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Ar&salemethod=auction";
 }
 
function categoryRe(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Re&salemethod=auction";
 }

function categoryMe(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Me&salemethod=auction";
 }
 
function categorySp(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Sp&salemethod=auction";
 }
 
function categoryFa(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Fa&salemethod=auction";
 }
 
function categoryIt(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=It&salemethod=auction";
 }
 
function categoryFi(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Fi&salemethod=auction";
 }
 
function categoryPu(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Pu&salemethod=auction";
 }
 
function categoryBu(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Bu&salemethod=auction";
 }
 
function categoryMa(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Ma&salemethod=auction";
 }
 
function categoryEv(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=Ev&salemethod=auction";
 }
    
    
    
    
    
    
    
    
    
</script>

</html>