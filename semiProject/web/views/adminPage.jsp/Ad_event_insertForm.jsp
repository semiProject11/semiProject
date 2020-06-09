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
                <header>
                    <h2>이벤트 관리</h2>
                    <hr>
                </header>
                <div class="container mt-4" id="post">
                    <div class="container my-5">
                        <form class="form-group">
                            <div class="row">
                                <div class="col-md-2"><label>제목</label></div>
                                <div class="col-md-10"><input type="text" class="form-control"
                                        style="width:100%; text-align:left;" placeholder="제목을 입력하세요."></div>
                            </div>


                            <div class="mt-2">
                                <div>
                                    <!--편집 API 알아보고 찾으면 넣기-->
                                </div>
                                <textarea class="form-control"
                                    style="width:100%; height:500px; resize:none; align-items:left;"></textarea>

                            </div>

                            <!--파일첨부-->
                            <div class="row mt-2">
                                <div class="col-md-2 text-center"><label for="find_file01">파일첨부</label></div>
                                <div class="col-md-10 form-group form_file" style="position: relative;">

                                    <input type="text" id="fileName" class="form-control form_point_color01"
                                        style="position: absolute; width:97%" readonly
                                        placeholder="파일첨부 클릭 또는 파일을 여기로 드래그하세요">
                                    <input type="file" class="form-control" id="find_file01"
                                        style="position: absolute; opacity: 0;"
                                        onchange="javascript: document.getElementById('fileName').value = this.value">


                                </div>
                            </div>
                            <!--파일첨부 끝-->
                            <div class="row mt-3">
                                <div class="col"></div>
                                <div class="col text-center">
                                    <button type="button" class="btn" style="background:black; color:white"
                                        onclick="alert('등록완료'); location.href='admin_event.html'">작성 완료</button>


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