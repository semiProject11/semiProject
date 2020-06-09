<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!int page11 = 3;%>	
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
            font-weight: bold;
        }
    </style>
</head>
<body>


<%@ include file="../../views/common/menubar.jsp"%>
   <!--contents-->
            <div class="container mt-5">

                <head>
                    <h2>공지사항 관리</h2>
                    <hr>
                </head>
                <div class="container">
                    <div class="container mt-4" id="post">
                        <div class="container my-5">
                            <form class="form-group">
                                <div class="row">
                                    <div class="col-md-2"><label>제목</label></div>
                                    <div class="col-md-10"><label class="form-control"
                                            style="width:100%; text-align:left;">5월 고객센터 휴무안내(4/30~5/5)</label></div>
                                </div>


                                <div class="mt-2">
                                    <div>
                                        <!--편집 API 알아보고 찾으면 넣기-->
                                    </div>
                                    <textarea class="form-control"
                                        style="width:100%; height:500px; resize:none; align-items:left;">안녕하세요~ 타임셀러입니다.

 4월과 5월에는 석가탄신일과 근로자의 날, 전사 휴무일, 어린이날을 맞이하여
아래와 같이 고객센터를 휴무하게 됩니다. (사이트는 정상 운영)
휴무일에는 전화응대를 쉬며 출금신청하신 수익금이 익일 지급됩니다.
                            </textarea>

                                </div>
                                <div class="row mt-3">
                                    <div class="col"></div>
                                    <div class="col text-center"><button type="button" class="btn"
                                            style="background:black; color:white"><a href="admin_notice.html"
                                                id="wh">목록</a></button>
                                        <button type="button" class="btn" style="background:black; color:white"><a
                                                href="admin_notice_write.html" id="wh">수정</a></button>

                                    </div>
                                    <div class="col"></div>
                                </div>
                        </div>
                        </form>
                    </div>
                    </div>
            </div>





























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