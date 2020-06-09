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

    #my_info td {
      text-align: left;
      padding-right: 10px;
    }
    #profile div{
      align="center"
    }
  </style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />
	<!-- <div id="page-content-wrapper"> -->
    <div id="layoutSidenav_content">

      <!--main-->

      <div class="container mt-5">
        <h2>내정보</h2>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="mp_my_info.html">마이페이지</a></li>
          <li class="breadcrumb-item active">내정보</li>
        </ol>

        <div class="card mb-4">
          <div class="card-body">
            <div class="table-responsive mt-3">
              <div class="container">
                <div class="row">
                <div class="col-4">
                  <div class="card" id="profile">
                    
                    <div class="card-header" align="center">프로필 사진</div>
                    <div class="card-body" align="center"><img src="image/images.jfif" alt=""
                      style="width: 100px; height: 100px;"><br>                    
                    </div>
                    <div class="card-footer">
                      <input type="file">
                    </div>
                  </div>
                </div>
                <div class="col-8">
                  <form>
                    <table id="my_info" style="margin-left: 30px;">

                      <tr>
                        <td style="text-align: left;">아이디 : </td>
                        <td><label id="info_name">피닉스</label></td>
                      </tr>
                      <tr>
                        <td style="text-align: left;">이름 : </td>
                        <td><label id="info_id">타올라라</label></td>
                      </tr>
                      <tr>
                        <td style="text-align: left;"><label>이메일 : </label></td>
                        <td> <label id="info_email">fire@naver.com</label></td>
                      </tr>
                      <tr>
                        <td><label>구매횟수 : </label></td>
                        <td><label id="info_buy_count">5</label></td>
                      </tr>
                      <tr>
                        <td><label>판매횟수 : </label></td>
                        <td><label id="info_sell_count">10</label></td>
                      </tr>
                      <tr>
                        <td><label>등급 : </label></td>
                        <td><label id="info_level_point">250 / &nbsp;<img src="image/images.jfif" alt=""
                              style="width: 20px; height: 20px;"></label></td>
                      </tr>
                      <tr>
                        <td><label>포인트 : </label></td>
                        <td><label id="info_point">300,000 point</label></td>
                        <td><button><a href="mp_point_charge.html">포인트 충전</a></button></td>
                        <td><button>출금하기</button></td>
                      </tr>

                    </table>


                  </form>
                </div>
                </div>
              </div>
            </div>

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

    </div>
</body>
</html>