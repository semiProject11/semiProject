<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="service.model.vo.Pagination, service.model.vo.ServiceBuyList, java.util.ArrayList, board.model.vo.*"%>
<%
	Pagination pn = (Pagination) request.getAttribute("pn");
	ArrayList<ServiceBuyList> bsList = (ArrayList<ServiceBuyList>) request.getAttribute("bsList");	
	int listCount = pn.getListCount();
	int currentPage = pn.getCurrentPage();
	int maxPage = pn.getMaxPage();
	int startPage = pn.getStartPage();
	int endPage = pn.getEndPage();	
	String content1 = "";
	String content2 = "";
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

.starR {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 30px;
	height: 30px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
}

#naviya div {
	margin-bottom: 10px;
	color: black;
}
tr.exline td{border-top: 1px solid black;}
</style>
</head>
<body>
	<jsp:include page="../common/menubar3.jsp" />

	<!--메인사이드바 시작-->
	<div id="layoutSidenav" class="container">
		<div class="row">

			<div id="layoutSidenav_nav" class="col-2">
				<div class="mt-5">

					<div class="nav" id="naviya">
						<div class="sb-sidenav-menu-heading"
							style="font-size: 23px; margin-bottom: 20px; margin-top: 20px;">
							<svg class="bi bi-list" width="1em" height="1em"
								viewBox="0 0 16 16" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
									d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
									clip-rule="evenodd" />
              </svg>
							&nbsp;마이페이지
							<hr>
						</div>
						<a class="nav-link" href="<%=request.getContextPath()%>/myPage.me">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-person-fill" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 100-6 3 3 0 000 6z"
										clip-rule="evenodd" />
                </svg>
								&nbsp;내정보
							</div>
						</a> <a class="nav-link" href="<%=request.getContextPath()%>/edit.me">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-pencil" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M11.293 1.293a1 1 0 011.414 0l2 2a1 1 0 010 1.414l-9 9a1 1 0 01-.39.242l-3 1a1 1 0 01-1.266-1.265l1-3a1 1 0 01.242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"
										clip-rule="evenodd" />
                  <path fill-rule="evenodd"
										d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 00.5.5H4v.5a.5.5 0 00.5.5H5v.5a.5.5 0 00.5.5H6v-1.5a.5.5 0 00-.5-.5H5v-.5a.5.5 0 00-.5-.5H3z"
										clip-rule="evenodd" />
                </svg>
								&nbsp;회원정보수정
							</div>
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/buyList.sv">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-list-task" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M2 2.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5V3a.5.5 0 00-.5-.5H2zM3 3H2v1h1V3z"
										clip-rule="evenodd" />
                  <path
										d="M5 3.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zM5.5 7a.5.5 0 000 1h9a.5.5 0 000-1h-9zm0 4a.5.5 0 000 1h9a.5.5 0 000-1h-9z" />
                  <path fill-rule="evenodd"
										d="M1.5 7a.5.5 0 01.5-.5h1a.5.5 0 01.5.5v1a.5.5 0 01-.5.5H2a.5.5 0 01-.5-.5V7zM2 7h1v1H2V7zm0 3.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5H2zm1 .5H2v1h1v-1z"
										clip-rule="evenodd" />
                </svg>
								&nbsp;구매내역
							</div>
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/sellList.sv">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-list-ul" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M5 11.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm-3 1a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2z"
										clip-rule="evenodd" />
                </svg>
								&nbsp;판매내역
							</div>
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/selectList.iq">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-clipboard" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
										clip-rule="evenodd" />
                  <path fill-rule="evenodd"
										d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
										clip-rule="evenodd" />
                </svg>
								&nbsp;1:1 상담내역
							</div>
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/withPage.me">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-brightness-alt-high-fill" width="1em"
									height="1em" viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
  				<path fill-rule="evenodd"
										d="M4 11a4 4 0 1 1 8 0 .5.5 0 0 1-.5.5h-7A.5.5 0 0 1 4 11zm4-8a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 3zm8 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 11a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.414a.5.5 0 1 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zM4.464 7.464a.5.5 0 0 1-.707 0L2.343 6.05a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707z" />
				</svg>
								&nbsp;회원 탈퇴
							</div>
						</a>
					</div>
				</div>
			</div>



			<!-- <div id="page-content-wrapper"> -->
			<div id="layoutSidenav_content" class="col-10">








				<!--main-->

				<div class="container mt-5">
					<h2>구매내역</h2>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="test.html">마이페이지</a></li>
						<li class="breadcrumb-item active">구매내역</li>
					</ol>

					<div class="card mb-4">
						<div class="card-body">
							<div class="table-responsive mt-3">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>서비스번호</th>
											<th>서비스이미지</th>
											<th>제목</th>
											<th>구입일</th>
											<th>판매자</th>
											<th>연락처</th>
											<th>평점등록</th>

										</tr>
									</thead>
									<tbody>
										<%
											if (bsList.isEmpty()) {
										%>
										<tr>
											<td colspan="7">구매 내역이 없습니다.</td>
										</tr>
										<%
											} else {
										%>
										<%
											for (int i = 0; i < bsList.size(); i++) {
													ServiceBuyList s = bsList.get(i);													
										%>
										<tr class="exline">
											<td><%=s.getServiceNo()%></td>
											<td class="clickme">
												<div>
													<img src="image/<%=s.getChangeName() %>" alt=""
														style="width: 100px; height: 100px;">
												</div>
											</td>
											<td class="clickme"><%=s.getTitle()%></td>
											<td class="clickme"><%=s.getTradeDate()%></td>
											<td class="clickme"><%=s.getsUserName()%></td>
											<td class="clickme"><%=s.getsPhone()%></td>

											<!-- 리뷰 불러와서 매칭 시키기  -->
											

											<%
												if (s.getContent()!=null) {
											%>
											<td>
												<button type="button" style="background: black; color: white; width: 110px;" class="btn btn-primary" disabled>평점주기</button>
											</td>
										</tr>
										<tr>
											<td colspan="2" style="">평점 : <%=s.getRating() %></td>
											<td colspan="5">리뷰 : <%=s.getContent() %></td>
										</tr>
											<%
												} else {
											%>
											<td>												
												<button type="button" style="background: black; color: white; width: 110px;" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="<%=s.getServiceNo()%>">평점주기</button>
											</td>
																							
											
											
										</tr>
											<%
												}
											%>


											
										<%
											}
										%>
										<%
											}
										%>
										<div class="modal fade" id="exampleModal" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">리뷰와
																평점을 입력해주세요.</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<form action="<%=request.getContextPath()%>/insert.re" method="post" id="submit1">
															<div class="modal-body">
																<div class="form-group">
																	<label for="recipient-name">평점:</label>
																	<div class="starRev">
																		<span class="starR">1</span> <span class="starR">2</span>
																		<span class="starR">3</span> <span class="starR">4</span>
																		<span class="starR">5</span> <input type="text"
																			id="title" name="sNO" style="display: none;">
																		<textarea id="value11" name="value11"
																			style="display: none;"></textarea>
																	</div>
																</div>
																<div class="form-group">
																	<label for="message-text" class="col-form-label">리뷰:</label>
																	<textarea class="form-control" id="message-text" name="content"></textarea>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal" onclick="close111();">닫기</button>
																<button type="submit" data-dismiss="modal" class="btn btn-primary" onclick="submit11();">평점
																	등록</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										




										<script>
											$('.starRev span').click(function(){
												  $(this).parent().children('span').removeClass('on');
												  $(this).addClass('on').prevAll('span').addClass('on');
												  $("#value11").val($(this).text());
												  return false;
												});
											
											$(function(){
												$(".clickme").click(function(){
												alert("선택한 상품디테일로 넘어가서 상품의 정보를 볼수 있다.");						
													
												})
												
											})
											function close111(){
												alert("나 나오니?")
												location.href="<%=request.getContextPath()%>/buyList.sv"

											}
											function submit1(){
												alert("너는 4점이야")
												$("#submit1").submit();
											}

											$('#exampleModal')
													.on(
															'show.bs.modal',
															function(event) {
																var button = $(event.relatedTarget)
																var recipient = button
																		.data('whatever')
																var modal = $(this)
																modal
																		.find(
																				'.modal-body input')
																		.val(
																				recipient)
															})

											function submit11() {
												var rat = $("#value11").val()
												var cont = $("#message-text").val()
												var num = $("#title").val()												
												location.href="<%=request.getContextPath()%>/insert.re?value11="+rat+"&content="+cont+"&sNO="+num;
												
											}
											
										</script>
									</tbody>
								</table>
							</div>
						</div>


						<!------페이징 처리----->





					</div>
				</div>
				<div class="page-center">
					<ul class="pagination-t">


						<!-- disabled: 페이지 비활성화 -->
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/buyList.sv?currentPage=1"><<</a></li>
						<li class="page-item-t"><a class="page-link-t"
							href="<%if (currentPage != 1) {%><%=request.getContextPath()%>/buyList.sv?currentPage=<%=currentPage - 1%>
						<%}%>">Previous</a></li>
						<%
							for (int p = startPage; p <= endPage; p++) {
						%>
						<%
							if (p == currentPage) {
						%>
						<li class="page-item-t active-t" aria-current="page-t"><a
							class="page-link-t" disabled><%=p%></a></li>
						<%
							} else {
						%>
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/buyList.sv?currentPage=<%=p%>"><%=p%></a></li>
						<%
							}
						%>
						<%
							}
						%>

						<li class="page-item-t"><a class="page-link-t" 
						href="<%if (currentPage != endPage) {%>
					<%=request.getContextPath()%>/buyList.sv?currentPage=<%=currentPage + 1%>
						<%}%>">Next</a></li>
						<li class="page-item-t"><a class="page-link-t"
							href="<%=request.getContextPath()%>/buyList.sv?currentPage=<%=maxPage%>">>></a></li>

					</ul>

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
	</div>

</body>
</html>