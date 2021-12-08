<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	loginPro 페이지 입니다.
	<%
	// URI 쿼리 구간에 파라미터명1 = 값 1& 파라미터명2 = 값2... (요청과 함께 전달된 값이 받아짐)
	
	// GET 방식
	// http://localhost:8081/web_Ex01/loginPro.jsp?id=qwer&pw=1234
	// POST 방식 (전달 되어지는 파라미터 값을 숨겨서 전달)
	// http://localhost:8081/web_Ex01/loginPro.jsp
	
	request.setCharacterEncoding("UTF-8");
	
	// jsp 의 내장객체 중, request
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
	
	%>
	
	<h1>id : <%=id %></h1>
	<h1>pw : <%=pw %></h1>
	
</body>
</html>