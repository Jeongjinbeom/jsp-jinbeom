<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>LOGIN</h1>

<form action ="loginPro.jsp" method ="post">
<span>아이디</span><br>
<input type="text" name ="id" required><br>
<span>비밀번호</span><br>
<input type="password" name ="pw"required><br>
<input type="button" value="뒤로가기" onclick="history.back(-1);">
<input type ="submit" value ="로그인">
</form>

</body>
</html>