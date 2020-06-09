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


        .pagination-t {
            display: flex;
            padding-left: 0;
            list-style: none;
            border-radius: 0.25rem;
        }

        .page-link-t {
            position: relative;
            display: block;
            padding: 0.5rem 0.75rem;
            margin-left: -1px;
            line-height: 1.25;
            color: black;
            background-color: #fff;
            border: 1px solid #dee2e6;
        }

        .page-link-t:hover {
            z-index: 2;
            color: #0056b3;
            text-decoration: none;
            background-color: #e9ecef;
            border-color: #dee2e6;
        }

        .page-link-t:focus {
            z-index: 3;
            outline: 0;
        }

        .page-item-t:first-child .page-link-t {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
        }

        .page-item-t:last-child .page-link-t {
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
        }

        .page-item-t.active-t .page-link-t {
            z-index: 3;
            color: #fff;
            background-color: gold;
            border-color: gold;
        }

        .page-item-t.disabled-t .page-link-t {
            color: #6c757d;
            pointer-events: none;
            cursor: auto;
            background-color: #fff;
            border-color: #dee2e6;
        }


        .sr-only-t {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border: 0;
        }

        .page-center {
            display: flex;
            justify-content: center;
            /*가운데 정렬*/
            align-items: center;
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

                <head>
                    <h2>문의 사항 관리</h2>
                    <hr>
                </head>

                <div class="container my-4">

                    <div>
                        <!--상단 버튼-->
                        <button type="button" class="btn" style="background:black; color:white; width:95px;">전체
                            선택</button>
                        <button type="button" class="btn" style="background:black; color:white; width:95px;">확
                            인</button>
                        <button type="button" class="btn" style="background:black; color:white; width:95px;">취
                            소</button>
                        <!--상단 검색창-->
                        <form
                            class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0">
                            <div class="input-group">
                                <select class="form-control" id="category">
                                    <option selected>전체</option>
                                    <option>이용 문의</option>
                                    <option>고객의 소리</option>
                                    <option>제휴</option>

                                </select>
                                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search"
                                    aria-describedby="basic-addon2" />
                                <div class="input-group-append"></div>
                                <button class="btn btn-primary mr-0" type="button" id="jin">
                                    <i class="fas fa-search"></i></i></button>
                            </div>
                        </form>
                    </div>

                    <!--유저 리스트-->
                    <div class="table-responsive mt-3">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>No</th>
                                    <th>문의 유형</th>
                                    <th>제목</th>
                                    <th>작성 일시</th>
                                    <th>작성자</th>
                                    <th>확인 여부</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <input type="hidden" value="<%=((Board)noticeList.get(i)).getBoard_no()%>">
                                    <td>
                                        <div class="form-check form-check-inline">
                                            <input type="checkbox" class="form-check-input" id="checkall"
                                                style="width:18px; height:18px;">

                                        </div>
                                    </td>
                                    <td>1</td>
                                    <td>이용문의</td>
                                    <td><a href="admin_inquiry_into.html" id="bk">진짜 손흥민 만들 수 있는 건가요?</a></td>
                                    <td>2020-05-14</td>
                                    <td>톳흐넘</td>
                                    <td>X</td>

                                </tr>
                            
                            </tbody>
                        </table>
                    </div>

                </div>




                <!------페이징 처리----->
                <div class="page-center">
                    <ul class="pagination-t">

                        <!-- disabled: 페이지 비활성화 -->
                        <li class="page-item-t disabled-t"><a class="page-link-t" href="#">Previous</a></li>

                        <li class="page-item-t"><a class="page-link-t" href="#">1</a></li>

                        <!-- disabled: 해당 버튼 활성화 -->
                        <li class="page-item-t active-t" aria-current="page-t">
                            <a class="page-link-t" href="#">2 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item-t"><a class="page-link-t" href="#">3</a></li>
                        <li class="page-item-t"><a class="page-link-t" href="#">Next</a></li>
                    </ul>

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