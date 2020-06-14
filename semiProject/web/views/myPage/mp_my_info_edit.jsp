<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*"%>
<%
	Member member = (Member)request.getAttribute("member");
	String userId = member.getUserId();
	String userName = member.getUserName();
	String userBirth = member.getUserBirth();
	String userPw = member.getUserPwd();
	String phone = member.getPhone();
	String email = member.getEmail();
	String userNo = member.getUserNo();
	
	Account ac = (Account)request.getAttribute("account"); 
	String  bank = ac.getBank();
	String account = ac.getAccount();
	String accountHold = ac.getAccount_hold();
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
  </style>
</head>
<body>

	<jsp:include page="../common/menubar2.jsp" />

	<!--메인사이드바 시작-->
	<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">

        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading">
              <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                  clip-rule="evenodd" />
              </svg>
              마이페이지</div>
            <a class="nav-link" href="<%=request.getContextPath()%>/myPage.me">
              <div class="sb-nav-link-icon"><svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 100-6 3 3 0 000 6z"
                    clip-rule="evenodd" />
                </svg></div>
              내정보
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-pencil" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M11.293 1.293a1 1 0 011.414 0l2 2a1 1 0 010 1.414l-9 9a1 1 0 01-.39.242l-3 1a1 1 0 01-1.266-1.265l1-3a1 1 0 01.242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 00.5.5H4v.5a.5.5 0 00.5.5H5v.5a.5.5 0 00.5.5H6v-1.5a.5.5 0 00-.5-.5H5v-.5a.5.5 0 00-.5-.5H3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              회원정보수정
            </a>
            <a class="nav-link" href="mp_buy_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-task" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M2 2.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5V3a.5.5 0 00-.5-.5H2zM3 3H2v1h1V3z"
                    clip-rule="evenodd" />
                  <path
                    d="M5 3.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zM5.5 7a.5.5 0 000 1h9a.5.5 0 000-1h-9zm0 4a.5.5 0 000 1h9a.5.5 0 000-1h-9z" />
                  <path fill-rule="evenodd"
                    d="M1.5 7a.5.5 0 01.5-.5h1a.5.5 0 01.5.5v1a.5.5 0 01-.5.5H2a.5.5 0 01-.5-.5V7zM2 7h1v1H2V7zm0 3.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5H2zm1 .5H2v1h1v-1z"
                    clip-rule="evenodd" />
                </svg></i></div>
              구매내역
            </a>
            <a class="nav-link" href="mp_sell_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-ul" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M5 11.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm-3 1a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2z"
                    clip-rule="evenodd" />
                </svg></i></div>
              판매내역
            </a>
            <a class="nav-link" href="mp_consultation_history.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-clipboard" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              1:1 상담내역
            </a>

          </div>
        </div>
		
        <div class="sb-sidenav-footer">
          <div class="small">Logged in as:</div>
          Start Bootstrap
        </div>
      </nav>
    </div>


	<!-- <div id="page-content-wrapper"> -->
    <div id="layoutSidenav_content">

      <!--main-->
 	<div class="container mt-5">
        <h2>회원정보수정</h2>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="mp_my_info.html">마이페이지</a></li>
          <li class="breadcrumb-item active">회원정보수정</li>
        </ol>

        <div class="card mb-4">
          <div class="card-body">
            <div class="container">
              <div class="row">
                <div class="col">

                </div>
                <div class="col-6">

                  <div>
                    <form role="form" id='registerForm' action="<%=request.getContextPath() %>/update.me" method="post" onsubmit="return validate();">
                      <div class="form-group"><br><br>
                        <label>아이디</label>

                        <input type="text" class="form-control" name="userId" id="userId" value="<%=userId%>" readonly>
                      </div>

                      <div class="form-group">
                        <label>이름</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="<%=userName%>" readonly>
                      </div>

                      <div class="form-group">
                        <label>생년월일</label>
                        <input type="text" class="form-control" id="userBirth" name="userBirth" value="<%=userBirth%>" size="8" maxlength="8"
                          readonly>
                      </div>

                      <div class="form-group">
                        <label>비밀번호</label>
                        <input type="password" class="form-control" name="userPwd" id="userPwd"
                          placeholder="비밀번호를 입력 해주세요" size="16" maxlength="16">
                        <label id="pwdresultcondition"></label>
                      </div>

                      <div class="form-group">
                        <label>비밀번호 확인</label>
                        <input type="password" class="form-control" name="userPwdCheck" id="userPwdCheck"
                          placeholder="비밀번호 확인을 위해 다시한번 입력 해주세요" size="16" maxlength="16">
                        <label id="pwdresult"></label>
                      </div>



                      <div class="form-group">
                        <label>휴대폰 번호</label>

                        <div class="row">

                          <div class="col">
                            <select type="phone" id="phone1" class="form-control" name="phone1">
                              <option value="010" selected>010</option>
                              <option value="011">011</option>
                              <option value="016">016 </option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                            </select>
                          </div>-

                          <div class="col">
                            <input type="text" id="phone2" class="form-control" name="phone2" type="text" size="4"
                              maxlength="4">
                            <label id="p2result"></label>
                          </div>-

                          <div class="col">
                            <input type="text" id="phone3" class="form-control" name="phone3" type="text" size="4"
                              maxlength="4">
                            <label id="p3result"></label>
                          </div>

                        </div>


                      </div>
                      <div>
                        <label>이메일 주소</label>

                        <div class="row">
                          <div class="col-6">
                            <input type="text" class="form-control" id="emailId" name="email1"
                              placeholder="이메일 아이디를 입력 해주세요">
                          </div>

                          <div class="col-6">
                            <input type="text" name="email2" list="email" id="userEmail"
                              style="width:255px; height:38px;" placeholder="이메일 주소를 입력해주세요">
                            <datalist id="email">
                              <option value="@naver.com">@naver.com</option>
                              <option value="@hanmail.net">@hanmail.net</option>
                              <option value="@daum.net">@daum.net</option>
                              <option value="@nate.com">@nate.com</option>
                              <option value="@yahoo.co.kr">@yahoo.co.kr</option>
                              <option value="@gmail.com">@gmail.com</option>
                            </datalist>
                          </div>


                        </div>
                        <label id="emailresult"></label>

                      </div>

                      <div class="form-group">
                        <label>계좌</label>

                        <div class="row">

                          <div class="col">
                            <input type="text" name="bank" list="bank1" id="bank" style="width:240px; height:38px;"
                              placeholder="은행 명을 입력해주세요">
                            <datalist id="bank1">
                              <option value="국민은행">국민은행</option>
                              <option value="신한은행">신한은행</option>
                              <option value="IBK은행">IBK은행</option>
                              <option value="하나은행">하나은행</option>
                              <option value="우리은행">우리은행</option>
                            </datalist>
                          </div>

                          <div class="col">
                            <input type="text" class="form-control" name="account_hold" id="account_hold"
                              placeholder="예금주 명">
                          </div>

                        </div>
                        <div class="row">
                          <div class="col-6"></div>
                          <div class="col-6">
                            <label id="BuCheck"></label>
                          </div>
                        </div>


                        <div class="row">
                          <div class="col-0"></div>
                          <div class="col-12">
                            <input type="text" class="form-control" name="account" id="account"
                              placeholder="계좌번호를 '-'없이 입력 해주세요">
                          </div>
                          <div class="col-0">
                          </div>
                        </div>
                        <label id="noresult"></label>

                      </div>

                      <br>
					<div style="display: none;">
						<input type="text" name="userPwd1" value="<%=userPw%>">
						<input type="text" name="phone11" value="<%=phone%>">
						<input type="text" name="email11" value="<%=email%>">
						<input type="text" name="bank1" value="<%=bank%>">
						<input type="text" name="account_hold1" value="<%=accountHold%>">
						<input type="text" name="account1" value="<%=account%>">
						<input type="text" name="userNo" value="<%=userNo%>">						
					</div>
                      <div class="form-group text-center">
                        <button type="submit" class="btn"                          
                          style="background:black; color:white; width:110px;">수정하기</button>
                      </div>
                    </form>
                  </div>

                </div>
                <div class="col">

                </div>
              </div>
            </div>


          </div>
        </div>
      </div>


      <!-- onsubmit validate() 함수-->

      <script>
        var flag = true;

        var userId = $("#registerForm input[name='userId']");
        // 아이디 영대,소문자 숫자로만 4~15자
        var regI = /^[a-zA-z0-9]{4,15}$/;

        // 한글 최소 2자 이상 6자 이하
        var regHE = /^[가-힣]{2,6}$/;

        // 비밀번호 영 대,소문자, 특수문자, 숫자 8~16자
        var regP = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,16}$/;

        // 이메일 양식
        var regE = /^@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

        // 핸드폰 중간자리 3~4 끝자리 4, 숫자만
        var regP2 = /^[0-9]{3,4}$/;
        var regP3 = /^[0-9]{4,4}$/;
        // 계좌번호 8자이상, 숫자만
        var regA = /^[0-9]{8,20}$/;
        
        function validate() {

          if ($("#userPwd").val().trim().length != 0 || $("#userPwdCheck").val().trim().length != 0) {            
        	  if($("#userPwd").val().trim().length == 0){
                  alert("비밀번호를 입력하세요");
                  $("#userPwd").focus();
                  flag = false;
              }
              else if(!regP.test($("#userPwd").val())){
                  alert("비밀번호 조건을 확인하세요");
                  $("#userPwd").focus();
                  flag = false;
              }
              else if($("#userPwdCheck").val().trim().length == 0){
                  alert("비밀번호 확인을 입력하세요");
                  $("#userPwdCheck").focus();
                  flag = false;
              }
              else if($("#userPwd").val() != $("#userPwdCheck").val() ){
                  alert("비밀번호가 같은지 확인해주세요");
                  $("#userPwdCheck").focus();
                  flag = false;
              }else{
            	  
        	  flag = confirm("회원 수정이 완료 되었습니다.");
              }
          }
          else if ($("#phone2").val().trim().length != 0 || $("#phone3").val().trim().length != 0) {
        	  if($("#phone2").val().trim().length == 0){
                  alert("휴대폰 번호를 입력하세요");
                  $("#phone2").focus();
                  flag = false;
              }
              else if(!regP2.test($("#phone2").val())){
              	alert("번호 3~4자리를 입력하세요");
                  $("#phone2").focus();
                  flag = false;
              }
              else if($("#phone3").val().trim().length == 0){
                  alert("휴대폰 번호를 입력하세요");
                  $("#phone3").focus();
                  flag = false;
              }
              else if(!regP3.test($("#phone3").val())){
              	alert("번호 4자리를 입력하세요");
                  $("#phone3").focus();
                  flag = false;
              }else{
            	  
        	  flag = confirm("회원 수정이 완료 되었습니다.");
              }
          }
          else if($("#emailId").val().trim().length != 0 || $("#userEmail").val().trim().length != 0){
        	  if($("#emailId").val().trim().length == 0){
                  alert("이메일 아이디를 입력하세요");
                  $("#emailId").focus();
                  flag = false;
              }
              
              else if($("#userEmail").val().trim().length == 0){
                  alert("이메일 주소를 입력하세요");
                  $("#userEmail").focus();
                  flag = false;
              }else{
            	  
        	  flag = confirm("회원 수정이 완료 되었습니다.");
              }
	          
         }else if($("#bank").val().trim().length != 0 || $("#account_hold").val().trim().length != 0 || $("#account").val().trim().length != 0){
        		 
        	 if($("#bank").val().trim().length == 0){
                 alert("계좌은행을 입력하세요");
                 $("#bank").focus();
                 flag = false;
             }
             else if($("#account_hold").val().trim().length == 0){
                 alert("예금주 명을 입력하세요");
                 $("#account_hold").focus();
                 flag = false;
             }
             else if(!regHE.test($("#account_hold").val())){
                 alert("예금주 명을 조건에 맞게 입력하세요");
                 $("#account_hold").focus();
                 flag = false;
             }	
             else if($("#account").val().trim().length == 0){
                 alert("계좌번호를 입력하세요");
                 $("#account").focus();
                 flag = false;
             }
             else if(!regA.test($("#account").val())){
             	alert("계좌번호를 조건에 맞게 입력하세요");
                 $("#account").focus();
                 flag = false;
             }else{
            	 
        	 flag = confirm("회원 수정이 완료 되었습니다.");
             }
         }   
          
          else {
            flag = confirm("회원 수정이 완료 되었습니다.");

          }
          return flag;
        }



        // 제약 조건식

        $(document).ready(function () {
          
          // pwd 제약조건
          $("#userPwd").change(function () {
            if (!regP.test($(this).val())) {
              $("#pwdresultcondition").html("비밀번호는 8자 이상 16자 이하 이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.").css("color", "red");
              $(this).focus();
            }
            else {
              $("#pwdresultcondition").html('비밀번호가 조건을 만족합니다.').css("color", "green");
            }
          });


          // pw 확인 
          $("#userPwdCheck").change(function () {
            if ($("#userPwd").val() != $(this).val() || $(this).val().length == 0) {
              $("#pwdresult").html("비밀번호가 일치하지 않습니다.").css("color", "red");
              $(this).focus();

            } else {
              $("#pwdresult").html("비밀번호가 일치합니다.").css("color", "green");
            }
          });

          $("#userPwd").change(function () {
            if ($("#userPwdCheck").val() != $(this).val() && $("#userPwdCheck").val().length > 0) {
              $("#pwdresult").html("비밀번호가 일치하지 않습니다.").css("color", "red");
            } else if ($("#userPwdCheck").val() == $(this).val() && $(this).val().length != 0) {
              $("#pwdresult").html("비밀번호가 일치합니다.").css("color", "green");
            }

          });



          // 휴대폰번호 : 전부 4자리 차게? #mPhone2 #mPhone3
          $("#phone2").change(function () {
            if (!regP2.test($(this).val())) {
              $("#p2result").html("번호 3~4자리를 입력하세요.").css("color", "red");
              $(this).focus();
            } else {
              $("#p2result").html('').css("color", "green");
            }
          });
          $("#phone3").change(function () {
            if (!regP3.test($(this).val())) {
              $("#p3result").html("번호 4자리를 입력하세요.").css("color", "red");
              $(this).focus();
            } else {
              $("#p3result").html('').css("color", "green");
            }
          });

          // 이메일 
          $("#userEmail").change(function () {
            if (!regE.test($(this).val())) {
              $("#emailresult").html("이메일 형식을 @와 . 을 사용 해주세요").css("color", "red");
              $(this).focus();
            } else {
              $("#emailresult").html('').css("color", "green");
            }
          });


          // 은행	

          $("#account_hold").change(function () {
            if (!regHE.test($(this).val())) {
              $("#BuCheck").html("한글로 2자 이상 6자 이하로 입력해주세요.").css("color", "red");
              $(this).focus();
            } else {
              $("#BuCheck").html("").css('color', 'green');
              $(this).focus().css("background", 'white');
            }
          });

          $("#account").change(function () {
            if (!regA.test($(this).val())) {
              $("#noresult").html("숫자만으로 8자리 이상 입력하세요.").css("color", "red");
              $(this).focus();
            } else {
              $("#noresult").html('').css("color", "green");
            }
          });


        });


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