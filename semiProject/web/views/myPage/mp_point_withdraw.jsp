<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member member = (Member)request.getAttribute("member");
	
	String userName = member.getUserName();
	String email = member.getEmail();
	int buyCount = (int)request.getAttribute("buyCount");
	int sellCount = (int)request.getAttribute("sellCount");
	int gradeTot = member.getGradeTot();
	String grade = member.getGrade();
	int point = member.getPoint();
	String fileName = (String)request.getAttribute("fileName");
	String gradeIcon = member.getGrade();
%>
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


	<!--메인사이드바 시작-->
	<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">

        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading">
              <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                  clip-rule="evenodd" />
              </svg>
              마이페이지</div>
            <a class="nav-link" href="mp_my_info.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 100-6 3 3 0 000 6z"
                    clip-rule="evenodd" />
                </svg></div>
              내정보
            </a>
            <a class="nav-link" href="index.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-pencil" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M11.293 1.293a1 1 0 011.414 0l2 2a1 1 0 010 1.414l-9 9a1 1 0 01-.39.242l-3 1a1 1 0 01-1.266-1.265l1-3a1 1 0 01.242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 00.5.5H4v.5a.5.5 0 00.5.5H5v.5a.5.5 0 00.5.5H6v-1.5a.5.5 0 00-.5-.5H5v-.5a.5.5 0 00-.5-.5H3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              회원정보수정
            </a>
            <a class="nav-link" href="mp_buy_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-task" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M2 2.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5V3a.5.5 0 00-.5-.5H2zM3 3H2v1h1V3z"
                    clip-rule="evenodd" />
                  <path
                    d="M5 3.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zM5.5 7a.5.5 0 000 1h9a.5.5 0 000-1h-9zm0 4a.5.5 0 000 1h9a.5.5 0 000-1h-9z" />
                  <path fill-rule="evenodd"
                    d="M1.5 7a.5.5 0 01.5-.5h1a.5.5 0 01.5.5v1a.5.5 0 01-.5.5H2a.5.5 0 01-.5-.5V7zM2 7h1v1H2V7zm0 3.5a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h1a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5H2zm1 .5H2v1h1v-1z"
                    clip-rule="evenodd" />
                </svg></i></div>
              구매내역
            </a>
            <a class="nav-link" href="mp_sell_list.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-list-ul" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M5 11.5a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm0-4a.5.5 0 01.5-.5h9a.5.5 0 010 1h-9a.5.5 0 01-.5-.5zm-3 1a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2zm0 4a1 1 0 100-2 1 1 0 000 2z"
                    clip-rule="evenodd" />
                </svg></i></div>
              판매내역
            </a>
            <a class="nav-link" href="mp_consultation_history.html">
              <div class="sb-nav-link-icon"><svg class="bi bi-clipboard" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              1:1 상담내역
            </a>

          </div>
        </div>

        <div class="sb-sidenav-footer">
          <div class="small">Logged in as:</div>
          Start Bootstrap
        </div>
      </nav>
    </div>

<<!-- <div id="page-content-wrapper"> -->
    <div id="layoutSidenav_content">

      <!--main-->

      <div class="container mt-5">
        <h2>출금 하기</h2>
        <ol class="breadcrumb mb-4">
          <li class="breadcrumb-item"><a href="">마이페이지</a></li>
          <li class="breadcrumb-item active">출금 하기</li>
        </ol>

        <div class="card mb-4">
          <div class="card-body">
            <form action="" onsubmit="return validate();">
            <div class="container">
              <p>포인트 정보</p>
              <hr>
              <table align="center">
                <tr>
                  <td><label>잔여 포인트 : &nbsp;&nbsp;</label></td>
                  <td><input type="text" id="myPoint"name="myPoint" value="300000" readonly></td>

                </tr>
                <tr>
                  <td><label>출금 금액 : &nbsp;&nbsp;</label></td>
                  <td><input type="text" id="result" name="withdraw"></td>
                </tr>
              </table>
            </div>

            <div class="container">
              <p>출금계좌 입력</p>
              <hr>
              <table>
                <tr>
                  <td style="padding-left: 20px;"><input type="radio" name="pay" id="my">&nbsp;<label>내 계좌</label></td>
                  <td style="padding-left: 20px;"><input type="radio" name="pay" id="self">&nbsp;<label>직접 입력</label></td>
                </tr>                
              </table>

              
              <div class="container" id="myCI1" style="display: none; width: 80%; margin-top: 20px;">                

                <div class="form-group">
                  <label>계좌</label>

               <div class="row">

                   <div class="col">
                   <input type="text" name="Bank" list="bank" id="Bank" style="width:240px; height:38px;"  placeholder="은행 명을 입력해주세요" >
                   <datalist id="bank" name="Bank"> 
                   <option value="국민은행">국민은행</option>
                   <option value="신한은행">신한은행</option>
                   <option value="IBK은행">IBK은행</option>
                   <option value="하나은행">하나은행</option>
                   <option value="우리은행">우리은행</option>
                   </datalist>
                   </div>

                   <div class="col">
                   <input type="text" class="form-control" name="bankUser" id="bankUser" placeholder="예금주 명" >
                   </div>

               </div>

               <br>

               <div class="row">
                   <div class="col-0"></div>
                   <div class="col-12">
                       <input type="text" class="form-control" name="bankNo" id="bankNo" placeholder="계좌번호를 '-'없이 입력 해주세요" >
                   </div>
                   <div class="col-0">
                   </div>
               </div>
               <label id="noresult"></label>

           </div>

              </div>
             
              <button type="submit" class="btn float-right mr-5"
                style="background:black; color:white; width:95px;">출금하기</button>
              </div>
              
            </form>

          </div>
        </div>
      </div>

      <script>
        $(function(){
          $("#self").click(function(){
            $("#myCI1").css("display","block")
            $("#Bank").val("").attr("readonly" ,false);
            $("#bankUser").val("").attr("readonly", false);
            $("#bankNo").val("").attr("readonly", false);
          })

          $("#my").click(function(){
            $("#myCI1").css("display","block")
            $("#Bank").val("내정보").attr("readonly" ,true);
            $("#bankUser").val("내정보").attr("readonly" ,true);
            $("#bankNo").val("내정보").attr("readonly", true);          
          })

          $("#result").change(function(){
                    var regI = /^[0-9]{1,}$/;                    

                    if(!regI.test($(this).val())){
                        alert("숫자만 입력가능합니다.");
                        $(this).val('');
                        $(this).focus();
                    }
                    });
        })

        function validate(){
          if($("#result").val().trim().length == 0){
                    alert("출금금액을 입력하세요");
                    $("#result").focus();
                    return false;
                }
          if($("#result").val() > $("#myPoint").val()){
            alert("보유하신 포인트 보다 작은 값만 출금할 수 있습니다.");
            $("#result").focus();
                    return false;
          }


          if($("#Bank").val().trim().length == 0){
                    alert("계좌은행을 입력하세요");
                    $("#Bank").focus();
                    return false;
                }
                if($("#bankUser").val().trim().length == 0){
                    alert("예금주 명을 입력하세요");
                    $("#bankUser").focus();
                    return false;
                }
                if($("#bankNo").val().trim().length == 0){
                    alert("계좌번호를 입력하세요");
                    $("#bankNo").focus();
                    return false;
                }
                else{
                  return true;
                }

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

    </div>
      </div>
</body>
</html>