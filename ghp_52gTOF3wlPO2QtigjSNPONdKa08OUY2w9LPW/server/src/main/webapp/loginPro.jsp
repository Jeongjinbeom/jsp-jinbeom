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
request.setCharacterEncoding("UTF-8");


String id = request.getParameter("id");
String pw = request.getParameter("pw");

UserDAO dao = UserDAO.getInstance();

if(dao.loginCheck(id, pw)){
	
	System.out.printf("ID : %s님 로그인 ", id);
	%>
	<script>
	
	var id = " <%= id %>";
	alert("ID : "+id +"님 로그인 되었습니다.");
	location.href="index.jsp";
	
	</script>
	
	
	<%
	
}else{
	System.out.println("로그인 실패");
	%>
	<script>
	alert('아이디 혹은 비밀번호 오류입니다');
	location.href="login.jsp";
	</script>
	<%
}


%>
</body>
</html>