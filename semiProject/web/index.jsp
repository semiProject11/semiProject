<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>



</style>
</head>
<body>
	<a onclick="mainpage();">홈으로 가봅시다~(클릭)</a>
	
</body>

<script>
	function mainpage(){
	    location.href="<%=request.getContextPath()%>/main.service";
	 }
</script>
</html>
