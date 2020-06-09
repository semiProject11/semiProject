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
        }
    </style>
</head>
<body>

<%@ include file="../../views/common/menubar.jsp"%>
	
            <!--contents-->
            <div class="container mt-5">

                <head>
                    <h2>문의 사항 관리</h2>
                    <hr>
                </head>

                <div class="container my-4" id="post">
                    <div class="container my-3">
                        <form class="form-group">
                            <div class="row">
                                <div class="col-md-2"><label>카테고리</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%">예체능</label></div>


                            </div>
                            <div class="row">
                                <div class="col-md-2"><label>작성자</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%">톳흐넘</label></div>
                                <div class="col-md-2"><label>작성일시</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:100%">2020-05-14</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2"><label>제목</label></div>
                                <div class="col-md-10"><label class="form-control"
                                        style="width:100%; text-align:left;">진짜
                                        손흥민 만날 수 있나요?</label></div>
                            </div>
                            <div class="mt-2">
                                <label class="form-control"
                                    style="width:100%; height:300px; resize:none; text-align:left;">혹시 다음에 또
                                    진행하나요?</label>

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
                                        style="width:100%; height:250px; resize:none; text-align:left;">아쉽지만 올해 마지막
                                        딜입니다...ㅠㅠ</label>
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

                            </div>
                            <div class="row mt-2">
                                <div class="col"></div>
                                <div class="col text-center"><button type="button" class="btn"
                                        style="background:black; color:white"><a href="admin_inquiry.html"
                                            id="wh">목록</a></button>
                                    <!--row나 col에서 text-center로 가운데 정렬 가능-->

                                    <button type="button" class="btn" style="background:black; color:white">수정</button>
                                    <button type="button" class="btn" style="background:black; color:white">삭제</button>
                                </div>
                                <div class="col"></div>
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