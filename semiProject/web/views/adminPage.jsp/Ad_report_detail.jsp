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
<jsp:include page="../common/menubar.jsp" />


            <!--contents-->
            <div class="container mt-5">

                <head>
                    <h2>신고 내역 관리</h2>
                    <hr>
                </head>
                <div class="container my-4" id="post">
                    <div class="container my-3">
                        <form class="form-group">
                            <div class="row">
                                <div class="col-md-2"><label>구분</label></div>
                                <div class="col-md-3"><label class="form-control" style="width:100%;">판매자 신고</label>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2"><label>신고대상</label></div>
                                <div class="col-md-3"><label class="form-control">톳흐넘</label></div>
                                <div class="col-md-1"><button type="button" class="btn"
                                        style="background:black; color:white; display:inline;"><a
                                            href="admin_grade.html" id="wh">검색</a></button>
                                </div>


                            </div>
                            <div class="row">

                                <div class="col-md-2"><label>서비스번호</label></div>
                                <div class="col-md-3"><label class="form-control">12-351054</label></div>
                                <div class="col-md-1"><button type="button" class="btn"
                                        style="background:black; color:white; display:inline;"><a
                                            href="admin_transaction.html" id="wh">검색</a></button>
                                </div>
                                <div class="col-md-2"><label>작성일시</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:100%;">2020-05-14</label>
                                </div>


                            </div>

                            <div class="row">
                                <div class="col-md-2"><label>제목</label></div>
                                <div class="col-md-10"><label class="form-control"
                                        style="width:100%; text-align:left;">판매자가 너무 불량해요</label></div>
                            </div>
                            <div class="mt-2">
                                <label class="form-control"
                                    style="width:100%; height:300px; resize:none; text-align:left;">1시간 그냥 날린
                                    기분이예요</label>

                            </div>
                            <div class="mx-3">
                                <div class="row mt-5">
                                    <div class="col-md-2"><label
                                            style="background:none; text-align:left; font-weight:bold;">타임셀러</label>
                                    </div>
                                    <div class="col-md-2"><label
                                            style="background:none; text-align:left; font-weight:bold;">2020-05-14</label>
                                    </div>
                                    <div class="col-md-8"></div>
                                </div>
                                <div class="row">
                                    <label class="form-control"
                                        style="width:100%; height:250px; resize:none; text-align:left;">서비스에 불편드려 죄송합니다.
                                        해당 내용 확인 후 조치 진행될 예정입니다.</label>
                                </div>

                                <!--여기부터 댓글창-->
                                <div class="row" style="height:100px; display:flex; padding:5px; ">

                                    <textarea class="form-control"
                                        style="width:78%; height:50px; resize:none;"></textarea>
                                    &nbsp;
                                    <div>
                                        <button type="button" class="btn"
                                            style="background:black; color:white; height:50px; width:100px;">댓글작성</button>


                                        <button type="button" class="btn"
                                            style="background:black; color:white; height:50px; width:100px;">댓글삭제</button>
                                    </div>

                                </div>
                                <div class="row mt-2">
                                    <div class="col"></div>
                                    <div class="col text-center"><button type="button" class="btn"
                                            style="background:black; color:white"><a href="admin_report.html"
                                                id="wh">목록</a></button>
                                        <!--row나 col에서 text-center로 가운데 정렬 가능-->

                                        <button type="button" class="btn"
                                            style="background:black; color:white">수정</button>
                                        <button type="button" class="btn"
                                            style="background:black; color:white">삭제</button>
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