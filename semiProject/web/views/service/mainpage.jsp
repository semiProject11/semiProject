<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="service.model.vo.*,member.model.vo.*, java.util.ArrayList"%>

<%
   ArrayList<CategoryListPd> svlist = (ArrayList<CategoryListPd>)request.getAttribute("svlist");
    ArrayList<Service_SeviceFilesTable_oh> flist = (ArrayList<Service_SeviceFilesTable_oh>)request.getAttribute("flist");
    CategoryListPd clpd = new CategoryListPd();
    
     Member loginUser = (Member)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
   font-family: SeoulNamsanM;
   <jsp:include page="../common/menubar4.jsp" />


   <div id="layoutSidenav">
      <div id="layoutSidenav_nav">
         <nav class="sb-sidenav accordion sb-sidenav-dark"
            id="sidenavAccordion">
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
      </div>
      <!-- layoutSidenav_nav 끝  -->


      <div id="layoutSidenav_content">
         <!--main-->
         <br> <br>
     <div class="container">
            <div id="carouselExampleCaptions" class="carousel slide"
               data-ride="carousel">
               <ol class="carousel-indicators">
                  <li data-target="#carouselExampleCaptions" data-slide-to="0"
                     class="active"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
               </ol>
               

               <div class="carousel-inner" align="center">
                  
                  
                  <div class="carousel-item active" id="sNopd">
                  <a>
                     <input id="input1" type="hidden" value="<%=svlist.get(svlist.size()-4).getSeviceNo() %>">
                     <input id="input2" type="hidden" value="<%=svlist.get(svlist.size()-4).getsUserNo() %>">
                     <%if(loginUser != null){ %>
                     <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                     <%} %>
                     <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(svlist.get(svlist.size()-4).getSeviceNo() == sf.getServiceNo()) {%> 
                     <img style="height: 370px;" src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" class="d-block w-100">
                     <%} %>
                     <%} %>
                  </a>
                     <div class="carousel-caption d-none d-md-block">
                        <h5 id="young"><%=svlist.get(svlist.size()-4).getsTitle() %></h5>
                     </div>
                  </div>
                  
                  
                  <div class="carousel-item" id="sNopd">
                  <a>
                     <input id="input1" type="hidden" value="<%=svlist.get(svlist.size()-3).getSeviceNo() %>">
                     <input id="input2" type="hidden" value="<%=svlist.get(svlist.size()-3).getsUserNo() %>">
                     <%if(loginUser != null){ %>
                     <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                     <%} %>
                     <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(svlist.get(svlist.size()-3).getSeviceNo() == sf.getServiceNo()) {%> 
                     <img style="height: 370px;" src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" class="d-block w-100">
                     <%} %>
                     <%} %>
                  </a>
                     <div class="carousel-caption d-none d-md-block">
                        <h5 id="young"><%=svlist.get(svlist.size()-3).getsTitle() %></h5>
                     </div>
                  </div>
                  
                  
                  <div class="carousel-item" id="sNopd">
                  <a>
                     <input id="input1" type="hidden" value="<%=svlist.get(svlist.size()-2).getSeviceNo() %>">
                     <input id="input2" type="hidden" value="<%=svlist.get(svlist.size()-2).getsUserNo() %>">
                     <%if(loginUser != null){ %>
                     <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                     <%} %>
                     <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(svlist.get(svlist.size()-2).getSeviceNo() == sf.getServiceNo()) {%> 
                     <img style="height: 370px;" src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" class="d-block w-100">
                     <%} %>
                     <%} %>
                  </a>
                     <div class="carousel-caption d-none d-md-block">
                        <h5 id="young"><%=svlist.get(svlist.size()-2).getsTitle() %></h5>
                     </div>
                  </div>
                  
                  
                  <div class="carousel-item" id="sNopd">
                  <a>
                     <input id="input1" type="hidden" value="<%=svlist.get(svlist.size()-1).getSeviceNo() %>">
                     <input id="input2" type="hidden" value="<%=svlist.get(svlist.size()-1).getsUserNo() %>">
                     <%if(loginUser != null){ %>
                     <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                     <%} %>
                     <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(svlist.get(svlist.size()-1).getSeviceNo() == sf.getServiceNo()) {%> 
                     <img style="height: 370px;" src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" class="d-block w-100">
                     <%} %>
                     <%} %>
                  </a>
                     <div class="carousel-caption d-none d-md-block">
                        <h5 id="young"><%=svlist.get(svlist.size()-1).getsTitle() %></h5>
                     </div>
                  </div>
               
               </div>
               <a class="carousel-control-prev" href="#carouselExampleCaptions"
                  role="button" data-slide="prev"> <span
                  class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                  class="sr-only">Previous</span>
               </a> <a class="carousel-control-next" href="#carouselExampleCaptions"
                  role="button" data-slide="next"> <span
                  class="carousel-control-next-icon" aria-hidden="true"></span> <span
                  class="sr-only">Next</span>
               </a>
            </div>
         </div> --%>

         <!--img slide end-->
         <br> <br> <br>
         <div class="container">
            <div>
               <h3 style="font-size: 18px; font-weight: bold;">카테고리 별 인기 상품</h3>
            </div>

            <br>
            <!-- Artist -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/man.png"
                     style="width: 25px; height: 20px;">예술
               </h3>
            </div>


            <div class="row">
               <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Ar")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> 
                           <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>
            </div>

            <br>
            <!--Restaurant business-->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/fork.png"
                     style="width: 25px; height: 20px;">요식업
               </h3>
            </div>

            <div class="row">
               <!-- 2번째 row 시작 -->
                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Re")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 2번째 row 끝 -->

            <br>
            <!-- Medicine -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/doctor22.png"
                     style="width: 25px; height: 20px;">의료
               </h3>
            </div>
            <div class="row">
               <!-- 3번째 row 시작 -->
               <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Me")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 3번째 row 끝 -->

            <br>
            <!-- Sports -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/soccerman.png"
                     style="width: 25px; height: 20px;">스포츠
               </h3>
            </div>

         <div class="row">
               <!-- 4번째 row 시작 -->
                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Sp")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%><div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 4번째 row 끝 -->

            <br>
            <!-- Fashion -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/hatt.png"
                     style="width: 25px; height: 20px;">패션
               </h3>
            </div>

            <div class="row">
               <!-- 5번째 row 시작 -->
               <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Fa")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 5번째 row 끝 -->

            <br>
            <!-- It -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/monitor.png"
                     style="width: 25px; height: 20px;">It
               </h3>
            </div>

            <div class="row">
               <!-- 6번째 row 시작 -->

                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("It")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 6번째 row 끝 -->

            <br>
            <!-- Finance -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/money8.png"
                     style="width: 25px; height: 20px;">금융
               </h3>
            </div>

            <div class="row">
               <!-- 7번째 row 시작 -->
                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Fi")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 7번째 row 끝 -->

            <br>
            <!-- Public official -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/staff.png"
                     style="width: 25px; height: 20px;">공무원
               </h3>
            </div>

            <div class="row">
               <!-- 8번째 row 시작 -->
               <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Pu")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 8번째 row 끝 -->

            <br>
            <!-- Business(foundation) -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/bag.png"
                     style="width: 25px; height: 20px;">창업
               </h3>
            </div>

            <div class="row">
               <!-- 9번째 row 시작 -->
               <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Bu")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%><div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 9번째 row 끝 -->

            <br>
            <!-- Marketing -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/shott.png"
                     style="width: 25px; height: 20px;">마케팅
               </h3>
            </div>

            <div class="row">
               <!-- 10번째 row 시작 -->
                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Ma")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 10번째 row 끝 -->

            <br>
            <!-- Event -->
            <div>
               <h3 style="font-size: 18px;">
                  <img src="<%=request.getContextPath()%>/image/giftt.png"
                     style="width: 25px; height: 20px;">이벤트
               </h3>
            </div>

         <div class="row">
               <!-- 11번째 row 시작 -->
                <%for(int i=0; i<svlist.size(); i++) {
                      clpd = svlist.get(i);
                   %>
               <%if(clpd.getCategoryCode().equalsIgnoreCase("Ev")&&!svlist.isEmpty()) {%>
               <!-- 첫번째 row 시작 -->
               <div class="col-lg-3 col-md-6 mb-4">
                  <div class="card h-100">
                     <div id="sNopd" style="overflow: hidden;">
                        <a>
                           <input id="input1" type="hidden" value="<%=svlist.get(i).getSeviceNo() %>">
                           <input id="input2" type="hidden" value="<%=svlist.get(i).getsUserNo() %>">
                           <%if(loginUser != null){ %>
                           <input id="input3" type="hidden" value="<%=loginUser.getUserNo() %>">
                           <%} %>
                         <%for(int j=0; j<flist.size(); j++){
                               Service_SeviceFilesTable_oh sf = flist.get(j);%>
                           <%if(clpd.getSeviceNo() == sf.getServiceNo()) {%><div style="height: 200px;">
                           <img class="card-img-top transform1"
                           src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>" style="width: 100%; height: 100%;"></div></a>
                        <%} %>
                        <%} %>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item cd_id_style"><%=clpd.getUserId() %></li>
                        <li class="list-group-item cd_title_style"><%=clpd.getsTitle() %></li>
                        <li class="list-group-item cd_timeoutprice_style">
                           <%if(clpd.getDeadLine() != null){ %> 
                           <span id="cd_timeout">경매 마감시간 : 
                           <%=clpd.getDeadLine().substring(5,7) %>월
                           <%=clpd.getDeadLine().substring(8,10) %>일
                           <%=clpd.getDeadLine().substring(11,13) %>시
                           <%=clpd.getDeadLine().substring(14,16) %>분
                           </span>
                           <%}else {%>
                           <br>
                            <span id="cd_timeout"></span> 
                            <% } %> 
                            <%if(clpd.getPriceBidding() != 0){ %>
                           <span id="cd_price">현재 입찰가 : <%=clpd.getPriceBidding() %>원</span>
                            <%}else {%>
                           <span id="cd_price">구매가 : <%=clpd.getPriceSale() %>원</span> 
                           <%} %>
                        </li>
                        <li class="list-group-item cd_rankviews_style">
                        <span id="cd_rank"><img id="cd_rankimg" src="<%=request.getContextPath()%>/gradeIcon/<%=clpd.getGradeNo()%>.png">&nbsp;<%=clpd.getGradeName()%></span> 
                        <span id="cd_views">조회수 : <%=clpd.getReadCount() %></span>
                        </li>
                     </ul>
                  </div>
               </div>
               <%} %>
               <%} %>

            </div>
            <!-- 11번째 row 끝 -->

         </div>
         <!-- container 끝  -->
         <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid">
               <div
                  class="d-flex align-items-center justify-content-between small">
                  <div class="text-muted">Copyright &copy; Your Website 2019</div>
                  <div>
                     <a href="#">Privacy Policy</a> &middot; <a href="#">Terms
                        &amp; Conditions</a>
                  </div>
               </div>
            </div>
         </footer>
      </div>
      <!-- layoutSidenav_content 끝 -->
   </div>
   <!-- layoutSidenav 끝 -->

   <script>

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

$(function(){
   $("#sNopd a").mouseenter(function(){
   }).click(function(){

      var sNo = $(this).children("#input1").val();
      var suserNo = $(this).children("#input2").val();
      var loginUserNo =  $(this).children("#input3").val();
      
      location.href="<%=request.getContextPath()%>/auction.detail?sNo="+sNo+"&suserNo="+suserNo+"&loginUserNo="+loginUserNo;
      
   });
})


</script>


</body>
</html>