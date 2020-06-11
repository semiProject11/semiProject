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

    .tab-pane{
        word-break:break-all !important;
    }

    #btn_style{
        color: white;
        background: black;
        font-size: 16px;
        width: 100%;
        font-weight: 500;
        float: unset;
    }
    .form-check{
        padding-left: 17%;
        padding-bottom: 10px;
    }
    #btn_style:hover{
        color: #303441!important;
        border-color: #1d2124;
        background: #ffd400;
    }

</style>


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
                            <div class="tab-pane fade" id="nav-AvailableArea" role="tabpanel" aria-labelledby="nav-AvailableArea-tab">
                             B
                            </div>
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
                        <h5 style="text-align: right;">현재가</h5>
                        <h5 style="text-align: right;">(VAT포함)</h5>
                        
                        
                
                            <h5>마감시간</h5>
                            <span id="time" font-size:20px;font-weight:bold;line-height:36px;></span>
                            <!-- <span id= "ex"></span> -->
                                   
                            
                        <!-- <div id="timeout" style="padding-left: 218px;"> -->
                            
                        <!-- </div> -->
                        


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

                       
                        <div style="padding-left: 100px; padding-right: 100px;"> <!-- 입찰버튼 div 시작 -->
                            <button type="button" id="btn_style" class="btn" data-toggle="modal" data-target="#exampleModalCenter">
                                입찰하기
                            </button>
                            
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content" style="width: 100%;">
                                    <div class="modal-header" style="border-bottom: none; padding-bottom: 0;">

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                              <span class="input-group-text" id="inputGroup-sizing-default">입찰 금액</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                            placeholder="입찰금액을 입력해주세요.">
                                          </div>

                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    </div>


                                    <span>
                                        <h6 style="text-align: center; color: red;font-weight: 400;"> ※주의 - 입찰취소는 불가하오니, 신중히 입찰해주십시오.</h6>
                                    </span>
                                    <div class="modal-footer" style="padding-top: 0; padding-right: 35%; border-top: none;">

                                        <div>
                                        <button type="button" class="btn btn-primary">입찰하기</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                        </div>
                                        
                                    </div>
                    
                                </div>
                               
                                </div>
                            </div>
                    </div> <!-- 입찰버튼 div 끝 -->
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
</script>





<script>
    function remaindTime() {
        var now = new Date(); // 현재 시간
        var open = new Date(now.getFullYear(),now.getMonth(),now.getDate(),now); // 시작 시간
        
        var end = new Date(2020,05,15,18,39,00); // 끝나는 시간
        // var end = new Date(now.getFullYear(),now.getMonth(),now.getDate(),48,42,00); // 끝나는 시간
        
        // var timeLeft = '357611';
        


        // now.getFullYear() = 현재 년도 2020
        // now.getMonth() = 입력 달 + 1 ex) (입력 달(5) + 1)=현재 달(6)
        // now.getDate() = 현재 일

        var outputString = ""; // 출력 변수
        var exputString = "";


        var nt = now.getTime(); // 현재 시간 getTime() = msec(1/1000)
        var et = end.getTime(); // 끝나는 시간
        
        var result = end - now;

        // 1min = 60sec
        // 1hour = 3600sec
        // 1day = 86400sec
        
        exp = Math.floor(result/3600)/60;
        // exp = nt;
        sec = parseInt(et - nt) / 1000; // 끝나는 시간 - 현재 시간
        day  = parseInt(sec/60/60/24);
        sec = (sec - (day * 60 * 60 * 24));
        hour = parseInt(sec/60/60);
        sec = (sec - (hour*60*60));
        min = parseInt(sec/60);
        sec = parseInt(sec-(min*60));
        // if(hour<10){hour="0"+hour;}
        // if(min<10){min="0"+min;}
        // if(sec<10){sec="0"+sec;}
        // $(".hours").html(hour);
        // $(".minutes").html(min);
        // $(".seconds").html(sec);
        // $(".nt").html(nt);
        // $(".et").html(et);
        if (new Date(2020,05,10,21,48,00) <= 0 ) {
        outputString += "경매정보를 수신중입니다.";

        } else {

            if (day > 0) {
                outputString += day + "일＋";
            }

            outputString += ((hour > 0) ? hour + ":":"") + ((min<10)?"0" + min:min) + ":" + ((sec<10)?"0"+sec:sec);
            // 삼항연산자 ((조건문) ? 참 : 거짓)

        }
		// timeLeft -= 1;
		// timeSinceLast += 1;
        document.getElementById("time").innerHTML = outputString;
        
        exputString = exp;
        document.getElementById("ex").innerHTML = exputString;

       
        // $("#timeout").css("display","none"); 

        // if(hour==0&&min==0&&sec<0)
        // {
        //     $("#timeout").css("display","none"); 
        // }
    
 }
 
 setInterval(remaindTime,1000);

</script>


</html>