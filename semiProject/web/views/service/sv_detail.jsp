<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="service.model.vo.*, member.model.vo.*,java.util.ArrayList"%>
    
<%
	CategoryListPd clpd = (CategoryListPd)request.getAttribute("clpd");
 	ArrayList<Service_SeviceFilesTable_oh> flist = (ArrayList<Service_SeviceFilesTable_oh>)request.getAttribute("flist");
 	ArrayList<Service_info> infolist = (ArrayList<Service_info>)request.getAttribute("infolist");
 	ArrayList<Service_Review> rlist = (ArrayList<Service_Review>)request.getAttribute("rlist");
 	
 	Service sv = (Service)request.getAttribute("sv"); // 현재 서비스 상품을 구매자 번호 담은 객체
/*  	String a = (String)request.getAttribute("a"); */
 	
 	/* int price= (int)request.getAttribute("insertprice2");
 	
 	if(price==0){
 		price = 0;	
 	}else{
 		price = (int)request.getAttribute("insertprice2");
 	} */
 	
 	Member member = (Member)request.getAttribute("member"); // point, userNo
 	Member loginUser = (Member)session.getAttribute("loginUser");
 	
 	
 	
 	String deadline = clpd.getDeadLine();
    String year = deadline.substring(0, 4);
    String month = deadline.substring(5, 7);
    String day2 = deadline.substring(8, 10);
    String hour = deadline.substring(11, 13);
    String minute = deadline.substring(14, 16);
    
    
    String timestart = infolist.get(0).getTimeStart();
    String timest = timestart.substring(11, 13); // 연락가능 시작시간
    String timestmin = timestart.substring(14, 16); // 연락가능 시작 분
    String timefinish = infolist.get(0).getTimeFinish();
    String timefs = timestart.substring(11, 13); // 연락가능 끝 시간
    String timefsmin = timestart.substring(14, 16); // 연락가능 끝나는 분  
    
    
 	
