<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

<h1>회원가입</h1>
    <form action="joinPro.jsp" method="post" name="frm">
        <span>이름:&#9;</span><br>
        <input type="text" name="name" id="name" required><br>
      
        <span>아이디:&#9;</span><br>
        <input type="text" name="userid" id="userid" required>
       	<input type="button" onclick="useridcheck()" value ="중복체크" name ="idcheck"><br>
        <span>비밀번호:&#9;</span><br>
        <input type="password" name="userpw" id="userpw" required><br>
         
        <span>비밀번호확인:&#9;</span><br>
        <input type="password" name="REPW" id="REPW" required>
        <input type ="button" onclick="pwCheck()" value ="비밀번호확인"><br>
       
       
        <span>성별:&#9;</span><br>
        <label>남<input name="usergender" type="radio" value= "남" checked></label>
        <label>여<input name="usergender" type="radio" value= "여" checked></label>	<br>

        <span>전화번호:&#9;</span><br>
        <input type="tel" name="phoneNumber" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-0000-0000" required><br>
        
        <span>이메일:&#9;</span><br>
        <input type ="email" name ="email" id ="email"placeholder="@형식으로 입력하세요" required><br>
        
        <input type="text" name="postcode" id="postcode" placeholder="우편번호" readonly> 
        <input type="button" onclick="PostCode()" value="주소 검색"><br> 
        <input type="text" name="address" id="address" placeholder="주소" readonly> <br>
        <input type="text" name="detail" id="detail" placeholder="상세주소"> 
        <input type="text" name="ex" id="ex" placeholder="참고항목" readonly> <br> 
        <input type="button" value="뒤로가기" onclick="history.back(-1);">
        <input type ="submit" value ="회원가입하기">
    </form>


</body>
<script>

function useridcheck() {
	var url ="joincheck.jsp?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");  
	
}
function pwCheck(){
	if (document.frm.userpw.value !== document.frm.REPW.value|| document.frm.userpw.value === "") {
		alert("두개의 암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}else{
	alert("암호가 일치합니다");		
	return true;
	}
	
}


</script>
<!-- 다음 주소 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function PostCode(){
    new daum.Postcode({
        oncomplete : function(data){
            // 팝업에서 검색결과 항목 클릭시 실행할코드 작성

            // 각 주소의 규칙에 따라 주소를 조합
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가짐
            let addr = '';
            let extraAddr ='';
            if(data.userSelectedType ==='R'){ // 도로명주소 선택시
                addr = data.roadAddress;
            }else{  // 지번 선택시
                addr = data.jibunAddress;
            }
			// 사용자가 선택한 주소가 도로명 타입일때
            if(data.userSelectedType === 'R'){
            	// 법정동명이 있을경우 추가(동/로/가)
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
            	// 건물이름이 있고, 공동주택의 경우
                if(data.buildingName !== '' && data.apartment ==='Y'){
                    extraAddr +=(extraAddr !== '' ? ', ' +data.buildingName : data.buildingName);
                }
				// 표시할 참고 목록이 있을 경우 () < 괄호 추가한 문자열 생성
                if(extraAddr  !== ''){
                    extraAddr = '(' + extraAddr +')';
                }
				// 조회된 참고항목 넣기
                document.getElementById("ex").value = extraAddr;
            }else{
                document.getElementById("ex").value ='';
            }
			// 우편번호와 주소 정보 넣기
            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("address").value = addr;
			// 커서를 상세주소로 이동
            document.getElementById("detail").focus();
        }
    }).open();
}

</script>

</html>