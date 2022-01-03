<%@page import="user.UserDTO"%>
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

String userid = request.getParameter("userid");

UserDAO dao = UserDAO.getInstance();

UserDTO user = new UserDTO(userid);

if (dao.checkID(user.getId()) == false || user.getId() == ""){
	%>
	<script>
	alert('이미 존재하는 아이디입니다.');
	</script>
	<%
	
}else{
	%>
	<script>
	alert('가입가능한 아이디입니다.');
	</script>
	<%
}

%>
</body>
</html>