<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="board.model.vo.*,java.util.ArrayList"%>

<%
    
    Board b = (Board) request.getAttribute("board");
    ArrayList<Files> f=(ArrayList<Files>)request.getAttribute("flist");
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#jin {
	background: black;
	border: none;
}

#young {
	font-family: "돋움";
	color: black;
	font: bold;
}

th, tr, td {
	text-align: center;
	vertical-align: middle !important;
}

#post {
	border: none;
	background: rgba(0, 0, 0, 0.05);
	border: 1px solid #dee2e6;
}

label {
	background: white;
	border-radius: 0.25rem;
	padding: 10px;
	height: 80%;
	width: 100%;
	text-align: center;
}

input, textarea {
	/* border: 1px solid #dee2e6; */
	border: 1px solid #495057;
	height: 80%;
	margin: 0;
}

/*보여주기용 임시*/
#wh {
	text-decoration: none;
	color: white;
}

#bk, #bk:hover, #bk:focus {
	text-decoration: none;
	color: black;
}

.btn:hover, .btn:focus, #wh:hover, #wh:focus {
	text-decoration: none !important;
	color: black !important;
	background-color: gold !important;
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />

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
								<a class="nav-link" href="admin_grade.html">판매자 등급 관리</a> <a
									class="nav-link" href="admin_transaction.html">거래내역 관리</a> <a
									class="nav-link" href="admin_review.html">전체 리뷰 관리</a> <a
									class="nav-link" href="admin_inquiry.html">문의 사항 관리</a>
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
								<a class="nav-link" href="admin_report.html">신고 내역 관리</a>
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
								<a class="nav-link" href="admin_point.html">포인트 관리</a><a
									class="nav-link" href="admin_refund.html">환불 관리</a>
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
                            </svg> &nbsp;공지사항/이벤트
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseNotice"
							aria-labelledby="headingOne" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="admin_notice.html">공지사항 관리</a><a
									class="nav-link" href="admin_event.html">이벤트 관리</a>
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
			<!--contents-->
			<div class="container mt-5">

				<header>
					<h2>공지사항 관리</h2>
					<hr>
				</header>
				<div class="container">
					<div class="container mt-4" id="post">
						<div class="container my-5">
							<form class="form-group"
								action="<%=request.getContextPath()%>/update.notice"
								method="post" encType="multipart/form-data"
								onsubmit="return validate();">
								<input type="hidden" name="board_no" value="<%=b.getBoard_no() %>">
								
								<div class="row">
									<div class="col-md-2">
										<label for="title">공지 유형</label>
									</div>
									<div class="col-md-10">
										<select class="form-control" style="width: 100%"
											name="board_code" id="report_type">
											<option value="20">일반 공지</option>
											<option value="50">자주묻는 질문</option>
											<option value="60">개인정보 처리 지침</option>
										</select>
									</div>
								</div>

							

					<div class="row">

						<div class="col-md-2">
							<label>제목</label>
						</div>
						<div class="col-md-10">
							<input type="text" class="form-control" id="title" name="title"
								style="width: 100%; text-align: left;"
								value="<%=b.getTitle() %>">
						</div>
					</div>


					<div class="mt-2">
						<div>
							<!--편집 API 알아보고 찾으면 넣기-->
						</div>
						<textArea class="form-control" id="content" name="content"
							style="width: 100%; height: 500px; resize: none; text-align: left"><%=b.getContent() %>
                            </textArea>

					</div>


					<!--파일첨부-->

					<%if(f.isEmpty()){ %>
					<div class="row mt-2">
						<div class="col-md-2 text-center">
							<label for="find_file01">파일첨부</label>
						</div>
						<div class="col-md-10 form-group form_file"
							style="position: relative;">

							<input type="text" id="fileName"
								class="form-control form_point_color01"
								style="position: absolute; width: 97%" readonly
								placeholder="등록된 파일이 없습니다.">
								 <input type="file" name="fileName" class="form-control" id="find_file01"
                                            style="position: absolute; opacity: 0;"
                                            onchange="javascript: document.getElementById('fileName').value = this.value">
								
						</div>
					</div>

					<%}else{ %>

					<%for(int i=0;i<f.size();i++){ %>
					<div class="row mt-2">
						<div class="col-md-2 text-center">
							<label for="find_file01">파일첨부</label>
						</div>
						<div class="col-md-10 form-group form_file"
							style="position: relative;">

							<input type="text" id="fileName"
								class="form-control form_point_color01"
								style="position: absolute; width: 97%" readonly
								placeholder="<%=(f.get(i)).getOrigin_name()%>"> <input
								type="file" name="fileName" class="form-control"
								id="find_file01" style="position: absolute; opacity: 0;"
								onchange="javascript: document.getElementById('fileName').value = this.value">



						</div>
					</div>

					<%} %>
					<%} %>
					<!--파일첨부 끝-->




					<div class="row mt-3">
						<div class="col"></div>
						<div class="col text-center">
							<button type="button" class="btn"
								style="background: black; color: white" onclick="goList();">목록</button>
							<button type="submit" class="btn"
								style="background: black; color: white">수정</button>


						</div>
						<div class="col"></div>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>





























	<!--footer-->
	<footer class="py-4 bg-light mt-auto">
		<div class="container-fluid">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; Your Website 2019</div>
				<div>
					<a href="#">Privacy Policy</a> &middot; <a href="#">Terms &amp;
						Conditions</a>
				</div>
			</div>
		</div>
	</footer>
	</div>
	</div>



	<script>
	
	//수정하기
	
    function validate(){
        
    	if($("#title").val().trim().length==0){
    		alert('제목을 입력해주세요.');
    		$("#noticeTitle").focus();
    		return false;
    		
    	}else if($("#content").val().trim().length==0){
    		alert('내용을 입력해주세요.');
    		$("#noticeContent").focus();
    		return false;
    		
    	}else{
    		alert('공지사항이 수정되었습니다.');
    	
    		return true;
    	}
    	
    	
    };
	
	
    //목록눌러 공지사항 돌아가기
	function goList(){
		
		location.href="<%=request.getContextPath()%>/listAd.notice";

		}
	</script>
</body>
</html>