%> 
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
	<jsp:include page="../common/menubar4.jsp" />
	
	
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading" style="font-size: large;">
							카테고리</div>
						<a class="nav-link" onclick="categoryAr();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/man.png"
									style="width: 25px; height: 20px;">
							</div> 예술
						</a> <a class="nav-link" onclick="categoryRe();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/fork.png"
									style="width: 25px; height: 20px;">
							</div> 요식업
						</a> <a class="nav-link" onclick="categoryMe();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/doctor22.png"
									style="width: 25px; height: 20px;">
							</div> 의료
						</a> <a class="nav-link" onclick="categorySp();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/soccerman.png"
									style="width: 25px; height: 20px;">
							</div> 스포츠
						</a> <a class="nav-link" onclick="categoryFa();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/hatt.png"
									style="width: 25px; height: 20px;">
							</div> 패션
						</a> <a class="nav-link" onclick="categoryIt();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/monitor.png"
									style="width: 25px; height: 20px;">
							</div> It
						</a> <a class="nav-link" onclick="categoryFi();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/money8.png"
									style="width: 25px; height: 20px;">
							</div> 금융
						</a> <a class="nav-link" onclick="categoryPu();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/staff.png"
									style="width: 27px; height: 20px;">
							</div> 공무원
						</a> <a class="nav-link" onclick="categoryBu();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/bag.png"
									style="width: 25px; height: 20px;">
							</div> 창업
						</a> <a class="nav-link" onclick="categoryMa();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/shott.png"
									style="width: 25px; height: 20px;">
							</div> 마케팅
						</a> <a class="nav-link" onclick="categoryEv();">
							<div class="sb-nav-link-icon">
								<img src="<%=request.getContextPath()%>/image/giftt.png"
									style="width: 25px; height: 20px;">
							</div> 이벤트
						</a>
       
          </div>
        </div>
      </nav>
    </div><!-- layoutSidenav_nav 끝  -->
    
    
     <div id="layoutSidenav_content">

            <div class="container">

                <div class="row" style="padding-top: 20px; padding-bottom: 20px;">
                   <label style="font-size: 20px;">카테고리 > <%= clpd.getCategoryName() %> </label>
                </div>
                <div class="row justify-content-between">
                    <div style="padding-left: 0px;" class="col-7">
                    <%for(int j=0; j<flist.size(); j++){
                         Service_SeviceFilesTable_oh sf = flist.get(j);%>
                         <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%>
                        <img style="width: 650px; height: 450px;" src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName()%>" class="d-block">
                                <%} %>
                          <%} %>      
						
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
								<%=infolist.get(0).getsExplain()%>
                            </div>
                            <div class="tab-pane fade" id="nav-AvailableArea" role="tabpanel" aria-labelledby="nav-AvailableArea-tab">
                            	<%=infolist.get(0).getAvailableArea()%>
                            </div>
                            <div class="tab-pane fade" id="nav-AvailableDays" role="tabpanel" aria-labelledby="nav-AvailableDays-tab">
                            	<%for(int i=0; i<infolist.size(); i++){ %>
                            	<%=infolist.get(i).getAvailableDate()%>
                            	<%} %>
                            </div>
                            <div class="tab-pane fade" id="nav-Relatedtopics" role="tabpanel" aria-labelledby="nav-Relatedtopics-tab">
								<%=infolist.get(0).getSubject()%>
                            </div>
                            <div class="tab-pane fade" id="nav-RefundPolicy" role="tabpanel" aria-labelledby="nav-RefundPolicy-tab">
                            	구매 후 환불 규정(2일전 100%, 1일전 50%, 당일 환불X)
                            </div>
                            <div class="tab-pane fade" id="nav-ServiceEv" role="tabpanel" aria-labelledby="nav-RefundPolicy-tab">
								<%if(!rlist.isEmpty()){ %>
									<%for(int i=0; i<rlist.size();i++){ %>
								<table style="margin-left: 30px; margin-top: 10px;">
                                    <tr>
                                        <td class="cd_id_style" style="width: 150px; padding-bottom: 10px;"><%=rlist.get(i).getwDate() %></td>
                                        <td class="cd_id_style" style="width: 150px;  padding-bottom: 10px;">평점 : <%=rlist.get(i).getRating() %>점</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="padding-bottom: 10px;"><%=rlist.get(i).getContent() %></td>
                                    </tr>
                                    <tr>
                                        <td class="cd_id_style" colspan="2"><%=rlist.get(i).getUserId() %></td>
                                    </tr>
                                </table>
                                <hr>
                                <%} %>
								<%}else{ %>
									<h6>작성된 서비스 리뷰가 없습니다.</h6>
								<%} %>
                            </div>
                          </div>
                    </div>

                    <div class="col-1">
                    </div>

                    <div class="col-4">

                            <div><%=clpd.getsTitle() %></div>
                              <h5 style="text-align: right;">현재 가격 : <%=clpd.getPriceBidding() %>원</h5>
                        <h6 style="text-align: right;">(VAT포함)</h6>
                        
                			
                            <h5>마감시간</h5>
                            
                            <span id="time" font-size:20px;font-weight:bold;line-height:36px;></span>
			        
                           <span id="cd_timeout"></span>

                        <div style="padding: 20px 0 12px 0; border: 1px solid #e4e5ed;">

                            <div style=" top: 0; left: 0;" class="text-center">
                                <img style="width: 50px; height: 50px; border-radius: 50%;"
                                    src="<%=request.getContextPath()%>/profile_imgFiles/<%=infolist.get(0).getChangeName() %>" alt="...">
                            </div>
                            <h1 style="text-align: center; font-size: 22px; margin: 16px 0 0 0;">판매자 아이디 : <%=clpd.getUserId() %></h1>
                            <hr style=" width: 30px;
                                        height: 2px;
                                        background: #ffd400;
                                        margin: 0 auto;
                                        margin-top: 15px;
                                        display: block;">
                            <ul style="text-align: center; padding-top: 10px; padding-left: 0px;">
                                <li style="font-size: 12px; list-style-type: none;">
                                  		  연락처 :
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
                                            상품구매 확정 후 판매자의 연락처 확인은 
                                            마이페이지-구매내역에서 확인할 수 있습니다.
                                        </p>
                                    </div>
                                <h5 style="font-size: 12px;">연락 가능시간 : <%=timest %>시 <%=timestmin %>분 ~ <%=timefs %>시 <%=timefsmin %>분</h5>
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
                            
                            <%=infolist.get(0).getSaleInfo() %>
                            </p>
                            

                        </div>
						
						<%if(member != null){ %>
                       <h5>현재 사용자 번호 : <%=member.getUserNo() %></h5>
                       <h5>현재 보유 포인트 : <%=member.getPoint() %></h5>
                       <%} %>
                       <h5>현재 구매자 : <%=sv.getB_user_no() %></h5>
                      
                       <%-- <%if(price!=0){ %>
                       <h5>현재 입찰입력금액 : <%=price %></h5>
                       <%} %> --%>
                       
                        <div style="padding-left: 100px; padding-right: 100px;"> <!-- 입찰버튼 div 시작 -->
                       
                      	<%if(clpd.getsStatus().equalsIgnoreCase("Y")){ %>
                       		<%if(loginUser!=null){ %> <!--로그인 시 입찰 가능 -->
                            <button type="button" id="btn_style" class="btn" data-toggle="modal" data-target="#exampleModalCenter">
                                	입찰하기
                            </button>
                        <%} else{ %> <!--비 로그인 시 입찰 버튼 클릭하면 alert창 경고 발생 -->
                             <button type="button" id="btn_style" class="btn" onclick="logincheckbtn();">
                                	입찰하기
                            </button>
                            <%} %>
                            <%}else{ %>
                             <button type="button" id="btn_style" class="btn" onclick="servicestatus();">
                                	입찰하기
                            </button>
                        <%} %>   
                            <!-- Modal -->
                            <form action="<%=request.getContextPath()%>/Price.up" method="get" onsubmit="return pricelimit();">
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content" style="width: 100%;">
                                    <div class="modal-header" style="border-bottom: none; padding-bottom: 0;">

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                              <span class="input-group-text" id="inputGroup-sizing-default">입찰 금액</span>
                                            </div>
	                                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
	                                            placeholder="입찰금액을 입력해주세요." name="insertprice" id="insertprice"> <!--입찰가격 넣는곳  -->
	                                        	<input type="hidden" value="<%=clpd.getPriceBidding()%>" name="price">
	                                        	<%if(loginUser!=null){ %>
	                                         	<input type="hidden" value="<%=loginUser.getUserNo()%>" name="loginUserNo"> 
	                                        	<%} else{ %>
	                                        	<input type="hidden" value="loginUserNo" name="loginUserNo"> 
	                                        	<%} %>
	                                        	<input type="hidden" value="<%=sv.getB_user_no()%>" name="buserNo">
	                                        	<input type="hidden" value="<%=clpd.getSeviceNo()%>" name="sNo">
	                                        	<input type="hidden" value="<%=clpd.getsUserNo()%>" name="suserNo">
	                                        	<input type="hidden" value="" name="suserNo">
	                                        
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
                                        <button type="submit" class="btn btn-primary">입찰하기</button>
                                         <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                    </div>
                    
                                </div>
                               
                                </div>
                            </div>
                    	</form>
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
        
        /*  var end = new Date(now.getFullYear(),05,15,18,39,00); // 끝나는 시간  */
       
       var end = new Date(<%=year%>,<%=month%>-1,<%=day2%>,<%=hour%>,<%=minute%>,00); // 끝나는 시간 
        // (년, 월, 일, 시, 분, 초)
        // 2020-05-15 15:39:00
        
        
        // var end = new Date(now.getFullYear(),now.getMonth(),now.getDate(),48,42,00); // 끝나는 시간
        
        // var timeLeft = '357611';


        // now.getFullYear() = 현재 년도 2020
        // now.getMonth() = 입력 달 + 1 ex) (입력 달(5) + 1)=현재 달(6)
        // now.getDate() = 현재 일

        var outputString = ""; // 출력 변수

        var nt = now.getTime(); // 현재 시간 getTime() = msec(1/1000)
        var et = end.getTime(); // 끝나는 시간
        
     //   var result = end - now;
        var result = end - now;
		
        
        
        // 1min = 60sec
        // 1hour = 3600sec
        // 1day = 86400sec
      
       
        sec = parseInt(et - nt) / 1000; // 끝나는 시간 - 현재 시간
        day  = parseInt(sec/60/60/24);
        sec = (sec - (day * 60 * 60 * 24));
        hour = parseInt(sec/60/60);
        sec = (sec - (hour*60*60));
        min = parseInt(sec/60);
        sec = parseInt(sec-(min*60));
        	
        <%if(clpd.getsStatus().equals("Y")){%>
        if (result < 0 )  {
        	outputString += "상품이 마감되었습니다.";
        	var price = <%=clpd.getPriceBidding()%>;
        	var sNo = <%=clpd.getSeviceNo()%>;
        	var suserNo = <%=clpd.getsUserNo()%>;
        	var buserNo = <%=sv.getB_user_no()%>;
        	var loginUserNo = <%=loginUser.getUserNo()%>
       		
        	location.href="<%=request.getContextPath()%>/deadline.up?price="+price+"&sNo="+sNo+"&suserNo="+suserNo+"&buserNo="+buserNo+"&loginUserNo="+loginUserNo;
        
        } else {

            if (day > 0) {
                outputString += day + "일＋";
            }

            outputString += ((hour > 0) ? hour + ":":"") + ((min<10)?"0" + min:min) + ":" + ((sec<10)?"0"+sec:sec);
            // 삼항연산자 ((조건문) ? 참 : 거짓)

        }
        <% }%>
        document.getElementById("time").innerHTML = outputString;
        
       
    
 }
 
 setInterval(remaindTime,1000); // 1초간격으로 remaindTime함수를 호출

 

 
 
 
 
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
 

 
 
