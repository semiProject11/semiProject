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
	<jsp:include page="../../views/common/menubar.jsp" />
	  <!--contents-->
            <header class="container mt-5">
                <h2>신고하기</h2>
                <hr>
            </header>

            <div class="container my-3">
                <div class="container my-3">
                    <form class="form-group">
                        <div class="row text-center">
                            <div class="col-md-2"><label>신고 유형</label></div>
                            <div class="col-md-4"><select class="form-control" style="width:100%">
                                    <option selected>선택</option>
                                    <option>판매자를 신고합니다</option>
                                    <option>구매자를 신고합니다</option>
                                </select></div>

                            <div class="col-md-2"></div>
                            <div class="col-md-4"></div>


                        </div>
                        <div class="row text-center mt-2">

                            <div class="col-md-2"><label>서비스번호</label></div>
                            <div class="col-md-4"><input type="text" class="form-control"></div>

                            <div class="col-md-2"><label>신고 대상 아이디</label></div>
                            <div class="col-md-4"><input type="text" class="form-control" style="width:100%;"></div>


                        </div>

                        <div class="row text-center mt-2">
                            <div class="col-md-2"><label>제목</label></div>
                            <div class="col-md-10"><input type="text" class="form-control"
                                    style="width:100%; text-align:left;"></div>
                        </div>
                        <div class="mt-2">
                            <textarea class="form-control"
                                style="width:100%; height:400px; resize:none; text-align:left;"></textarea>

                        </div>

                        <div class="row my-5">
                            <div class="col"></div>
                            <div class="col text-center">

                                <button type="button" class="btn" style="background:black; color:white"
                                    onclick="alert('등록완료'); location.href='cs_notice.html'">작성 완료</button>


                            </div>
                            <div class="col"></div>
                        </div>
                </div>
                </form>
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