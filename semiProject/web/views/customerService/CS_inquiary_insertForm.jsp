<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!int page11 = 2;%>
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
<%@ include file="../../views/common/menubar3.jsp"%>
	
            <!--contents-->
            <header class="container mt-5">
                <h2>1:1 문의 등록</h2>
                <hr>
            </header>


            <div class="container my-3" id="post">
                <div class="container my-3">
                    <form class="form-group my-3">
                        <div class="row">
                            <div class="col-md-2 text-center"><label>상담유형</label></div>
                            <div class="col-md-4"><select class="form-control" style="width:80%">
                                    <option selected>이용문의</option>
                                    <option>고객의 소리</option>
                                    <option>제휴</option>
                                </select></div>




                        </div>

                        <div class="row mt-2">
                            <div class="col-md-2 text-center"><label>제목</label></div>
                            <div class="col-md-10"><input type="text" class="form-control"
                                    style="width:100%; text-align:left;"></div>
                        </div>
                        <div class="mt-2">
                            <textarea class="form-control"
                                style="width:100%; height:400px; resize:none; text-align:left;"></textarea>

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




                        <div class="row mt-5">
                            <div class="col"></div>
                            <div class="col text-center">

                                <!--row나 col에서 text-center로 가운데 정렬 가능-->

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