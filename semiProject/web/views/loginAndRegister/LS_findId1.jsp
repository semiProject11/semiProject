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
     <script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
</head>
<style>
        .btn{
            background: black !important;
            border-color:black !important;
            outline: black !important;
        }
        .find_info {
            font-size: 15px;
            line-height: 14px;
            padding-top: 20px;
            text-align: center;
            color: #8e8e8e;
            border-top: 1px solid #e4e4e5;
        }
        .form-control{
            position: relative;
            height: 38px;
            margin: 0 0 14px;
            padding: 10px 35px 10px 15px;
            border: solid 1px #dadada;
            background: #fff;
        }

        .findId{
            font-size: 13px;
            line-height: 14px;
            padding-top: 20px;
            text-align: center;
            color: #8e8e8e;
        }
    </style>
<body>


<article class="container">
        
        <div class="row">
            <div class="col">
            </div>
        <div class="col-6">
              <br>
            <div class="page-header" align='center'>
                  <div><a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/image/logo2.png"></a></div>
            </div>
            <div>
                <form role="form" id='loginFindForm' action ="<%=request.getContextPath() %>/findId.me" method="post" onsubmit="return validate();">
                <div class="form-group"><br><br>
                    <label>아이디 찾기</label><hr>
                    <label >이름</label>
                    <input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label>이메일</label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="이메일 주소를 입력해주세요" >
                    </div>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <br><br>
                        <div class="form-group"><div class="form-group"><input type="submit" value="인증하기" class="btn btn-primary btn-block"></div></div><br><br>
                        </div>
                        <div class="col"></div>
                    </div>
                    
                    <br><br><br><br><br><br>
                    
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

      <script>
            function validate(){
            	
	            var flag = false;
		        var userName = $("#loginFindForm input[name='userName']");
	            var email = $("#loginFindForm input[name='email']");
	           
	            // 아이디 찾기 처리 함수
	            var reg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	
	            if($("#userName").val().trim().length == 0 && $("#email").val().trim().length == 0)
	            {
	                alert("이름과 이메일을 입력해주세요");
	                $("#userName").focus();
	                return false;
	            }
	            if($("#userName").val().trim().length==0)
	            {
	            alert("이름을 입력해주세요");
	            $("#userName").focus();
	            return false;
	            }
	            if($("#email").val().trim().length==0)
	            {
	            alert('이메일을 입력하세요');
	            $("#email").focus();
	            return false;
	            }
	            if(reg.test($("#email").val()) == false) 
	            {
	            alert('이메일 양식을 확인 해주세요');
	            $("#email").focus();
	            return false;
	            }
	            else{
	            	$.ajax({
						url:"<%=request.getContextPath()%>/findId_a.me",
						type:"post",
						data:{userName:userName.val(), email:email.val()},
						async: false,
						success:function(data){
							if(data=="success"){
								flag = true;
								}
							else{
								alert("없는 회원정보 이거나 이름 또는 이메일이 일치하지 않습니다.");
								flag = false;
							}
						},
						error:function(request,status,error){
						    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							flag = false;
						}
					});
	            	
	            	
	                return flag;
	            }
	        }
        </script> 
      
</body>
</html>