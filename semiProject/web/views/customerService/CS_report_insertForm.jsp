<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.*"%>

<%
HttpSession session1 = request.getSession();

Member loginUser = (Member)session1.getAttribute("loginUser");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input, textarea {
	/* border: 1px solid #dee2e6; */
	border: 1px solid #495057;
	height: 80%;
	margin: 0;
}

/*보여주기용 임시*/
#wh, #wh:hover, #wh:focus {
	text-decoration: none;
	color: white;
}

#bk, #bk:hover, #bk:focus {
	text-decoration: none;
	color: black;
}

#file-button {
	opacity: 0;
	position: absolute;
}

label {
	vertical-align: middle !important;
	padding: 5px;
}


</style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />



	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-light"
				id="sidenavAccordion">

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
							고객센터
						</div>
						<a class="nav-link"
							href="<%=request.getContextPath()%>/list.notice">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-bell" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                  <path fill-rule="evenodd"
										d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
										clip-rule="evenodd" />
                </svg>
							</div> 공지사항

						</a> <a class="nav-link" href="<%=request.getContextPath()%>/list.faq">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-question-circle" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z"
										clip-rule="evenodd" />
                  <path
										d="M5.25 6.033h1.32c0-.781.458-1.384 1.36-1.384.685 0 1.313.343 1.313 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.007.463h1.307v-.355c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.326 0-2.786.647-2.754 2.533zm1.562 5.516c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
                </svg>
							</div> FAQ
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/views/customerService/CS_inquiary_insertForm.jsp">
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
								</i>
							</div> 1:1 문의
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/views/customerService/CS_report_insertForm.jsp">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-brightness-alt-high-fill" width="1em"
									height="1em" viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
										clip-rule="evenodd" />
                </svg>
							</div> 신고하기
						</a> <a class="nav-link"
							href="<%=request.getContextPath()%>/views/customerService/CS_policy_list.jsp">
							<div class="sb-nav-link-icon">
								<svg class="bi bi-file-text" width="1em" height="1em"
									viewBox="0 0 16 16" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
										d="M4 1h8a2 2 0 012 2v10a2 2 0 01-2 2H4a2 2 0 01-2-2V3a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V3a1 1 0 00-1-1H4z"
										clip-rule="evenodd" />
                  <path fill-rule="evenodd"
										d="M4.5 10.5A.5.5 0 015 10h3a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 8h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 6h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 4h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5z"
										clip-rule="evenodd" />
                </svg>
							</div> 개인정보처리방침
						</a>

					</div>
				</div>

				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>

		<div id="layoutSidenav_content">





			<!--contents-->
			<header class="container mt-5">
				<h2>신고하기</h2>
				<hr>
			</header>


			<div class="container my-3">
				<div class="container my-3">
					<form class="form-group"
						action="<%=request.getContextPath()%>/insert.report" method="post"
						encType="multipart/form-data" onsubmit="return validate();">
						<input type="hidden" name="board_code" value="30">

						<div class="row text-center">
							<div class="col-md-2">
								<label>신고 유형</label>
							</div>
							<div class="col-md-4">
								<select class="form-control" style="width: 100%"
									name="report_type" id="report_type">
									<option selected>선택</option>
									<option value="B1">판매자를 신고합니다</option>
									<option value="B2">구매자를 신고합니다</option>
								</select>
							</div>

							<div class="col-md-2"></div>
							<div class="col-md-4"></div>


						</div>
						<div class="row text-center mt-2">

							<div class="col-md-2">
								<label>서비스번호</label>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control" name="service_no"
									id="service_no">
							</div>
								<div class="col-md-1">
								<!-- <button type="button" class="btn" id="button"
									style="background: black; color: white" onclick="checkReport();">확인</button> -->
								</div>
							<div class="col-md-2">
								<label>신고 대상 아이디</label>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control" style="width: 100%;"
									name="user_no" id="user_no">
							</div>


						</div>

						<div class="row text-center mt-2">
							<div class="col-md-2">
								<label>제목</label>
							</div>
							<div class="col-md-10">
								<input type="text" class="form-control" name="title" id="title"
									style="width: 100%; text-align: left;">
							</div>
						</div>
						<div class="mt-2">
							<textarea class="form-control" name="content" id="content"
								style="width: 100%; height: 400px; resize: none; text-align: left;"></textarea>

						</div>
						<!--파일첨부-->
						 <div class="row mt-2" id="inq_fileArea">
                            <div class="col-md-2 text-center"><label for="find_file01">파일 첨부 1</label></div>
                            <div class="col-md-10 form-group form_file" style="position: relative;">

                                <input type="text" name="fileName1" id="fileName1" class="form-control form_point_color01" style="position: absolute; width:98%" readonly
                                    placeholder="파일첨부 클릭 또는 파일을 드래그하세요">
                             
                                    <input type="file" name="fileName1" class="form-control" id="find_file01" style="position: absolute; opacity: 0;"
                                    onchange="javascript: document.getElementById('fileName1').value = this.value"> 
                                  
                                    

                            </div>
                            <div class="col-md-2 text-center"><label for="find_file02">파일 첨부 2</label></div>
                            <div class="col-md-10 form-group form_file" style="position: relative;">

                                <input type="text" name="fileName2" id="fileName2" class="form-control form_point_color01" style="position: absolute; width:98%" readonly
                                    placeholder="파일첨부 클릭 또는 파일을 드래그하세요">
                             
                                    <input type="file" name="fileName2" class="form-control" id="find_file02" style="position: absolute; opacity: 0;"
                                    onchange="javascript: document.getElementById('fileName2').value = this.value"> 
                                  
                            </div>
                            
                        </div>
						<!--파일첨부 끝-->


						<div class="row my-5">
							<div class="col"></div>
							<div class="col text-center">

								<button type="submit" class="btn" id="button"
									style="background: black; color: white">작성 완료</button>


							</div>
							<div class="col"></div>
						</div>
				</form>
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
		function validate() {

			if ($("#report_type").val("select").trim().length < 3) {

				alert('신고 유형을 선택해주세요.');
				return false;

			} else if ($("#service_no").val.trim().length == 0) {

				alert('서비스 번호를 입력해주세요.');
				$("#service_no").focus();
				return false;

			} else if ($("#user_no").val.trim().length == 0) {

				alert('신고 대상 아이디를 입력해주세요.');
				$("#service_no").focus();
				return false;

			} else if ($("#title").val().trim().length == 0) {
				alert('제목을 입력해주세요.');
				$("#title").focus();
				return false;

			} else if ($("#content").val().trim().length == 0) {
				alert('내용을 입력해주세요.');
				$("#content").focus();
				return false;

			} else {
				alert('작성하신 글이 등록되었습니다.');
				return true;
			}

		};
		
		
		
		
		//로그인해야 작성가능
		
	      $(function(){
              
          	if(<%=loginUser==null%>){
          		alert("로그인 후 작성 할 수 있습니다.")
          		location.href="<%=request.getContextPath()%>/views/loginAndRegister/LS_login.jsp"
          	}
          	
          })
		
		
		//여기서 유효성 검사 해줘야함
		
	<%-- 	function checkReport(){
			
			
				$.ajax({
					
					url:"<%=request.getContextPath()%>/check.report",
					type:"post",
					data:{service:service_no.val()},
					sucess:function(data){
						
					if(data=="success"){
						
						alert("서비스 번호가 확인되었습니다."data);
						$.each(data,function(){
					 $("#user_no").val(<%=member.getUserName()%>);
						
							
						})
						
					}
						
						
						
					},
					
					error:function(request,status,error){
		                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		                   
		               }
					
	
			
		}; --%>
	</script>
</body>
</html>