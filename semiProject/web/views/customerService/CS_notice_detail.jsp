<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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







        input,
        textarea {
            /* border: 1px solid #dee2e6; */
            border: 1px solid #495057;
            height: 80%;
            margin: 0;


        }

        /*보여주기용 임시*/
        #wh,
        #wh:hover,
        #wh:focus {
            text-decoration: none;
            color: white;
        }

        #bk,
        #bk:hover,
        #bk:focus {
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

        .btn:focus,
        .btn:hover {
            background: gold !important;
            color: black !important;
            font-weight: bold;
        }
    </style>
</head>
<body>
	<jsp:include page="../common/menubar3.jsp" />
	 <!--contents-->

      <div class="container mt-5" id="post">
        <div class="container my-5">
          <form class="form-group">
            <div class="row">


              <div class="col-md-12">
                <header>
                  <h2>공지사항</h2>
                  <hr>
                  <h4 class="mt-5">5월 고객센터 휴무안내(4/30~5/5)</h4>
                </header>
              </div>
            </div>


            <div class="mt-2">
              <textarea class="form-control"
                style="margin:30px; padding:20px; width:100%; height:500px; border:none; resize:none; align-items:left;">안녕하세요~ 타임셀러입니다.

4월과 5월에는 석가탄신일과 근로자의 날, 전사 휴무일, 어린이날을 맞이하여
아래와 같이 고객센터를 휴무하게 됩니다. (사이트는 정상 운영)
휴무일에는 전화응대를 쉬며 출금신청하신 수익금이 익일 지급됩니다.
                      </textarea>

            </div>
            <div class="row mt-3">
              <div class="col"></div>
              <div class="col text-center"><button type="button" class="btn" style="background:gold; color:black"><a
                    href="cs_notice.html" id="bk">목록으로 가기</a></button>


              </div>
              <div class="col"></div>
            </div>
        </div>
        </form>
      </div>




      <!--container end-->




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
	
</body>
</html>