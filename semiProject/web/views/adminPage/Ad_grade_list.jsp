<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="board.model.vo.*,member.model.vo.*,java.util.ArrayList"%>
<%
	ArrayList<Member> gradeList = (ArrayList<Member>) request.getAttribute("gradeList");
ArrayList<Seller> sellerList = (ArrayList<Seller>) request.getAttribute("sellerList");

Pagination pn = (Pagination) request.getAttribute("pn");
int listCount = pn.getListCount();
int currentPage = pn.getCurrentPage();
int maxPage = pn.getMaxPage();
int startPage = pn.getStartPage();
int endPage = pn.getEndPage();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th, tr, td {
	text-align: center;
	vertical-align: middle !important;
}

.pagination-t {
	display: flex;
	padding-left: 0;
	list-style: none;
	border-radius: 0.25rem;
}

.page-link-t {
	position: relative;
	display: block;
	padding: 0.5rem 0.75rem;
	margin-left: -1px;
	line-height: 1.25;
	color: black;
	background-color: #fff;
	border: 1px solid #dee2e6;
}

.page-link-t:hover {
	z-index: 2;
	color: #0056b3;
	text-decoration: none;
	background-color: #e9ecef;
	border-color: #dee2e6;
}

.page-link-t:focus {
	z-index: 3;
	outline: 0;
}

.page-item-t:first-child .page-link-t {
	border-top-left-radius: 0.25rem;
	border-bottom-left-radius: 0.25rem;
}

.page-item-t:last-child .page-link-t {
	border-top-right-radius: 0.25rem;
	border-bottom-right-radius: 0.25rem;
}

.page-item-t.active-t .page-link-t {
	z-index: 3;
	color: #fff;
	background-color: gold;
	border-color: gold;
}

.page-item-t.disabled-t .page-link-t {
	color: #6c757d;
	pointer-events: none;
	cursor: auto;
	background-color: #fff;
	border-color: #dee2e6;
}

.sr-only-t {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	white-space: nowrap;
	border: 0;
}

.page-center {
	display: flex;
	justify-content: center;
	/*가운데 정렬*/
	align-items: center;
}
</style>
</head>
<body>



	<jsp:include page="../common/menubar2.jsp" />

	<!--side nav start-->
	<div id="layoutSidenav">

		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-light"
				id="sidenavAccordion">
				<!--클릭할때 글자색상이 파란색이라 color바꿔줌-->
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">
							<svg class="bi bi-list" width="1em" height="1em"
								viewBox="0 0 16 16" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                              <path fill-rule="evenodd"
									d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
									clip-rule="evenodd" />
                            </svg>
							관리자센터
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseUsers" aria-expanded="false"
							aria-controls="collapseUsers"> <svg class="bi bi-people-fill"
								width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
									d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"
									clip-rule="evenodd" />
                                </svg> &nbsp;사용자 관리


							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseUsers"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/list.grade">판매자 등급 관리</a> <a
									class="nav-link"
									href="<%=request.getContextPath()%>/list.transaction">거래내역
									관리</a> <a class="nav-link"
									href="<%=request.getContextPath()%>/relist.bo">전체 리뷰 관리</a> <a
									class="nav-link"
									href="<%=request.getContextPath()%>/list.inquiary">문의 사항 관리</a>
							</nav>
						</div>


						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseReport" aria-expanded="false"
							aria-controls="collapseReport"> <svg
								class="bi bi-brightness-alt-high-fill" width="1em" height="1em"
								viewBox="0 0 16 16" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
									d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
									clip-rule="evenodd" />
                                </svg> &nbsp;신고처리

							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseReport"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/list.report">신고 내역 관리</a>
							</nav>
						</div>


						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapsePoints" aria-expanded="false"
							aria-controls="collapsePoints"> <svg class="bi bi-server"
								width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
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
                                </svg> &nbsp;포인트/환불
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePoints"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/list.point">포인트 관리</a><a
															class="nav-link" href="<%=request.getContextPath()%>/list.refund">환불 관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseNotice" aria-expanded="false"
							aria-controls="collapseNotice"> <svg class="bi bi-bell"
								width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                                    <path
									d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                                    <path fill-rule="evenodd"
									d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
									clip-rule="evenodd" />
                               </svg> &nbsp;공지사항
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseNotice"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="<%=request.getContextPath()%>/listAd.notice">공지사항 관리</a>
							</nav>
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
		<div id="layoutSidenav_content">
			<!--side nav end-->








			<!--contents-->

			<div class="container mt-5">

				<header>
					<h2>사용자 등급 관리</h2>
					<hr>
				</header>

