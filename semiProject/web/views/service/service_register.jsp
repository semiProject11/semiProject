<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 
<style>
        #form-control{
            width: 100px;
            height: 100px;
            
        }
        div.change{
          display: none;
        }

        #registration{
          background: black !important;
            border-color:black !important;
            outline: black !important;

        }
        
        .btn{
          box-shadow: none !important;
        }
        .form-control{
          box-shadow: none !important;
          
        }
   </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

 <div id="layoutSidenav_content">
 <%-- <form class="unn" id="insertForm" style="margin-left:262px" action="<%=request.getContextPath() %>/register.service" method="post"  onsubmit="return validate();"> --%>
    
        <br>
        <br>
        <br>
        <br>
        <div class="container">  
          <form class="form-inline" id="insertForm" name="insertForm" style="margin-left: 262px;" action="<%=request.getContextPath() %>/register.service" method="post" onsubmit="return fromCheck();">
              <div class="category">
           <label for="category1" class="category1">카테고리</label>
              </div>
              <div class="category">
                   <select class="form-control" name="category" style="width:160px; height: 33px; margin-left: 12px;">
                   <option>카테고리 선택</option>
                   <option>예술</option>
                   <option>요식업</option>
                   <option>의료</option>
                   <option>스포츠</option>
                   <option>패션</option>
                   <option>IT</option>
                   <option>금융</option>
                   <option>공무원</option>
                   <option>비즈니스(창업)</option>
                   <option>마케팅</option>
                   </select>
              </div>
          </form>
          <br>
       
          <form class="form-inline" id="insertForm" name="insertForm" style="margin-left: 262px;"  action="<%=request.getContextPath() %>/register.service" method="post"
          onsubmit="return fromCheck();">
              <div class="title">
           <label for="title1">&nbsp;&nbsp;&nbsp;제목</label>
           </div>
           <div class="title">
               <input type="text" class="form-control" id="title" name ="title" style="width: 480px; height: 33px; margin-left: 30px;" placeholder="제목을 입력하세요">
           </div>
          </form>
          <br>
          <form id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
          <div class="form-check"  style="margin-left: 243px;">
         <label for="method">판매방식</label>
              <input class="form-check-input" type="radio" name="saleMethod" id="choice_general" value="general" style="margin-left: 30px;" onclick = "showDiv();">
              <label class="form-check-label" for="exampleRadios" style="margin-left : 50px;">일반</label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input class="form-check-input" type="radio" name="saleMethod" id="choice_auction" value="auction" style="margin-right: 150px;"  onclick = "showDiv();">
             <label class="form-check-label" for="exampleRadios" style="margin-right:100px;">경매</label>
           </div>
           </form>
           <br>
           <div id="price" class="change">
           <form class="form-inline" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
               <div class="price">
            <label for="sale" style="margin-left: 262px;">판매가격</label>
            </div>
            <div class="price">
                <input type="text" class="form-control" id="salePrice" name="salePrice" style="width: 250px; height: 33px; margin-left: 15px;" placeholder="금액을 입력하세요">
            </div>
           </form>
         </div>
         
   
         <div id="bidding" class="change">
           <form class="form-inline" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
             <div class="aution">
               <label for="bidprice" style="margin-left: 262px;">입찰가격</label>
             </div>
             <div class="">
               <input type="text" class="form-control" id="biddingPrice" name="biddingPrice" style="width:250px; height: 33px; margin-left: 15px;" placeholder="최소금액을 입력하세요">
             </div>
             
             <div class="auction2">
               <label for="deadline" style="margin-left: 10px;">마감시간</label>
             </div>
             <div class="auction2">
               <input type="datetime-local" class="form-control" id="deadline" name="deadline" style="width: 140px; height: 33px; margin-left: 10px;">
             </div>
           </form>
         </div>
       
          
         <br>
   
           <form class="form-inline" style="margin-left:262px;" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
             <div class="subject">
          <label for="subject">관련주제</label>
          </div>
          <div class="subject">
            <input type="text" class="form-control" id="subject" name ="subject" style="width: 480px; height: 33px; margin-left: 15px;" placeholder="제공할 서비스의 주제를 입력하세요">
          </div>
         </form>
         <br>
         <br>
      
   		<form id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
         <label class="textarea_text" style="margin-left : 263px;">서비스 설명</label>
         <div class="form-group" style="width: 600px; margin-left: 262px; margin-top: -20px;" >
           <label for="exampleFormControlTextarea1"></label>
           <textarea class="form-control" name="detailContent" id="detailContent" style="resize:none" placeholder="제공할 서비스에 대한 설명을 입력하세요" rows="13"></textarea>
         </div>
         <label class="textarea_text" style="margin-left : 262px;">판매자 정보</label>
         <div class="form-group" style="width: 600px; margin-left: 262px; margin-top: -20px;" >
           <label for="exampleFormControlTextarea1"></label>
           <textarea class="form-control" style="resize:none" name="sellerInfo" id="sellerInfo" placeholder="판매자의 정보를 입력하세요&#13;&#10;ex)경력사항, 스펙" rows="13"></textarea>
         </div>
   			</form>
   
         <form class="form-inline" style="margin-left: 262px;" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
           <div class="area">
        <label for="title1" class="title1">가능지역</label>
        </div>
        <div class="area">
            <input type="text" class="form-control" name="availableArea" id="availableArea" style="width: 250px; height: 33px; margin-left: 43px;" placeholder="도/시/군">
        </div>
         </form>
         <br>
        <form class="form-inline" style="margin-left: 262px;" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
           <div class="form-check form-check-inline">
             <label >가능요일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input class="form-check-input" type="checkbox" id="monday" name="monday" value="Monday">
               <label>월&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="tuesday" name="tuesday" value="Tuesday">
               <label>화&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="wednesday" name="wednesday" value="Wednesday2">
               <label>수&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="thursday" name="thursday" value="Thursday">
               <label>목&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="friday" name="friday" value="Friday">
               <label>금&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="saturday" name="saturday" value="Saturday">
               <label>토&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="sunday" name="sunday" value="Sunday">
               <label>일</label>
   
             </label>
           </div>
         </form>
         <br>
         
         <form class="form-inline" id="insertForm" action="<%=request.getContextPath() %>/register.service" method="post">
           <div class="contact">
             <label for="time" style="margin-left: 262px;">연락가능 시간</label>
           </div>
           <div class="contact">
             <input type="time" class="form-control" name="startTime" id="startTime" style="width: 140px; height: 33px; margin-left: 10px;"> 부터
           </div>
           <div class="contact">
             <input type="time" class="form-control" name="finishTime" id="finishTime" style="width: 140px; height: 33px; margin-left: 10px;"> 까지
           </div>
         </form>
        
         <br>

      <div class="form-group">
     <input type="submit" value="등록" id="registration" class="btn btn-primary" onclick="register_complete();" style="width: 100px; margin-left: 750px;">
    </div>
       </div>
      

     <br>
     <br>
	
	

     <script>
      function showDiv(){
         
      if (document.getElementById("choice_general").checked) {
          document.getElementById("price").style.display = "block";
          document.getElementById("bidding").style.display = "none";

      }
      if (document.getElementById("choice_auction").checked) {
          document.getElementById("price").style.display = "none";
          document.getElementById("bidding").style.display = "block";
         
      }
  }
</script>

<script>
function fromCheck(){
	var title = document.forms[0].title.value;
	
	if(title == null || title=""){
		alter('제목을 입력하세요');
		document.forms[0].writer.focus();
		return false
	}
	
	if(!form.title.value){
		alert("제목을 입력하세요");
		from.name.focus();
		return;
	}
	form.submit();
}else{
	
}
	
</script> 


 
    <script>
      function register_complete(){
        	var result = confirm("등록하시겠습니까?")
        	console.log(result);
        	
        	if(result){
        		 /* $("#insertForm").submit();  */
        		location.href="service_register_success.jsp"; 
        	}
        	
        	/* <button onclick="location.href="views/board/boardInsertForm.jsp">작성하기</button> */
      }
      
      //ServiceInsertServlet만들러 간다 ! 
  
   </script>
   

     
   <div id="layoutAuthentication_footer">
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
      
      <!--  -->

    </body>
</html>


