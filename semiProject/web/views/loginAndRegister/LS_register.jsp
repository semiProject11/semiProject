<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" />
 <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"
    crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
    crossorigin="anonymous"></script>
     <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
</head>
<style>
        .btn{
            background: black !important;
            border-color:black !important;
            outline: black !important;
        }
        #closelogin{
            color:white !important; 
            text-decoration: none;
        }

    </style>
<body>


<article class="container">
        
            <div class="row">
              <div class="col">
                
              </div>
              <div class="col-6">
              
                <div class="page-header" align='center'>
                  <div><br>
                  <a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/image/logo2.png"></a>
                  </div>
              </div>
              <div>
                  <form role="form" id='registerForm' action="LS_login.html" method="post" onsubmit="return validate();">
                      <div class="form-group"><br><br>
                          <label>아이디</label>
                          
                                <input type="text" class="form-control" name="userId" id="userId" placeholder="4~12자리로 아이디를 영문 대, 소문자 와 숫자만 사용하세요 " >
                              
                            <label id="idcondition"></label>
                            <label id="duCheck"></label>
                           </div>
                           
                          
                        
                      <div class="form-group">
                        <label>비밀번호</label>
                        <input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="비밀번호를 입력 해주세요" size="16" maxlength="16" >
                        <label id="pwdresultcondition"></label>
                    </div>

                    <div class="form-group">
                        <label>비밀번호 확인</label>
                        <input type="password" class="form-control" name="userPwdCheck" id="userPwdCheck" placeholder="비밀번호 확인을 위해 다시한번 입력 해주세요" size="16" maxlength="16" >
                        <label id="pwdresult"></label>
                    </div>

                    <div class="form-group">
                      <label>이름</label>
                      <input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력 해주세요" >
                      <label id="nameresult"></label>
                    </div>

                    <div class="form-group">
                      <label>생년월일</label>
                      <input type="text" class="form-control" id="userBirthday" name="userBirthday" placeholder="생년월일 8자리를 입력 해주세요 ex) 19900101" size="8" maxlength="8" >
                      <label id="Birthdayresult"></label>
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
                        <input type="text" id="phone2" class="form-control" name="phone2" type="text" size="4" maxlength="4">
                        <label id="p2result"></label>
                        </div>-

                        <div class="col">
                        <input type="text" id="phone3" class="form-control" name="phone3" type="text" size="4" maxlength="4">
                        <label id="p3result"></label>
                        </div>

                    </div>


                    </div>
                    <div class="form-group">
                        <label>이메일 주소</label>
                        
                    <div class="row">
                            <div class="col-9">
                            <input type="text" class="form-control" id="emailId" name="emailId" placeholder="네이버 이메일 아이디를입력 해주세요" >
                            </div>

                        <div class="col-3">
                            <div class="form-group"><input type="button" value="확인하기" id="emailcheck" class="btn btn-primary"></div>
                        </div>

                    </div>


                        <label id="emailresult"></label>
                        <div class="form-group">

                        <div class="row">
                                <div class="col-0"></div>

                                <div class="col-9">
                                <input type="text" class="form-control" id="emailNum" name="emailNum" placeholder="인증번호를 입력 해주세요" >
                                </div>

                                <div class="col-3">
                                    <div class="form-group"><input type="button" value="인증하기" id="emailNocheck" class="btn btn-primary"></div>
                                </div>

                        </div>
                        </div>
                    </div>

                    <div class="form-group">
                           <label>계좌</label>

                        <div class="row">

                            <div class="col">
                            <input type="text" name="Bank" list="bank" id="Bank" style="width:240px; height:38px;"  placeholder="은행 명을 입력해주세요" >
                            <datalist id="bank" name="Bank"> 
                            <option value="국민은행">국민은행</option>
                            <option value="신한은행">신한은행</option>
                            <option value="IBK은행">IBK은행</option>
                            <option value="하나은행">하나은행</option>
                            <option value="우리은행">우리은행</option>
                            </datalist>
                            </div>

                            <div class="col">
                            <input type="text" class="form-control" name="bankUser" id="bankUser" placeholder="예금주 명" >
                            </div>

                        </div>

                        <br>

                        <div class="row">
                            <div class="col-0"></div>
                            <div class="col-12">
                                <input type="text" class="form-control" name="bankNo" id="bankNo" placeholder="계좌번호를 '-'없이 입력 해주세요" >
                            </div>
                            <div class="col-0">
                            </div>
                        </div>
                        <label id="noresult"></label>

                    </div>

                      <br>

                    <div class="form-group text-center">
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                        <div class="form-group"> 
                        <div class="form-group"><input type="submit" value="가입하기" class="btn btn-primary btn-block-"></div>
                        </div><br><br>
                        </div>
                        <div class="col"></div>
                    </div>
                    </div>
            
                </form>
            </div>
      
            </div>
            <div class="col">
                
            </div>
            </div>
    
        </article>
        

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

      <!-- onsubmit validate() 함수-->

        <script>
            function validate(){
            	var flag = false;
            	
	           	
                
                
                
                
    			if($("#userId").val().trim().length == 0){
                    alert("아이디를 입력하세요");
                    $("#userId").focus();
                    return false;
                }
                if($("#userPwd").val().trim().length == 0){
                    alert("비밀번호를 입력하세요");
                    $("#userPwd").focus();
                    return false;
                }
                if($("#userPwdCheck").val().trim().length == 0){
                    alert("비밀번호 확인을 입력하세요");
                    $("#userPwdCheck").focus();
                    return false;
                }
                if($("#userName").val().trim().length == 0){
                    alert("이름을 입력하세요");
                    $("#userName").focus();
                    return false;
                }
                if($("#userBirthday").val().trim().length == 0){
                    alert("생년월일을 입력하세요");
                    $("#userBirthday").focus();
                    return false;
                }
                if($("#phone1").val().trim().length == 0){
                    alert("휴대폰 번호를 입력하세요");
                    $("#phone1").focus();
                    return false;
                }
                if($("#phone2").val().trim().length == 0){
                    alert("휴대폰 번호를 입력하세요");
                    $("#phone2").focus();
                    return false;
                }
                if($("#phone3").val().trim().length == 0){
                    alert("휴대폰 번호를 입력하세요");
                    $("#phone3").focus();
                    return false;
                }
                if($("#emailId").val().trim().length == 0){
                    alert("이메일 아이디를 입력하세요");
                    $("#emailId").focus();
                    return false;
                }
                if($("#userEmail").val().trim().length == 0){
                    alert("이메일 주소를 입력하세요");
                    $("#userEmail").focus();
                    return false;
                }
                if($("#emailNum").val().trim().length == 0){
                    alert("인증번호를 입력하세요");
                    $("#emailNum").focus();
                    return false;
                }
                if($("#Bank").val().trim().length == 0){
                    alert("계좌은행을 입력하세요");
                    $("#Bank").focus();
                    return false;
                }
                if($("#bankUser").val().trim().length == 0){
                    alert("예금주 명을 입력하세요");
                    $("#bankUser").focus();
                    return false;
                }
                if($("#bankNo").val().trim().length == 0){
                    alert("계좌번호를 입력하세요");
                    $("#bankNo").focus();
                    return false;
                }
                else{
                	 return confirm("회원가입에 성공하였습니다!! \nTimeSeller의 회원이 되신 것을 축하합니다!!");

                 }
                    
              }
            

            
            // 제약 조건식

            $(document).ready(function(){
    
				var userId = $("#registerForm input[name='userId']");
				// 아이디 영대,소문자 숫자로만 4~15자
				var regI = /^[a-zA-z0-9]{4,15}$/;

				// 한글 최소 2자 이상 영어 2자 2자 이상 
				var regHE = /^[가-힣]{2,}|[a-zA-Z]{2,}\s[a-zA-Z]{2,}$/;
				
				// 비밀번호 영 대,소문자, 특수문자, 숫자 8~16자
				var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,16}$/;
                
				// 생년월일 8자 숫자만
				var regB = /^[0-9]{8,8}$/;
				
				// 핸드폰 중간자리 3~4 끝자리 4, 숫자만
				var regP2 = /^[0-9]{3,4}$/;
                var regP3 = /^[0-9]{4,4}$/;
                // 계좌번호 8자이상, 숫자만
                var regA = /^[0-9]{8,20}$/;
      
                // 아이디 중복확인 ajax
                
    			$("#userId").change(function(){	
    				if(userId.val().length<4){
    					$("#duCheck").html("").css("color", "white");
    				}
    				else{
    			
    					$.ajax({
		    				url : "<%=request.getContextPath()%>/idCheck.me",
		    				type : 'post',
		    				data:{userId:userId.val()},
		    				success : function(data) {
		    					if (data == "fail") {
		    						$("#duCheck").html("이미 존재하는 아이디입니다 ").css("color", "red");
		    						$("#userId").val('');
		                            $("#userId").focus();
		    					}
		    					else{
		    						$("#duCheck").html("사용 가능한 아이디입니다 ").css("color", "green");
		    						
		    					
		    					}
		    					
		    				}
		    				, error : function(request,status,error){
		    				    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    				}
		    				});
		    			}
		    			});
            	
            	
            	
            	
            	
            	
            		

                    // 아이디 제약조건 : 영어 숫자만
                    $("#userId").change(function(){
                    if(!regI.test($(this).val())){
                        $("#idcondition").html("아이디는 영문 대소문자와 숫자만으로  4~12자리로 입력해야합니다.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }
                    
                    else{
                        $("#idcondition").html("").css('color','green');
                        $(this).focus().css("background",'white');
                    }
                    });

                    
                    // 회원 가입 처리 : 이름, 비밀번호, 비밀번호 확인
                     $("#userName").change(function(){
                    	 if(!regHE.test($(this).val())){
                        $("#nameresult").html("한글로 2자 이상 또는 영어 이름을 입력하세요 (ex Son HeungMin)").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }
                    
                    else{
                        $("#nameresult").html("").css('color','green');
                        $(this).focus().css("background",'white');
                    }
                    });

                
                    $("#userPwd").change(function(){
                    if(!reg.test($(this).val())) {
                    $("#pwdresultcondition").html("비밀번호는 8자 이상 16자 이하 이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }
                    else {
                    $("#pwdresultcondition").html('비밀번호가 조건을 만족합니다.').css("color","green");
                    }
                    });

                

                    $("#userPwdCheck").change(function(){
                    if($("#userPwd").val() != $(this).val() || $(this).val().length==0){
                        $("#pwdresult").html("비밀번호가 일치하지 않습니다.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    
                    }else{
                        $("#pwdresult").html("비밀번호가 일치합니다.").css("color","green");
                    }
                    });

                    $("#userPwd").change(function(){
                    if($("#userPwdCheck").val() != $(this).val() && $("#userPwdCheck").val().length>0){
                        $("#pwdresult").html("비밀번호가 일치하지 않습니다.").css("color","red");
                    }else if($("#userPwdCheck").val() == $(this).val() &&  $(this).val().length!=0){
                        $("#pwdresult").html("비밀번호가 일치합니다.").css("color","green");
                    }
                    
                    });
            

                    // 생년월일 : 20200202
                    $("#userBirthday").change(function(){
                    if(!regB.test($(this).val())) {
                    $("#Birthdayresult").html("생년월일 8자리를 입력하세요.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }else {
                    $("#Birthdayresult").html('').css("color","green");
                     }
                    });

                    // 휴대폰번호 : 전부 4자리 차게? #mPhone2 #mPhone3
                    $("#phone2").change(function(){
                    if(!regP2.test($(this).val())) {
                    $("#p2result").html("번호 3~4자리를 입력하세요.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }else {
                    $("#p2result").html('').css("color","green");
                    }
                    });
                    $("#phone3").change(function(){    
                    if(!regP3.test($(this).val())) {
                    $("#p3result").html("번호 4자리를 입력하세요.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }else {
                    $("#p3result").html('').css("color","green");
                    }
                    });
                    // 이메일 api :
                  

                    $("#bankNo").change(function(){
                    if(!regA.test($(this).val())) {
                    $("#noresult").html("숫자만으로 8자리 이상 입력하세요.").css("color","red");
                        $(this).val('');
                        $(this).focus();
                    }else {
                    $("#noresult").html('').css("color","green");
                     }
                    });
           
               
                    });
            
            
            </script> 
      
      

</body>
</html>