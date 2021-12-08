<%@page import="java.util.Random"%>
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
	
	
	Random ran = new Random();
	int ranNum = ran.nextInt(8)+2;
	int ranNum2 = ran.nextInt(9)+1;
	int sum = ranNum * ranNum2;
	
			
	int ranNum3= ran.nextInt(8)+2;
	int ranNum4 = ran.nextInt(9)+1;
	int sum1= ranNum3 * ranNum4;
	
	int ranNum5= ran.nextInt(8)+2;
	int ranNum6 = ran.nextInt(9)+1;
	int sum2 = ranNum5 * ranNum6;
	
	int ranNum7= ran.nextInt(8)+2;
	int ranNum8 = ran.nextInt(9)+1;
	int sum3 = ranNum7 * ranNum8;
	
	int ranNum9 = ran.nextInt(8)+2;
	int ranNum10 = ran.nextInt(9)+1;
	int sum4 = ranNum9 * ranNum10;
		
%>

	<h1>구구단</h1>
	<form method='get' action="gugudanPro.jsp">
		<table border="2" width="300">
			<tr>
				<td>번호</td>
				<td>문제</td>
				<td>정답</td>
			</tr>
			<tr>
				<td>1</td>
				<td><input type = "hidden" name = "hidden" value = "<%=sum%>"><%=ranNum +"X"+ranNum2 %></td>
				<td><input type='text' name='ens' required></td>
			</tr>
			<tr>
				<td>2</td>
				<td><input type = "hidden" name = "hidden1" value = "<%=sum1%>"><%=ranNum3 +"X"+ranNum4 %></td>
				<td><input type='text' name='ens2' required></td>
			</tr>
			<tr>
				<td>3</td>
				<td><input type = "hidden" name = "hidden2" value = "<%=sum2%>"><%=ranNum5 +"X"+ranNum6 %></td>
				<td><input type='text' name='ens3' required></td>
			</tr>

			<tr>
				<td>4</td>
				<td><input type = "hidden" name = "hidden3" value = "<%=sum3%>"><%=ranNum7 +"X"+ranNum8 %></td>
				<td><input type='text' name='ens4' required></td>
			</tr>

			<tr>
				<td>5</td>
				<td><input type = "hidden" name = "hidden4" value = "<%=sum4%>"><%=ranNum9 +"X"+ranNum10 %></td>
				<td><input type='text' name='ens5' required></td>
			</tr>
	</form>

	<input type="submit">

</body>
</html>