/* 입찰 버튼 클릭 시 발생하는 함수들 */ 
 function logincheckbtn(){
	 alert("로그인을 해주세요.");
 }
 
 function servicestatus(){
	 alert("이미 판매된상품입니다.");
 }

 // 보유포인트 > 현재 입력금액 , 입력금액이 입찰금액보다 작으면 안된다.(입찰금액 > 입력금액) 
 function pricelimit(){
	 <%if(member!=null){%>
	 if(<%=member.getPoint()%> >= $("#insertprice").val()){ // 보유포인트가 입력금액보다 적으면 안된다.
		 if(<%=clpd.getPriceBidding()%> < $("#insertprice").val()){ // 입찰 금액보다 적게 입력 못한다.
			 <%if(!loginUser.getUserNo().equals(sv.getB_user_no())){ %> // 입찰은 한번만 가능하다.
			 	<%if(!loginUser.getUserNo().equals(clpd.getsUserNo())) {%> // 자신의 상품은 구매할 수 없다.
			 return true;
			 	<% } else { %>
			 		alert("자신의 상품은 구매할 수 없습니다.")
			 		return false;
			 	<% } %>
			 <%} else {%>
			 	alert("이미 입찰 하였습니다.");
			 	return false;
			 <%}%>
		 }else{
			alert("입찰금액보다 적게 입력하셨습니다. 다시 입력해주세요.")
			return false;
		 }
	 }else{
		 alert("보유 포인트가 입력 금액보다 부족합니다. 충전해주세요.");
		 return false;
	 }
	 <%}%>
 }
 
 
 
</script>


</html>