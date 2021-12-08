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

#check {
	margin-left: 40%;
}

textarea {
	margin-left: 30%;
}

</style>

<title>회원가입</title>
</head>



<body>
	<h1>NAVER</h1>
	<form action="_2_joinEx.jsp" class="from">
		<input type='checkbox' name='subject1' id="check">
		
		<span>네이버이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 정보 수신(선택)에 모두 동의합니다.</span><br>
		
		<input type='checkbox' name='subject' id="check"><span>네이버
			이용약관 동의<small>(필수)</small>
		</span>
		<p>
			<textarea cols="70" rows="10">
			여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한
			네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스
			회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한
			정보를 포함하고 있습니다. 네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영
			정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
		</textarea>
			<br>
		</p>

		<input type='checkbox' name='subject' id="check"><span>개인정보
			수집 및 이용 동의<small>(필수)</small>
		</span><br>
		<p>
			<textarea cols="70" rows="10">
			개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
1. 수집하는 개인정보
이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다
		</textarea>
			<br>
		</p>
		<input type='checkbox' name='subject' id="check"><span>위치정보
			이용약관 동의<small>(선택)</small>
		</span><br>
		<p>
			<textarea cols="70" rows="10">
			위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
제 1 조 (목적)
이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.
제 3 조 (서비스 내용 및 요금)
①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
1.Geo Tagging 서비스: 게시물에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다.
		</textarea>
			<br>
		</p>
		<input type='checkbox' name='subject' id="check"><span>프로모션
			정보 수신 동의<small>(선택)</small>
		</span><br>
		<p>
			<textarea cols="70" rows="10">
			네이버에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(네이버앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로 운영하거나 네이버 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.
		</textarea>
			<br>
		</p>

		<!-- 1개이상 선택이 되어야 -> 서밋 할 수 있도록 -->
		<!-- 유효성 검사 후에 -> submit 할 수 있도록 돌려줄 수 O -->
		<input type="button" value="취소" id = "btn">
		<input type="button" value="확인" onclick="checkVal(form)" id = "btn">
		<!-- <button>submit</button> -->
	</form>

	<script>
		function checkVal(form) {

			let cnt = 0;
			for (let i = 0; i < form.subject.length; i++) {
				if (form.subject[0].checked === true
						&& form.subject[1].checked === true) {
					cnt++;
				}
			}

			if (form.subject1.checked === true) {
				for (let i = 0; i < form.subject.length; i++) {
					form.subject[i].checked = true;
					cnt = 4;
				}
			}

			if (cnt > 1)
				form.submit(); // <-- 홀드하고 있었던 서밋동작을 실행
			else
				alert("필수사항을 다시 확인해주세요.");
		}
	</script>

</body>

</html>