<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

h1{
    display: flex;
	justify-content: space-around;
    color: green;
}


.form {
	margin: auto;
	margin-top: 10%;
	margin-bottom: 5%;
	text-align: center;
	width: 400px;
}

#input {
	display: flex;
	justify-content: space-around;
	align-items: center;
	flex-wrap: wrap;
	font-size: 14px;
}
</style>

<title>회원가입</title>
</head>



<body>
	<h1>NAVER</h1>
	<form action="_2_join.jsp" class="from">
		<input type='checkbox' name='subject' id="check"><span>네이버 이용약관 동의<small>(필수)</small></span>
		<p>여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한
			네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스
			회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한
			정보를 포함하고 있습니다. 네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영
			정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</p>
		<br> <input type='checkbox' name='subject' id="check"><span>개인정보 수집 및 이용 동의<small>(필수)</small></span><br>
		<input type='checkbox' name='subject' id="check"><span>위치정보 이용약관 동의<small>(선택)</small></span><br>
		<input type='checkbox' name='subject' id="check"><span>프로모션 정보 수신 동의<small>(선택)</small></span><br>

		<!-- 1개이상 선택이 되어야 -> 서밋 할 수 있도록 -->
		<!-- 유효성 검사 후에 -> submit 할 수 있도록 돌려줄 수 O -->
		<input type="button" value="취소">
		<input type="button" value="확인" onclick="checkVal(form)">
		<!-- <button>submit</button> -->
	</form>

	<script>
     
        function checkVal(form) {
          
            let cnt = 0;
            for(let i=0; i<form.subject.length; i++){
                if(form.subject[0].checked === true && form.subject[1].checked === true)
                cnt ++;
              
            }

            if(cnt > 1)
                form.submit();  // <-- 홀드하고 있었던 서밋동작을 실행
            else
                alert("필수사항을 다시 확인해주세요.");
        }



    </script>

</body>

</html>