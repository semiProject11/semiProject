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
  </style>
</head>
<body>
	<%@ include file="../../views/common/menubar2.jsp" %>
	<!-- <div id="page-content-wrapper"> -->
    <div id="layoutSidenav_content">

      <!--main-->

      <div class="container mt-5">
        <h2>구매내역</h2>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="test.html">마이페이지</a></li>
          <li class="breadcrumb-item active">구매내역</li>
        </ol>        
        
        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <table class="table   table-hover">
                  <thead>
                      <tr>
                        <th></th>
                        <th>서비스이미지</th>
                          <th>주문일</th>
                          <th>제목</th>
                          <th>상태</th>
                          <th>판매자</th>
                          <th>가격</th>

                      </tr>
                  </thead>
                  <tbody>
                      <tr>                          
                        <td>
                          <div class="form-check form-check-inline">
                              <input type="checkbox" class="form-check-input" id="checkall"
                                  style="width:18px; height:18px;">

                          </div>
                      </td>
                          <td >
                              <div >
                                <img src="image/images.jfif" alt=""  style="width: 100px; height: 100px;">
                              </div>                        
                          </td>
                        <td>2020-05-14</td>
                        <td>12-458264</td>
                        <td>X</td>
                        <td>김퍼블</td>
                        <td>1,000,000,000</td>                      
                      </tr>


                      <tr>
                        <td>
                          <div class="form-check form-check-inline">
                              <input type="checkbox" class="form-check-input" id="checkall"
                                  style="width:18px; height:18px;">
  
                          </div>
                      </td>
                        <td >
                          <div >
                            <img src="image/images.jfif" alt=""  style="width: 100px; height: 100px;">
                          </div>                        
                      </td>
                    <td>2020-05-14</td>
                    <td>12-458264</td>
                    <td>X</td>
                    <td>김퍼블</td>
                    <td>1,000,000,000</td>

                    </tr>


                  </tbody>
              </table>
          </div>          
        </div>
      </div>
      <button type="button" class="btn float-right mr-3" style="background:black; color:white; width:95px;">구매취소</button>
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

    </div>
</body>
</html>