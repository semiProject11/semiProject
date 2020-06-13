<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*,java.util.ArrayList"%>
    
    <%
    
    
    
    
  /*  	Pagination pn=(Pagination)request.getAttribute("pn"); */
    ArrayList<Board> list=(ArrayList<Board>)request.getAttribute("list");
  
    
/*     int listCount=pn.getListCount();
    int currentPage=pn.getCurrentPage();
    int maxPage=pn.getMaxPage();
    int startPage=pn.getStartPage();
    int endPage=pn.getEndPage(); */
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>
     
 
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
	<jsp:include page="../common/menubar2.jsp" />



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
              고객센터</div>
            <a class="nav-link" href="<%=request.getContextPath()%>/list.notice">
              <div class="sb-nav-link-icon">
                <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                  <path fill-rule="evenodd"
                    d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
                    clip-rule="evenodd" />
                </svg>
              </div>
              공지사항

            </a>
            <a class="nav-link" href="<%=request.getContextPath()%>/list.faq">
              <div class="sb-nav-link-icon"><svg class="bi bi-question-circle" width="1em" height="1em"
                  viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z"
                    clip-rule="evenodd" />
                  <path
                    d="M5.25 6.033h1.32c0-.781.458-1.384 1.36-1.384.685 0 1.313.343 1.313 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.007.463h1.307v-.355c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.326 0-2.786.647-2.754 2.533zm1.562 5.516c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
                </svg></div>
              FAQ
            </a>
            <a class="nav-link" href="<%=request.getContextPath()%>/views/customerService/CS_inquiary_insertForm.jsp">
              <div class="sb-nav-link-icon"><svg class="bi bi-clipboard" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1.5H3a2 2 0 00-2 2V14a2 2 0 002 2h10a2 2 0 002-2V3.5a2 2 0 00-2-2h-1v1h1a1 1 0 011 1V14a1 1 0 01-1 1H3a1 1 0 01-1-1V3.5a1 1 0 011-1h1v-1z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M9.5 1h-3a.5.5 0 00-.5.5v1a.5.5 0 00.5.5h3a.5.5 0 00.5-.5v-1a.5.5 0 00-.5-.5zm-3-1A1.5 1.5 0 005 1.5v1A1.5 1.5 0 006.5 4h3A1.5 1.5 0 0011 2.5v-1A1.5 1.5 0 009.5 0h-3z"
                    clip-rule="evenodd" />
                </svg></i></div>
              1:1 문의
            </a>
            <a class="nav-link" href="<%=request.getContextPath()%>/views/customerService/CS_report_insertForm.jsp">
              <div class="sb-nav-link-icon"><svg class="bi bi-brightness-alt-high-fill" width="1em" height="1em"
                  viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
                    clip-rule="evenodd" />
                </svg></div>
              신고하기
            </a>
            <a class="nav-link" href="<%=request.getContextPath()%>/views/customerService/CS_policy_list.jsp">
              <div class="sb-nav-link-icon"><svg class="bi bi-file-text" width="1em" height="1em" viewBox="0 0 16 16"
                  fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4 1h8a2 2 0 012 2v10a2 2 0 01-2 2H4a2 2 0 01-2-2V3a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V3a1 1 0 00-1-1H4z"
                    clip-rule="evenodd" />
                  <path fill-rule="evenodd"
                    d="M4.5 10.5A.5.5 0 015 10h3a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 8h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 6h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-2A.5.5 0 015 4h6a.5.5 0 010 1H5a.5.5 0 01-.5-.5z"
                    clip-rule="evenodd" />
                </svg></div>
              개인정보처리방침
            </a>

          </div>
        </div>

        <div class="sb-sidenav-footer">
          <div class="small">Logged in as:</div>
          Start Bootstrap
        </div>
      </nav>
    </div>
    
    <div id="layoutSidenav_content">



	  <!--CONTENTS-->

            <div class="container my-3">
            <div class="table-responsive mt-3">
              <header class="mt-5">

                <h2>공지사항</h2>
               
              </header>
              <table class="table table-hover mt-4" id="listArea">
              
      			<%if(list.isEmpty()){ %> 
                  <tr>
                  <td colspan="2">등록된 게시글이 없습니다</td>
                  </tr>
            <%}else{ %>
                  <%for(int i=0;i<list.size();i++){ %>
                      <tr>
                     	 <input type="hidden" value="<%=((Board)list.get(i)).getBoard_no()%>">
                          <td><%=((Board)list.get(i)).getTitle() %></td>
                          <td class="text-center" style="width:20%"><%=((Board)list.get(i)).getWrite_date()%></td>
  
                      </tr>
                      <%} %>
                      <%} %> 
                   
                 
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

        </div>
      </div>


	<script>
	
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"cursor":"pointer"});
			}).click(function(){
				var board_no=$(this).parent().children("input").val();
				location.href="<%=request.getContextPath()%>/detail.notice?board_no="+board_no;
			});
			
			
		});
	
	</script>



</body>
</html>