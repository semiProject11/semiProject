<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
int page11 = 3;
%>
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
        a {
            text-decoration: none;
            color: white;
        }

        #bk,
        #bk:hover,
        #bk:focus {
            text-decoration: none;
            color: black;

        }

        #wh:hover,
        .btn:hover,
        .btn:focus {
            background: gold !important;
            color: black !important;
            font-weight: bold !important;
            text-decoration: none;
        }
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp" />
            <div class="container mt-5">

                <head>
                    <h2>거래 내역 관리</h2>
                    <hr>
                </head>
                <div class="container mt-4" id="post">
                    <div class="container my-3">
                        <form class="form-group">
                            <div class="row">
                                <div class="col-md-2"><label>카테고리</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%">IT</label></div>
                                <div class="col-md-2"><label>구매자명</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:100%">빽다</label></div>

                            </div>
                            <div class="row">
                                <div class="col-md-2"><label>서비스번호</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%">15-458</label></div>
                                <div class="col-md-2"><label>판매자명</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:100%">소통소통</label></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2"><label>거래일시</label></div>
                                <div class="col-md-4"><label class="form-control" style="width:80%">2020-05-01</label>
                                </div>
                                <div class="col-md-2"><label>별점/가격</label></div>
                                <div class="col-md-2"><label class="form-control" style="width:100%">확인중</label></div>
                                <div class="col-md-2"><label class="form-control" style="width:100%">50,000</label></div>
                            </div>
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="col-md-2"><label>제목</label></div>
                                <div class="col-md-10"><label style="width:100%; text-align: left;">웹프로그래밍 익히고 싶으신
                                        분</label></div>
                            </div>
                            <div class="mt-2">
                                <textarea class="form-control"
                                    style="width:100%; height:500px; resize:none;">웹프로그래밍쪽 진로 관련 상담 가능</textarea>

                            </div>
                            <div class="row mt-2">
                                <div class="col"></div>
                                <div class="col text-center">
                                    <button type="button" class="btn" style="background:black; color:white"><a
                                            href="admin_transaction.html" id="wh">목록</a></button>
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