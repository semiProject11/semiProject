<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
<%
	InquiaryList iq = (InquiaryList)request.getAttribute("inquiary");
	String iqc = iq.getInquiryContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#style {
	font-family: 'SeoulNamsanM'
}

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

#my_info td {
	text-align: left;
	padding-right: 10px;
}

#profile div {align ="center"
	
}

#naviya div {
	margin-bottom: 10px;
	color: black;
}
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
						</a> <a class="nav-link" href="<%=request.getContextPath()%>/sellList.sv">
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
					<h2>1:1 상담내역</h2>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="test.html">마이페이지</a></li>
						<li class="breadcrumb-item active">1:1 상담내역</li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i>1:1 상담내역
						</div>
						<div class="card-body">
							<div class="container my-3" id="post">
								<div class="container my-3">
									<form class="form-group my-3"
										action="<%=request.getContextPath() %>/update.inquiary"
										method="post" encType="multipart/form-data"
										onsubmit="return validate();">
										<input type="hidden" name="board_code" value="10">
										<div class="row">
											<div class="col-md-2 text-center">
												<label>상담 유형</label>
											</div>
											<div class="col-md-4" id="sangdam1">													
												<input type="text" name="sangdam1" id="sangdam1" value="<%=iq.getBoardType()%>"
													class="form-control" style="width: 100%; text-align: left;" readonly>
											</div>
											<div class="col-md-4" style="display: none;" id="sangdam">
												<select class="form-control" style="width: 80%"
													name="inquiaryName">
													<option value="A1" selected>이용문의</option>
													<option value="A2">고객의 소리</option>
													<option value="A3">제휴</option>
												</select>
											</div>
											<div class="col-md-2 text-center">
												<label>개시물 번호</label>
											</div>
											<div class="col-md-4" id="boardnum1">													
												<input type="text" name="boardnum" id="boardnum" value="<%=iq.getBoardNo() %>"
													class="form-control" style="width: 100%; text-align: left;" readonly>
											</div>											
										</div>

										<div class="row mt-2">
											<div class="col-md-2 text-center">
												<label for="inquiaryTitle">제목</label>
											</div>
											<div class="col-md-10">
												<input type="text" name="inquiaryTitle" id="inquiaryTitle" value="<%=iq.getTitle() %>"
													class="form-control" style="width: 100%; text-align: left;" readonly>
											</div>
										</div>
										<div class="mt-2">
											<textarea class="form-control" name="inquiaryContent"
												id="inquiaryContent"
												style="width: 100%; height: 400px; resize: none; text-align: left;" readonly><%=iq.getContent() %></textarea>

										</div>
										<%if(!iqc.equals("N")){ %>
										<div style="margin: 15px;">
												<label>답변내용</label>
										</div>
										<div class="mt-2">
											<textarea class="form-control"
												style="width: 100%; height: 400px; resize: none; text-align: left;" readonly><%=iq.getInquiryContent() %></textarea>

										</div>
										<%} else{%>
										<!--파일첨부-->
										<div class="row mt-2" id="inq_fileArea" style="display: none;">
											<div class="col-md-2 text-center">
												<label for="find_file01">파일 첨부 1</label>
											</div>
											<div class="col-md-10 form-group form_file"
												style="position: relative;">

												<input type="text" name="fileName1" id="fileName1"
													class="form-control form_point_color01"
													style="position: absolute; width: 98%" readonly
													placeholder="파일첨부 클릭 또는 파일을 드래그하세요"> <input
													type="file" name="fileName1" class="form-control"
													id="find_file01" style="position: absolute; opacity: 0;"
													onchange="javascript: document.getElementById('fileName1').value = this.value">



											</div>
											<div class="col-md-2 text-center">
												<label for="find_file02">파일 첨부 2</label>
											</div>
											<div class="col-md-10 form-group form_file"
												style="position: relative;">

												<input type="text" name="fileName2" id="fileName2"
													class="form-control form_point_color01"
													style="position: absolute; width: 98%" readonly
													placeholder="파일첨부 클릭 또는 파일을 드래그하세요"> <input
													type="file" name="fileName2" class="form-control"
													id="find_file02" style="position: absolute; opacity: 0;"
													onchange="javascript: document.getElementById('fileName2').value = this.value">

											</div>

										</div>
										<%} %>
										<!--파일첨부 끝-->




										<div class="row mt-5">
											<div class="col"></div>
											<div class="col text-center" id="button22">
											<%if(iqc.equals("N")){ %>
												<button type="button" class="btn"
													style="background: black; color: white" onclick="change();">수정 하기</button>
											<%} %>
												<button type="button" class="btn"
													style="background: black; color: white" onclick="delete1();">삭제하기</button>
											</div>
											<div class="col text-center" style="display: none;" id="button11">
												<button type="submit" class="btn"
													style="background: black; color: white">수정 완료</button>
												<button type="reset" class="btn"
													style="background: black; color: white" onclick="cancle();">취소</button>
											</div>
											<div class="col"></div>
										</div>


									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<script>
				function change(){
					// 상담유형 변경
					$("#sangdam").css("display","block")
					$("#sangdam1").css("display","none")
					// 제목 변경
					$("#inquiaryTitle").prop("readonly",false)
					
					// 내용 변경
					$("#inquiaryContent").prop("readonly",false)
					// 파일첨부 변경
					$("#inq_fileArea").css("display","flex")
					// 버튼 바꾸기
					$("#button11").css("display","block")
					$("#button22").css("display","none")
					
				}
				
				function cancle(){
					
					
					// 상담 디테일 불러오는 서블릿으로 이동
					var bid = $("#boardnum").val()
					location.href="<%=request.getContextPath()%>/detail.inquiary?bid="+bid
					
					
							
							
							
				}
				function delete1(){
					if(confirm("삭제 하시겠습니까?")){
					// 해당 1:1문의 번호 가지고 삭제 하는 서블릿으로 이동
					var bid = $("#boardnum").val()
					location.href="<%=request.getContextPath()%>/mpDelete.iq?bid="+bid
					
					}else{
	        			return false;
	        		}
				}
				
				
				function validate(){
		            
	            	if($("#inquiaryTitle").val().trim().length==0){
	            		alert('제목을 입력해주세요.');
	            		$("#inquiaryTitle").focus();
	            		return false;
	            		
	            	}else if($("#inquiaryContent").val().trim().length==0){
	            		alert('내용을 입력해주세요.');
	            		$("#inquiaryContent").focus();
	            		return false;
	            		
	            	}else{
	            		if(confirm("수정 하시겠습니까?")){
	            			
	            		return true;
	            		}else{
	            			return false;
	            		}
	            			
	            		
	            	}
	            	
	            	
	            }
				</script>


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
</body>
</html>