<form action="<%=request.getContextPath() %>/search.member" method="post">

				<div class="container my-4">
					<div>
						<!--상단 버튼-->
						<button type="button" class="btn" id="checkBtn"
							style="background: black; color: white" onclick="checkAll();">전체
							선택</button>
						<button type="button" class="btn"
							style="background: black; color: white" onclick="updateGrade();">등급
							변경</button>
						<button type="button" class="btn"
							style="background: black; color: white" onclick="changeBuy();">구매자
							제한</button>
						<button type="button" class="btn"
							style="background: black; color: white" onclick="changeSell();">판매자
							제한</button>



						<!--상단 검색창-->
					
							<div
								class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0">
								<div class="input-group">
									<input class="form-control" type="text" name="word" value=""
										placeholder="Search for..." aria-label="Search"
										aria-describedby="basic-addon2" />
									<div class="input-group-append"></div>
									<button class="btn btn-primary mr-0" type="submit"
										style="background: black; border: black;">

										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>
				
					</div>



					<!--회원등급 리스트-->
					<div class="table-responsive mt-3">
						<table class="table table-striped table-bordered table-hover"
							id="gListArea" method="post">
							<thead>
								<tr>
									<th><input type="checkbox" class="common" id="checkAll"
										style="width: 18px; height: 18px;"></th>
									<th>No</th>

									<th>사용자 아이디</th>
									<th>판매점수</th>
									<th>신고받은 횟수</th>
									<th>현재 등급</th>
									<th>등급 선택</th>

								</tr>
							</thead>

							<tbody>


								<%
									if (gradeList.isEmpty()) {
								%>
								<tr>
									<td colspan="7">조회된 결과가 없습니다.</td>
								</tr>
								<%
									} else {
								%>
								<%
									for (int i = 0;i < gradeList.size(); i++) {
								%>

								<tr id="tr" name="tr" value="trtr">
									<%-- <input type="hidden" name="userNo" id="userNo" value="<%=(gradeList.get(i)).getUserNo()%>">
										 --%>
									<td><input type="checkbox" class="common" id="rowCheck"
										name="rowCheck" style="width: 18px; height: 18px;"
										value=<%=(sellerList.get(i)).getUserNo()%>></td>
									<!-- 게시물번호-->
									<td val="<%=(sellerList.get(i)).getUserNo()%>"><%=(gradeList.get(i)).getUserNo()%></td>
									<!-- 유저아이디 -->
									<td><%=(gradeList.get(i)).getUserId()%></td>
									<!-- 점수  -->
									<td><%=(gradeList.get(i)).getGradeTot()%></td>
									<!-- 신고받은 횟수 -->
									<td><%=(sellerList.get(i)).getReportNum()%></td>
									<!-- 현재 등급 -->
									<td><%=(gradeList.get(i)).getGrade()%></td>



									<!-- 변경될 등급 -->
									<td><select name="grade" id="grade"
										class="custom-select grade">
											<option value="BRONZE">BRONZE</option>
											<option value="SILVER">SILVER</option>
											<option value="GOLD">GOLD</option>
											<option value="PLATINUM">PLATINUM</option>
											<option value="DIAMOND">DIAMOND</option>
									</select></td>


								</tr>

								<%
									}
								%>
								<%
									}
								%>


							</tbody>
						</table>
					</div>
				</div>
	</form>







				<!------페이징 처리----->
				<div class="page-center">
					<ul class="pagination-t">


						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/list.grade?currentPage=1"><<</a></li>
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/list.grade?currentPage=<%=currentPage - 1%>">Previous</a></li>
						<%
							for (int p = startPage; p <= endPage; p++) {
						%>
						<%
							if (p == currentPage) {
						%>
						<!-- disabled: 페이지 비활성화 -->
						<li class="page-item-t disabled-t"><a class="page-link-t"><%=p%></a></li>
						<%
							} else {
						%>
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/list.grade?currentPage=<%=p%>"><%=p%></a></li>

						<%
							}
						%>
						<%
							}
						%>


						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/list.grade?currentPage=<%=currentPage + 1%>">Next</a></li>
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/list.grade?currentPage=<%=maxPage%>">>></a></li>

					</ul>


				</div>

			</div>




			<!--footer-->
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
	</div>



	<script>
	

	//등급변경
	 function updateGrade(){
		
		var check= $("input:checkbox[name=rowCheck]:checked").val();
		
 		if (check){		
 			
 		var rowArr=new Array();
		var tdArr=new Array();
		
		
		$("input:checkbox[name=rowCheck]:checked").each(function(){ //td단계임
		
			rowArr+=$(this).val()+",";
			tdArr+=$(this).parent().parent().children().eq(6).children("select").val()+",";
			

		});
         

			location.href="<%=request.getContextPath()%>/update.grade?rowArr="+rowArr+"&tdArr="+tdArr;
			
 		}else{
 			alert('등급을 변경할 아이디를 선택해주세요.');
 		}
	
	} 
	

	
	
	//구매자 권한 변경
	function changeBuy(){
		
	
    		if(confirm("선택한 사용자의 구매자 권한을 변경하시겠습니까?")){
    			
    			var arr=new Array();
					$("input:checkbox[name=rowCheck]:checked").each(function(i){
					
						var userNo=$(this).val();
						arr.push(userNo);
		
						
					})
					
					
					location.href="<%=request.getContextPath()%>/changeB.member?arr="+ arr;
    				
    			
    			}else{
    			return false;
    		}
    		
    	} 

	

   
   
   
   
   //구매자 권한 변경
   function changeBuy(){
      
   
          if(confirm("선택한 사용자의 구매자 권한을 변경하시겠습니까?")){
             
             var arr=new Array();
               $("input:checkbox[name=rowCheck]:checked").each(function(i){
               
                  var userNo=$(this).val();
                  arr.push(userNo);
      
                  
               })
               
               
               location.href="<%=request.getContextPath()%>/changeB.member?arr="+ arr;
                
             
             }else{
             return false;
          }
          
       } 


   
   
   //판매자 권한 변경
 function changeSell(){
      
   
          if(confirm("선택한 사용자의 판매자 권한을 변경하시겠습니까?")){
             
             var arr=new Array();
               $("input:checkbox[name=rowCheck]:checked").each(function(i){
               
                  var userNo=$(this).val();
                  arr.push(userNo);
      
                  
               })
               
               
               location.href="<%=request.getContextPath()%>/changeS.member?arr="
						+ arr;

			} else {
				return false;
			}

		}

		//모두 체크

		$(function() {
			$("#checkAll").hide();
			$("#checkBtn").click(function() {
				$("#checkAll").click();
			});

			$("#checkAll").click(function() {
				var bool = $(this).prop("checked");
				$(".common").prop('checked', bool);
			});
		});
	</script>



</body>
</html>