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
<%@ include file="../../views/common/menubar.jsp"%>
	  <!--2번째 예-->

          <div class="container my-3">
            <div class="table-responsive mt-3">
              <header class="mt-5">
                <h2>공지사항</h2>
               
              </header>
              <table class="table table-hover mt-4">
    
                  <tbody>
                      <tr>
                          <td style="width:80%"><a href="cs_notice_into.html" id="bk">
                            5월 고객센터 휴무안내(4/30~5/5)</a>
                          </td>
                          <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
  
                      </tr>
                      <tr>
                        <td>
                          구매후기 작성에 대한 안내
                        </td>
                        <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                      </tr>
                      <tr>
                        <td>
                          설 연휴 기간 휴무 안내
                        </td>
                        <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                      </tr>
                      <tr>
                        <td>
                          고객센터 운영 시간 안내
                        </td>
                        <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                      </tr>
                      <tr>
                        <td>
                          5월 고객센터 휴무안내(4/30~5/5)
                        </td>
                        <td class="text-center" style="width:20%"><label>2020-04-29</label></td>

                    </tr>
                    <tr>
                      <td>
                        구매후기 작성에 대한 안내
                      </td>
                      <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                    </tr>
                    <tr>
                      <td>
                        설 연휴 기간 휴무 안내
                      </td>
                      <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                    </tr>
                    <tr>
                      <td>
                        고객센터 운영 시간 안내
                      </td>
                      <td class="text-center" style="width:20%"><label>2020-04-29</label></td>
                    </tr>
                  </tbody>
              </table>
            </div>










          <!--페이징처리-->
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



         </div> <!--container end-->




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