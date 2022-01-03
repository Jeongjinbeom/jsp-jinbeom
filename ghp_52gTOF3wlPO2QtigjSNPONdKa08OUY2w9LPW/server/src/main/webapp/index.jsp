<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	UserDAO dao = UserDAO.getInstance();
	dao.getConnection();
	
	ArrayList<UserDTO> datas = dao.getUsers();
	for(int i=0; i<datas.size(); i++){
		UserDTO user = datas.get(i);
		System.out.println(user.toString());
	}
	
%>
	메뉴!
	<form action="login.jsp">
	<input type ="submit" value ="로그인">
	</form>
	<form action="join.jsp">
	<input type ="submit" value ="회원가입">
	</form>
	<form action="weather.jsp">
	<input type ="submit" value ="날씨정보">
	</form>
	
</body>
</html>