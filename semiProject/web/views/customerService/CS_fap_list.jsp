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

input, textarea {
	/* border: 1px solid #dee2e6; */
	border: 1px solid #495057;
	height: 80%;
	margin: 0;
}

/*보여주기용 임시*/
#wh, #wh:hover, #wh:focus {
	text-decoration: none;
	color: white;
}

#bk, #bk:hover, #bk:focus {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>

	<%@ include file="../../views/common/menubar3.jsp"%>

	   <!--contents-->

      <div class="container my-3">
        <div class="table-responsive mt-3">
          <header class="mt-5">
            <h2>자주묻는 질문</h2>

          </header>
          <table class="table table-hover mt-4">

            <tbody id="titleArea">
              <tr>
                <input type="hidden" value="">
                <td><a href="cs_faq_into.html" name="faqTitle" id="bk">
                    [회원정보] 개명 후 인증이 안돼요.</a>
                </td>

              </tr>
              <tr>
                <td>
                  [회원정보] 사업자 정보를 변경하고 싶어요.
                </td>
              </tr>
              <tr>
                <td>
                  [전문가 등급제도] 신규 전문가 등급제도는 무엇인가요?
                </td>
              </tr>
              <tr>
                <td>
                  [서비스구매] 방금 결제한 서비스는 어디서 확인하나요?
                </td>
              </tr>
              <tr>
                <td>
                  [포트폴리오] 포트폴리오가 무엇인가요?
                </td>

              </tr>
              <tr>
                <td>
                  [회원정보] 사업자 정보를 변경하고 싶어요.
                </td>
              </tr>
              <tr>
                <td>
                  [전문가 등급제도] 신규 전문가 등급제도는 무엇인가요?
                </td>
              </tr>
              <tr>
                <td>
                  [서비스구매] 방금 결제한 서비스는 어디서 확인하나요?
                </td>
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



      </div>
      <!--container end-->


      <script>
        $(function () {

          $("#titleArea td").click(function () {
            var boarder_no = $(this).parent().children("input").val();

            if (loginUser != null) {

              location.href = "<%=request.getContextPath()%>/Detail.bo?bid=" + boarder_no;

            } else {
              alert("로그인 해야만 상세보기가 가능합니다.")
            }
            
          })
        })

      </script>




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