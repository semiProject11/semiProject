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


  </style>
</head>
<body>
	<jsp:include page="../common/menubar3.jsp" />
	  <!--contents-->


      <div class="container mt-5">
        <div class="container my-5">
          <form class="form-group">
            <div class="row">

              <div class="col-md-12">
                <header>
                  <h2>자주묻는 질문</h2>
                  <hr>
                  <h4 class="mt-5" name="faqTitle">[회원정보] 개명 후 인증이 안돼요.</h4>
                </header>
              </div>
            </div>


            <div class="mt-2">
              <textarea class="form-control" name="faqContent"
                style="margin:30px; padding:20px; width:100%; height:500px; border:none; resize:none; align-items:left; background-color:white;" readonly>
개명을 하신 경우 실명확인 등록기관에 개명하신 성함으로 실명등록을 모두 새롭게 해주셔야 합니다.

[실명확인 등록기관안내]
                
- 코리아크레딧뷰로(KCB) ☞ 바로가기   / ☎ 고객센터: 02-708-1000
- SIREN24 ☞ 바로가기
                
                
기관을 통해 변경된 실명 정보를 등록하실 경우, 인증 시간이 소요될 수 있는 점 참고해주시기를 바랍니다.
                
                
                      </textarea>

            </div>
            <div class="row mt-3">
              <div class="col"></div>
              <div class="col text-center"><button type="button" class="btn" style="background:gold; color:black" onclick="goFaqList();">
                목록으로 가기</button>


              </div>
              <div class="col"></div>
            </div>
        </div>
        </form>
      </div>

      <!--container end-->



      <script>
        function goFaqList(){
          location.href="<%=request.getContextPath()%>/faqList.cs";
        }

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