<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*,member.model.vo.*,java.util.*"%>
    
    <%
    Board b=(Board)request.getAttribute("board");
    Member m=(Member)request.getAttribute("member");
    Inquiary i=(Inquiary)request.getAttribute("inquiary");
   
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

        th,
        tr,
        td {
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

        input,
        textarea {
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

        #bk,
        #bk:hover,
        #bk:focus {
            text-decoration: none;
            color: black;

        }


        .btn:hover,
        .btn:focus,
        #wh:hover,
        #wh:focus {
            text-decoration: none !important;
            color: black !important;
            background-color: gold !important;
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
								<a class="nav-link" href="<%=request.getContextPath()%>/list.grade">판매자 등급 관리</a> <a
									class="nav-link" href="<%=request.getContextPath()%>/list.transaction">거래내역 관리</a> <a
									class="nav-link" href="<%=request.getContextPath()%>/relist.bo">전체 리뷰 관리</a> <a
									class="nav-link" href="<%=request.getContextPath()%>/list.inquiary">문의 사항 관리</a>
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
								<a class="nav-link" href="<%=request.getContextPath()%>/list.report">신고 내역 관리</a>
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
								<a class="nav-link" href="<%=request.getContextPath()%>/listAd.notice">공지사항 관리</a><a
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

                <head>
                    <h2>문의 사항 관리</h2>
                    <hr>
                </head>

                <div class="container my-4" id="post">
              
                    <div class="container my-3">
                        <form class="form-group">
                        <input type="hidden" name="board_no" id="board_no" value="<%=b.getBoard_no() %>">
                            <div class="row">
                                <div class="col-md-2"><label>문의 유형</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%"><%=i.getInquiry_name() %></label></div>


                            </div>
                            <div class="row">
                                <div class="col-md-2"><label>작성자</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%"><%=m.getUserId() %></label></div>
                                <div class="col-md-2"><label>작성일시</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:100%"><%=b.getWrite_date() %></label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2"><label>제목</label></div>
                                <div class="col-md-10"><label class="form-control"
                                        style="width:100%; text-align:left;"><%=b.getTitle() %></label></div>
                            </div>
                            <div class="mt-2">
                                <label class="form-control"
                                    style="width:100%; height:300px; resize:none; text-align:left;"><%=b.getContent() %></label>

                            </div>
                            
                            
                       <!-- 답글 보이는 부분 -->
                  
            					<div class="mx-3" id="test">
                                <div class="row mt-5">
                                    <div class="col-md-2">
                                    <label style="background:none; text-align:left; font-weight:bold;">TimeSeller</label>
                                    </div>
                                    <div class="col-md-2">
                                    <label style="background:none; text-align:left; font-weight:bold;"><%=i.getInquiry_date() %></label>
                                    </div>
                                    <div class="col-md-8"></div>
                                	</div>
                               	<div class="row" id="replyArea">
                                    <textarea class="form-control" id="replyZone"
                                        style="width:100%; height:250px; resize:none; text-align:left; background:white" readonly><%=i.getInquiry_content() %></textarea>
                                </div>  
                                
                                
                                <!--여기부터 답변다는 창-->
                                
                                <div class="row" style="width:100%;height:100px; padding:5px 0px;">
                                <%if(i.getInquiry_yn().equalsIgnoreCase("N")){ %>
									<div class="col-md-10">
                                    <textarea class="form-control"
                                        style="width:100%; height:50px; resize:none;" id="content">답변을 등록해주세요.</textarea>
                                    </div>
                                    <%}else{ %>
                                    <div>
                                    <textarea class="form-control"  id="replyWrite" style="width:850px; height:50px; resize:none;" placeholder="기존에 작성한 댓글은 삭제 후 등록됩니다."></textarea>
                                    </div>
                                    <%} %>
                                    &nbsp;
                                    <div>
                                        <button type="button" class="btn" style="background:black; color:white; height:50px; width:100%;" id="addReply">답변작성</button>


                                        
                                    </div>
                                </div>

                            </div>
                            <div class="row mt-2">
                                <div class="col"></div>
                                <div class="col text-center"><button type="button" class="btn"
                                        style="background:black; color:white"><a href="admin_inquiry.html"
                                            id="wh">목록</a></button>
                                    <!--row나 col에서 text-center로 가운데 정렬 가능-->

                                    <button type="button" class="btn" style="background:black; color:white">삭제</button>
                                </div>
                                <div class="col"></div>
                            </div>
                    </div>
                    </form>
                </div>
            </div>


  <script>
            $(function(){
            	$("#addReply").click(function(){
            		
            		var content=$("#replyWrite").val(); //답글 쓰는 textarea의 내용(새로 업데이트할 답변내용)
            		var board_no=<%=b.getBoard_no()%>	//해당 보드넘버
            		
            		$.ajax({
            			
            			url:"<%=request.getContextPath()%>/reply.inquiary",
            			type:"post",
            			data:{content:content,board_no:board_no},
   
            			
            			success:function(data){
            				
            				//textarea 내용만 바꾸려고 할때 
            				if(data=="success"){
            				$("#replyZone").val(content); 
            				$("#replyWrite").val("");
            				
            			}
            			 
            			},
            			error:function(request,status,error){
        				    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        				}
            		})
            	})
            })
            
            </script>


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
            </div>
            </div>
            
            
            
          
</body>
</html>