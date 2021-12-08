<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
h1 {
	display: flex;
	justify-content: space-around;
	color: green;
	font-size: 60px;
}

.error {
	font-size: 5px;
	color: red;
}
</style>


<title>네이버 : 회원가입</title>
</head>

<body>

	<h1>NAVER</h1>
	<form action="_2_joinPro.jsp" method="GET">
	
		<p>
			아이디<br> <input type="email" id="email" required="required"
				placeholder="@naver.com"><br> <span class="error" style ="display :none;">필수정보입니다</span>
		</p>

		<p>
			비밀번호<br> <input type="password" required="required"> <br>
			<span class="error" style ="display :none;">필수정보입니다</span>
		</p>
		<p>
			생년월일 <input type="text" placeholder="년(4자)" required="required">

			<select>
				<option value>월</option>
				<option value="01">01</option>
				<option value="02">02</option>
				<option value="03">03</option>
				<option value="04">04</option>
				<option value="05">05</option>
				<option value="06">06</option>
				<option value="07">07</option>
				<option value="08">08</option>
				<option value="09">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select> <input type="text" placeholder="일" required="required"><br>
			<span class="error" style ="display :none;">필수정보입니다</span>
		</p>
		<p>

			성별<br> <select required="required">
				<option value>성별</option>
				<option value="01">남자</option>
				<option value="02">여자</option>
				<option value="03">선택안함</option>

			</select>

		</p>


		<input type="submit" value="가입하기">
	</form>
	<script>
        

    </script>

</body>

</html>