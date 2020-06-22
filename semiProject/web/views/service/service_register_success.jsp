<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

 #check{
          background: black !important; 
            border-color:black !important;
            outline: black !important;
            color: white ! important;

        }
 #border {
 	border : 1px solid black;
 	width : 800px;
 	height : 500px;
 	padding:10px;
  	
  }
  .hr{
  	width : 50px;
  }
        

</style>
</head>
<body>

 <jsp:include page="../common/menubar.jsp" />

	
			 <div class="container" style="margin-top: 180px">
		 
  			
  			<br>
  			<br>
  			<br>
  			<br>
  			<h3 style="text-align: center">서비스 등록이 완료되었습니다. </h3>

		
          
      		<hr width="50%">
  
  <!-- <p class="lead">등록된 글 확인하기</p> -->
  
	<br>


 
  <a class="btn btn-primary btn-block-" onclick="generaldetail();" id="check" class="btn btn-primary"  style="width: 150px; margin-left:480px">게시글 확인하기</a>
<!--   <a class="btn btn-primary btn-block-" href="/views/index.jsp" id="check" role="button" style="margin-left : 20px">홈으로</a> -->
</div>

<script>
function generaldetail(){
	   location.href="<%=request.getContextPath()%>/sellList.sv";
	 }
</script>



</body>
</html>