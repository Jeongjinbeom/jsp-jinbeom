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
	// 폼 예제 
	// 구구단.jsp 만들고
	// 2~9단까지 안에서 랜덤으로 5개문제 출제 (table)
	// 사용자가 문제에 대한 답을 입력 (input -> req)
	
	// 구구단 pro.jsp 만들고
	// 넘어온 파라미터를 바탕으로
	// 성적표 출력 (정오표)
	
	String ens = request.getParameter("ens");
	String ens1 = request.getParameter("ens2");
	String ens2 = request.getParameter("ens3");
	String ens3 = request.getParameter("ens4");
	String ens4 = request.getParameter("ens5");
	
	int num1 = Integer.parseInt(ens);
	int num2 = Integer.parseInt(ens1);
	int num3 = Integer.parseInt(ens2);
	int num4 = Integer.parseInt(ens3);
	int num5 = Integer.parseInt(ens4);
	
	int cnt = 0;
	
	String hid1 = request.getParameter("hidden");
	int sum = Integer.parseInt(hid1);
	
	String hid2 = request.getParameter("hidden1");
	int sum1 = Integer.parseInt(hid2);
	
	String hid3 = request.getParameter("hidden2");
	int sum2 = Integer.parseInt(hid3);
	
	String hid4 = request.getParameter("hidden3");
	int sum3 = Integer.parseInt(hid4);
	
	String hid5 = request.getParameter("hidden4");
	int sum4 = Integer.parseInt(hid5);
			
	
	String x = "";
	String a = "";
	String b = "";
	String c = "";
	String d = "";
	
			if(num1 == sum){
				x = "O";
				cnt ++;
			}else{
				x = "X";
			}
			
			if(num2 == sum1){
				a = "O";
				cnt ++;
			}else{
				a = "X";
			}
			
			if(num3 == sum2){
				b = "O";
				cnt ++;
			}else{
				b = "X";
			}
			
			if(num4 == sum3){
				c = "O";
				cnt ++;
			}else{
				c = "X";
			}
			
			if(num5 == sum4){
				d = "O";
				cnt ++;
			}else{
				d = "X";
			}
	%>
	
	  <h1>채점</h1>
    <table border="2" width="300">
        <tr>
            <td>번호</td>
            <td>정답</td>
            <td>정답표기</td>
            <td>정오표</td>
        </tr>
        <tr>
            <td>1</td>
            <td><%=sum %></td>
            <td><%=num1 %></td>
            <td><%=x %></td>
        </tr>
        <tr>
            <td>2</td>
            <td><%=sum1 %></td>
            <td><%=num2 %></td>
            <td><%=a %></td>
        </tr>
        <tr>
            <td>3</td>
            <td><%=sum2 %></td>
            <td><%=num3 %></td>
           <td><%=b %></td>
        </tr>

        <tr>
            <td>4</td>
            <td><%=sum3 %></td>
            <td><%=num4 %></td>
            <td><%=c %></td>
        </tr>

        <tr>
            <td>5</td>
            <td><%=sum4 %></td>
            <td><%=num5 %></td>
            <td><%=d %></td>
        </tr>
        <tr>
            <td colspan="4">성적 : <%=cnt*20 %></td>
        </tr>
	
</body>
</html>