<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
</head>
<body>

<%@ include file="../../views/common/menubar.jsp"%>
	

            <!--contents-->
            <div class="container mt-5">
                <header>
                    <h2>이벤트 관리</h2>
                    <hr>
                </header>
                <div class="container mt-4" id="post">
                    <div class="container mt-5">
                        <div class="container my-5">
                            <form class="form-group">
                                <div class="row">
                                    <div class="col-md-2"><label>제목</label></div>
                                    <div class="col-md-10"><label class="form-control"
                                            style="width:100%; text-align:left;">BTS와 함께하는 5월 이벤트</label></div>
                                </div>


                                <div class="mt-2">
                                    <textarea class="form-control"
                                        style="width:100%; height:500px; resize:none; align-items:left;">안녕하세요~ 타임셀러입니다.
BTS와의 데이트에 당신을 초대합니다!
                            </textarea>

                                </div>
                                <div class="row mt-3">
                                    <div class="col"></div>
                                    <div class="col text-center"><button type="button" class="btn"
                                            style="background:black; color:white"><a href="admin_event.html"
                                                id="wh">목록</a></button>
                                        <button type="button" class="btn"
                                            style="background:black; color:white">수정</button>

                                    </div>
                                    <div class="col"></div>
                                </div>
                        </div>
                    </div>
                    </form>
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