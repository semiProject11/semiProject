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
            <div class>
                <form role="form" method="post">
                <div class="form-group"><br><br>
                    <label class="LS_findId">아이디 찾기</label><hr><br><br>
                    <div class="row">
                        <div class="col-4">회원님의 아이디는</div>
                        <div class="col-6" for="inputId">
                            <h1>00000000</h1>
                        </div>
                        <div class="col-2">입니다.</div>
                    </div>
                </div>
                <br><br><br>
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col-3">
                        <div class="form-group"><a class="btn btn-primary btn-block" href="LS_login.jsp">로그인</a></div>
                    </div>
                    <div class="col-4">
                        <div class="form-group"><a class="btn btn-primary btn-block" href="LS_findPwd.jsp">비밀번호 찾기</a></div>
                    </div>
                </div>
                    
                <br><br><br><br><br><br>
                <br><br><br>
                    
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
      </div>

</body>
</html>