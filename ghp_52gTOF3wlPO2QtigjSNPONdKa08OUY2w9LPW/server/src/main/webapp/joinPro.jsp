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

String name = request.getParameter("name");
String id = request.getParameter("userid");
String pw = request.getParameter("userpw");
String REPW = request.getParameter("REPW");
String gender = request.getParameter("usergender");
String PN = request.getParameter("phoneNumber");
String email = request.getParameter("email");
String postcode = request.getParameter("postcode");
String address = request.getParameter("address");
String detail = request.getParameter("detail");
String ex = request.getParameter("ex");

// String postName = postcode+" "+address+" "+detail+" "+ex;
String postName = request.getParameter("postcode")+" "+request.getParameter("address")+" "+request.getParameter("detail")+" "+request.getParameter("ex");

UserDAO dao = UserDAO.getInstance();

UserDTO user = new UserDTO(id,pw,name,gender,PN,email,postName);

if(!pw.equals(REPW)){
	%>
	<script>
	alert("비밀번호 일치 확인 후 진행해주세요");
	location.href ='join.jsp';	
	</script>
	<%
}else{
	if (dao.addUser(user) == -1) {
		%>
	    <script>
	    alert("중복된 아이디는 가입 불가능합니다");
	    location.href ='join.jsp';
	   </script>
	   <% 
		
	} else {
		%>
	    <script>
	    alert("회원가입 완료되었습니다");
	    location.href ='index.jsp';
	   </script>
	   <%
		System.out.printf("%s님 가입완료",id);
	}
}

%>


	
</body>
</html>