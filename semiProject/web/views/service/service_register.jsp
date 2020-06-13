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
          display: inline !important;
          
        }
        form div *{
        	display:inline-block;
        }
        form>div> .container>*{
        	float:right !important; 
        }
   </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

<%-- action="<%=request.getContextPath() %>/register.service" --%>
 <!-- <div id="layoutSidenav_content"> -->
<form class="insertForm" id="insertForm"  name="insertForm" method="post" onsubmit="return checkForm();">
    
        <br>
        <br>
        <br>
        <br>
        <div class="container"> 
              <div class="category" style="margin-left : 300px">
           <label for="category" class="category">카테고리</label>
              </div>
             &nbsp;&nbsp;&nbsp;<div class="category" style="width : 180px; height : 30px;">
                   <select class="form-control" name="category" id="category">
                   <option value="">카테고리 선택</option>
                   <option value="artist">예술</option>
                   <option value="restaurant business">요식업</option>
                   <option value="medical treatment">의료</option>
                   <option value="sport">스포츠</option>
                   <option value="fashion">패션</option>
                   <option value="IT">IT</option>
                   <option value="finance">금융</option>
                   <option value="publicofficial">공무원</option>
                   <option value="business">비즈니스(창업)</option>
                   <option value="marketing">마케팅</option>
                   </select>
              </div>
          <br>
          <br>
              <div class="title"  style="margin-left : 300px">
           <label for="title1">&nbsp;&nbsp;&nbsp;제목</label>
           </div>
           <div class="title">
               <input type="text" class="form-control" id="title" name ="title" style="width: 480px; height: 33px; margin-left: 30px;" placeholder="제목을 입력하세요">
           </div>
          <br>
          <br>
 
          <div class="form-check"  style="margin-left: 280px;">
         <label for="method">판매방식</label>
              <input class="form-check-input" type="radio" name="saleMethod" id="choice_general" value="general" style="margin-left: 30px;" onclick = "showDiv();">
              <label class="form-check-label" for="exampleRadios" style="margin-left : 50px;">일반</label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input class="form-check-input" type="radio" name="saleMethod" id="choice_auction" value="auction" style="margin-right: 150px;"  onclick = "showDiv();">
             <label class="form-check-label" for="exampleRadios" style="margin-right:100px;">경매</label>
           </div>
         
           <br>
           <div id="price" class="change" style="margin-left:295px">
               <div class="price">
            <label for="sale">판매가격</label>
            </div>
            <div class="price">
                <input type="text" class="form-control" id="salePrice" name="salePrice" style="width: 250px; height: 33px; margin-left: 15px;" placeholder="금액을 입력하세요">
            </div>
          
         </div>
         <div id="bidding" class="change" style="margin-left:295px">
          
             <div class="aution">
               <label for="bidprice">입찰가격</label>
             </div>
             <div class="aution">
               <input type="text" class="form-control" id="biddingPrice" name="biddingPrice" style="width:250px; height: 33px; margin-left: 15px;" placeholder="최소금액을 입력하세요">
             </div>
             
             <div class="auction">
               <label for="deadline" style="margin-left: 10px;">마감시간</label>
             </div>
             <div class="auction">
               <input type="datetime-local" class="form-control" id="deadline" name="deadline" style="width: 140px; height: 33px; margin-left: 10px;">
             </div>
         </div>      
         <br>

             <div class="subject" style="margin-left:300px">
          <label for="subject">관련주제</label>
          </div>
          <div class="subject">
            <input type="text" class="form-control" id="subject" name ="subject" style="width: 480px; height: 33px; margin-left: 15px;" placeholder="제공할 서비스의 주제를 입력하세요">
          </div>
      
         <br>
         <br>
      
   		<div class="form-group" style="width: 600px; margin-left: 300px; margin-top: -20px;" >
         <label class="textarea_text">서비스 설명</label>
         
           <label for="exampleFormControlTextarea1"></label>
           <textarea class="form-control" name="detailContent" id="detailContent" style="resize:none" placeholder="제공할 서비스에 대한 설명을 입력하세요" rows="13"></textarea>
         </div>
         <div class="form-group" style="width: 600px; margin-left: 300px; margin-top: -20px;" >
         <label class="textarea_text">판매자 정보</label>
           <label for="exampleFormControlTextarea1"></label>
           <textarea class="form-control" style="resize:none" name="sellerInfo" id="sellerInfo" placeholder="판매자의 정보를 입력하세요&#13;&#10;ex)경력사항, 스펙" rows="13"></textarea>
         </div>
   		<br>
   		
           <div class="area" style="margin-left : 295px">
        <label for="title1" class="title1">&nbsp;&nbsp;가능지역</label>
        </div>
        <div class="area">
        <input type="text" class="form-control" name="availableArea" id="availableArea" style="width: 250px; height: 33px; margin-left: 43px;" placeholder="도/시/군">
        </div>
        <br>
           <div class="form-check-inline" style="margin-left:300px">
             <label >가능요일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Monday">
               <label>월&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Tuesday">
               <label>화&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Wednesday2">
               <label>수&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Thursday">
               <label>목&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Friday">
               <label>금&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Saturday">
               <label>토&nbsp;&nbsp;&nbsp;</label>
               <input class="form-check-input" type="checkbox" id="days" name="days" value="Sunday">
               <label>일</label>
   
             </label>
              </div>
             <br>
          
           <div id ="contact" style="margin-left:295px">
           <div class="contact">
             <label for="time">연락가능 시간</label>
           </div>
       		 <div class="contact" style="margin-left : 5px">
             <input type="time" class="form-control" name="startTime" id="startTime" style="width: 140px; height: 33px;">부터
           
             <input type="time" class="form-control" name="finishTime" id="finishTime" style="width: 140px; height: 33px;">까지
           </div>
        	</div>
         <br> 
         <br>


      <div class="form-group">
     <input type="submit" value="등록" id="registration" class="btn btn-primary"  style="width: 100px; margin-left: 750px;">
    </div>
       </div>
     
   <br>
     <br>
	</form>

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
function checkForm(){
	
	//카테고리 유효성 검사 
	if($("#category").val() == ""){
		alert("카테고리를 선택해주세요.");
		return false;
	}
	

	//제목 유효성 검사 
	if($("#title").val().trim().length == 0)
		{
		alert("제목을 입력하세요.");
		$("#title").focus();
		return false;
		}
	
	//판매방식 유효성검사 
	var chk = document.insertForm;
	var checked_items = 0;
	for(i=0; i<chk.elements.length; i++)	
	{
	if((chk.elements[i].name == "saleMethod") &&
		(chk.elements[i].checked))
		checked_items++;
	}
	if(checked_items == 0){
		alert("판매방식을 선택해주세요.")
		return false;
	}
	
	if(  document.getElementById("price").style.display = "block"){
		if($("#salePrice").val().trim().length == 0){
			alert("판매금액을 입력하세요.");
			$("salePrice").focus();
			return false;
		}	
	}
	}
	//관련주제 유효성검사
	if($("#subject").val().trim().length == 0)
		{
		alert("관련주제를 입력하세요.");
		$("#subject").focus();
		return false;
		}

	//서비스설명 유효성검사
	if($("#detailContent").val().trim().length == 0)
		{
		alert("서비스 설명을 입력하세요.");
		$("#detailContent").focus();
		return false;
		}
	//판매자정보 유효성검사
	if($("#sellerInfo").val().trim().length == 0)
		{
			alert("판매자 정보를 입력하세요.");
		$("#sellerInfo").focus();
		return false;
		}
	//가능지역 유효성 검사
	if($("#availableArea").val().trim().length ==0)
		{
			alert("만남이 가능한 지역을 입력하세요.");
		$("#availableArea").focus();
		return false;
		}
		//가능요일 유효성검사
		var form = document.insertForm;
	if(form.days[0].checked == false){
		alert("만남이 가능한 요일을 한개 이상 체크하세요.");
		return;
	}
	//연락가능시간 유효성검사 
	if($("#startTime").val() == ""){
		alert("연락가능한 시간대를 입력하세요.");
		return false;
	}
	//연락가능시간 유효성검사 
	if($("#finishTime").val() == ""){
		alert("연락가능한 시간대를 입력하세요.");
		return false;
	
	
	

	}
		
</script> 


 
   <!--  <script>
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
  
   </script> -->
   

 </body>
    
</html>



