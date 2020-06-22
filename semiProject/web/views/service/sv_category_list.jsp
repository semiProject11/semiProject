<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="service.model.vo.*,member.model.vo.*, java.util.ArrayList"%>
    
<%
	ArrayList<CategoryListPd> svlist = (ArrayList<CategoryListPd>)request.getAttribute("svlist");
 	ArrayList<Service_SeviceFilesTable_oh> flist = (ArrayList<Service_SeviceFilesTable_oh>)request.getAttribute("flist");
 	
 	 Member loginUser = (Member)session.getAttribute("loginUser");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            <!-- 경매 및 일반 / 정렬 표시 -->
            <br>
            <div class="container">
                <div class="row" style="height: 30px !important">
                    <div class="col-lg-9">
                        <table>
                            <tr>
                                <td>
                                    <label style="font-size: 20px;">카테고리 > <%= svlist.get(0).getCategoryName() %> </label>
                                </td>
                            </tr>
                        </table>

                    </div>
                    <div class="col-lg-3">
                        <form action="#">
                            <table style="float: right;">
                                <tr>
                                    <td>
                                        <input type="radio" id="auction" name="salemethod" value="auction" onclick="selectauction();">
                                        <label for="auction" style="font-size: 15px;">경매</label> &nbsp;
                                    </td>
                                    <td>
                                        <input type="radio" id="general" name="salemethod" value="general" onclick="selectgeneral();">
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
                                                <%if(svlist.get(0).getSalemethod().equalsIgnoreCase("auction")){ %>
                                                <a class="dropdown-item" onclick="resetpd();">
                                                <%}else{ %>
                                                 <a class="dropdown-item" onclick="resetpd();">
                                                 <%} %>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="reset" name="sort"
                                                            class="custom-control-input" checked>
                                                        <label class="custom-control-label"
                                                            for="reset">초기화</label>
                                                    </div>
                                                </a>
                                                
                                                
                                                <%if(svlist.get(0).getSalemethod().equalsIgnoreCase("auction")){ %>
                                                <a class="dropdown-item" onclick="pricehigh();">
                                                <%}else{ %>
                                                 <a class="dropdown-item" onclick="pricehigh();">
                                                 <%} %>
                                                  <div class="custom-control custom-radio">
                                                      <input type="radio" id="highprice" name="sort"
                                                          class="custom-control-input">
                                                      <label class="custom-control-label"
                                                          for="highprice">높은 가격순</label>
                                                  </div>
                                              </a>
                                              
                                              
                                              <%if(svlist.get(0).getSalemethod().equalsIgnoreCase("auction")){ %>
                                                <a class="dropdown-item" onclick="pricelow();">
                                                <%}else{ %>
                                                 <a class="dropdown-item" onclick="pricelow();">
                                                 <%} %>
                                                  <div class="custom-control custom-radio">
                                                      <input type="radio" id="lowprice" name="sort"
                                                          class="custom-control-input">
                                                      <label class="custom-control-label"
                                                          for="lowprice">낮은 가격순</label>
                                                  </div>
                                              </a>
       
       
                                             <%if(svlist.get(0).getSalemethod().equalsIgnoreCase("auction")){ %>
                                                <a class="dropdown-item" onclick="viewssort();">
                                                <%}else{ %>
                                                 <a class="dropdown-item" onclick="viewssort();">
                                                 <%} %>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" id="views" name="sort"
                                                            class="custom-control-input">
                                                        <label class="custom-control-label"
                                                            for="views">조회수 순</label>
                                                    </div>
                                                </a>
                                                
                                                
                                               <%if(svlist.get(0).getSalemethod().equalsIgnoreCase("auction")){ %>
                                                <a class="dropdown-item" onclick="newregisterationsort();">
                                                <%}else{ %>
                                                 <a class="dropdown-item" onclick="newregisterationsort();">
                                                 <%} %>
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
                <%for(int i=0; i<svlist.size();i++) {
                	CategoryListPd clpd = svlist.get(i);
                %>
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
									<%if(clpd.getSeviceNo() == sf.getServiceNo()) {%> <img
									class="card-img-top transform1"
									src="<%=request.getContextPath()%>/service_uploadFiles/<%=sf.getChangeName() %>"></a>
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
                     </div>

                      
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


function selectgeneral(){
    location.href="<%=request.getContextPath()%>/general.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=general";
 }
 
function selectauction(){
    location.href="<%=request.getContextPath()%>/categorypd.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=auction";
 }

function resetpd(){
    location.href="<%=request.getContextPath()%>/reset.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=<%=svlist.get(0).getSalemethod()%>";
 }

function pricehigh(){
    location.href="<%=request.getContextPath()%>/pricehigh.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=<%=svlist.get(0).getSalemethod()%>";
 }
 
function pricelow(){
    location.href="<%=request.getContextPath()%>/pricelow.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=<%=svlist.get(0).getSalemethod()%>";
 }

function viewssort(){
    location.href="<%=request.getContextPath()%>/views.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=<%=svlist.get(0).getSalemethod()%>";
 }
 
function newregisterationsort(){
    location.href="<%=request.getContextPath()%>/newpd.service?category=<%=svlist.get(0).getCategoryCode()%>&salemethod=<%=svlist.get(0).getSalemethod()%>";
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

function generaldetail(){
	location.href="<%=request.getContextPath()%>/general.detail";
 }

</script>



</html>