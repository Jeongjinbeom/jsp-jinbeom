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
    font-size: 60px;
}

    </style>
    
    
    <title>네이버 : 회원가입</title>
</head>

<body>


    <h1>NAVER</h1>
    <form action="_2_join.jsp">
    <div>
        아이디
        <p> <input type="email" placeholder="@naver.com" id = "id"></p>
    </div>
    <div>
        비밀번호
        <p><input type="password"></p> 
    </div>

    <div>
        비밀번호 재확인
        <p><input type="password"></p>
    </div>

    <div>
        이름
        <p><input type="text"></p>
    </div>

    <div>
        생년월일
        <input type="text" placeholder="년(4자)">
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
        </select>
        <input type="text" placeholder="일">
    </div><br>

    <div>
        성별<br>
        <select>
            <option value>성별</option>
    
            <option value="01">남자</option>
            <option value="02">여자</option>
            <option value="03">선택안함</option>
        </select>
    </div>

    <div>
        본인확인 이메일(선택)<br>
        <input type="email" placeholder="선택입력">
    </div>
    <br>
    <div>
        휴대전화
        <select>
        <option value>대한민국 +82</option>
        <option value="01">그리스 +30</option>
        <option value="02">나우루 +264</option>
        <option value="03">뉴질랜드 +64</option>
        <option value="01">니제르 +227</option>
        <option value="02">일본 +85</option>
        <option value="03">미국 +303</option>
        <option value="01">서울 +02</option>
        <option value="02">경기도 +031</option>
        <option value="03">파라과이+77</option>
    </select>
    <br>
    <input type="tel" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="전화번호 입력"><br>
    <input type="text" placeholder="인증번호 입력하세요"><br>
    </div>
      
    <input type="button" value="가입하기" onclick="checkVal(form)">
    </form>


</body>

</html>