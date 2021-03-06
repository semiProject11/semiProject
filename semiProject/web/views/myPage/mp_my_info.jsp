<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member member = (Member)request.getAttribute("member");
	String userId = member.getUserId();
	String userName = member.getUserName();
	String email = member.getEmail();
	int buyCount = (int)request.getAttribute("buyCount");
	int sellCount = (int)request.getAttribute("sellCount");
	int gradeTot = member.getGradeTot();
	String grade = member.getGrade();
	int point = member.getPoint();
	String fileName = (String)request.getAttribute("fileName");
	String gradeIcon = member.getGrade();
	String userNo = member.getUserNo();
	String phone = member.getPhone();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
    th,
    tr,
    td {
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
    #profile div{
      align="center"
    }
    #naviya div{
			margin-bottom: 10px;
			color : black;
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
 <form action="<%=request.getContextPath() %>/insert.pf" method="post" encType="multipart/form-data" onsubmit="">
      <div class="container mt-5">
        <h2>내정보</h2>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="mp_my_info.html">마이페이지</a></li>
          <li class="breadcrumb-item active">내정보</li>
        </ol>

        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <div class="container">
                <div class="row">
                
                <div class="col-4">
                  <div class="card" id="profile">                    
                    <div class="card-header" align="center">프로필 사진</div>
                    <div class="card-body" align="center" id="imgArea"><img id="titleImg" src="profile_imgFiles/<%=fileName%>" alt="" 
                     style="width: 140px; height: 140px; cursor:pointer;"><br>                    
                    </div>
                    <div class="card-footer" align="center">
                      <button align="center" type="submit" id="button_joinus" class="btn" style="background:black; color:white; width:120px;" disabled>프로필 변경</button>
                    </div>
                    
                  </div>
                </div>
                <div class="col-8">
                 
                    <table id="my_info" style="margin-left: 30px;">

                      <tr>
                        <td style="text-align: left;">아이디 : </td>
                        <td><label id="info_name"><%=userId%></label></td>
                      </tr>
                      <tr>
                        <td style="text-align: left;">이름 : </td>
                        <td><label id="info_id"><%=userName%></label></td>
                      </tr>
                      <tr>
                        <td style="text-align: left;"><label>이메일 : </label></td>
                        <td> <label id="info_email"><%=email%></label></td>
                      </tr>
                      <tr>
                        <td style="text-align: left;"><label>전화번호 : </label></td>
                        <td> <label id="info_phone"><%=phone%></label></td>
                      </tr>
                      <tr>
                        <td><label>구매횟수 : </label></td>
                        <td><label id="info_buy_count"><%=buyCount%></label></td>
                      </tr>
                      <tr>
                        <td><label>판매횟수 : </label></td>
                        <td><label id="info_sell_count"><%=sellCount%></label></td>
                      </tr>
                      <tr>
                        <td><label>등급 : </label></td>
                        <td><label id="info_level_point"><%=gradeTot%> / &nbsp;</label><label><img src="gradeIcon/<%=gradeIcon%>.png" alt=""
                              style="width: 20px; height: 20px;"></label></td>
                      </tr>
                      <tr>
                        <td><label>포인트 : </label></td>
                        <td><label id="info_point"><%=point%> point</label></td>
                        <td>
                        	<button type="button" class="btn" onclick="location.href='views/myPage/mp_point_charge.jsp'" style="background:black; color:white; width:110px;">포인트충전</button>
                        </td>
                        <td>
				            <button type="button" class="btn" onclick="location.href='<%=request.getContextPath()%>/select.ac'" style="background:black; color:white; width:110px;">출금하기</button>
				         </td>
                      </tr>

                  
                    </table>

				
                <div id="fileArea">
				<input type="file" id="profileImg" name="profileImg" onchange="LoadImg(this)">
				<input type="text" name="userNo" value="<%=userNo%>">
				</div>
                </div>
                
                </div>
                
              </div>
            </div>

          </div>
        </div>
      </div>
      </form>
      
	<script>	
	
	$(function(){
		 $("#fileArea").hide(); 		
			
		 $("#imgArea").click(function(){
				$("#profileImg").click();				
				
			 
		 
			});
		 
		 
		

	})
	
	
	function LoadImg(value){
					if(value.files[0].size >= (1024 * 1024 *10)){
						alert("파일용량이 너무 큽니다.");
					}else{											
						
						if(value.files && value.files[0]){
							var reader = new FileReader();							
							reader.onload = function(e){
								$("#titleImg").attr("src",e.target.result);
								 $('#button_joinus').attr('disabled', false);
							}
							reader.readAsDataURL(value.files[0]);
						}
					}
		}
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
    </div>
    
</body>
</html>