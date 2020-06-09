<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
int page11 = 0;
// 현제는 1로 지정되어 있기 때문에 메인페이지 카테고리로 나오지만 2로 수정한뒤 실행시켜보면 마이페이지 카테고리가 나온다.
// 고객센터와 관리자 페이지도 각각 2, 3으로 지정해 주고 메뉴바에 else if문으로 해당 번호일때 나타나야 하는 서브매뉴 코드를 작성해주면 된다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 실행하려는 메인 페이지 상단에 선언부에 int page11 를 지정해 줌으로서 메뉴바에 if문을 해서 메인페이지(1)에서는 카테고리가
안보고 서브카테고리에 내용도 카테고리로 채워지게 만들었고 마이페이지(2)에서는 카테고리가 기본적으로 보여지게 하고 안에 세부내역도 마이페이지에 맞게 내용이 들어가게
해줬다. if문을 써서 메뉴바 하나만 include하면 다 잘 작동 되도록 구현했다.  -->
	<%@ include file="views/common/menubar.jsp" %>
<br>
<br>
<h1>변매력이 한줄 추가함</h1>

	<h1>승훈</h1>

	
</body>
<h1>변매력 옆에있는 사람이 한줄 추가함</h1>
</html>