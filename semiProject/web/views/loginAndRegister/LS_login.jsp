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
    </style>
<body>

        <!--main-->
        <article class="container">
        
        <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
              <br>
            <div class="page-header" align='center'>
                  <div><a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/image/logo2.png"></a></div>
            </div>
            
                <form role="form" action="home.html" method="post" onsubmit="return validate();">
                <div class="form-group"><br><br><br>
                    <label for="userId">아이디</label>
                    <input type="text" class="form-control" name="id" id="id" autofocus>
                </div>
                    <div class="form-group">
                        <label for="userPwd">비밀번호</label>
                        <input type="password" class="form-control" name="password" id="password" >
                    </div>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <br><br>
                         <div class="form-group"><input type="submit" value="로그인" class="btn btn-primary btn-block"></div>
                        <br><br>
                        </div>
                        <div class="col"></div>
                        </div>
                </form>

                    <div class="find_info">
                        <a id="idinquiry" href="LS_findId1.jsp">아이디 찾기</a>
                        <span>|</span> <a id="pwdinquiry" href="LS_findPwd.jsp">비밀번호 찾기</a>
                        <span>|</span> <a id="join" href="LS_TOS.jsp">회원가입</a>
                    </div>
                    <br><br><br><br><br><br>
                    
                <div class="col"></div>
          
        </div>
                      
        <div class="col-3"></div>
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
            // 로그인 처리 함수
            if($("#id").val().trim().length == 0 && $("#password").val().trim().length == 0)
            {
            alert("아이디와 비밀번호를 입력해주세요");
            $("#id").focus();
            return false;
            }
            else if($("#id").val().trim().length == 0)
            {
            alert("아이디를 입력해주세요");
            $("#id").focus();
            return false;
            }
            else if($("#password").val().trim().length == 0) 
            {
            alert('비밀번호를 입력하세요');
            $("#password").focus();
            return false;
            }
            else{
                return true;
            }
            }
           </script>

</body>
</html>

