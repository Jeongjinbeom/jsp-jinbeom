<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
    
    
    
    </style>
    
    <title>유효성 검사</title>
</head>

<body>
    <h1>수강신청</h1>
    <form action="http://localhost:8080">
        <input type='checkbox' name='subject'><span>Java</span><br>
        <input type='checkbox' name='subject'><span>C</span><br>
        <input type='checkbox' name='subject'><span>Python</span><br>
        <input type='checkbox' name='subject'><span>javascript</span><br>
        <input type='checkbox' name='subject'><span>html/css</span><br>

        <!-- 1개이상 선택이 되어야 -> 서밋 할 수 있도록 -->
        <!-- 유효성 검사 후에 -> submit 할 수 있도록 돌려줄 수 O -->

        <input type="button" value="버어튼" onclick="checkVal(form)">
        <!-- <button>submit</button> -->
    </form>

    <script>
        // document.querySelector('form').addEventListener('submit',e=>{
        //     e.preventDefault() // 서밋 기본동작을 무시
        //     checkVal();
        // });

        function checkVal(form) {
            // alert(form);    // [object HTMLFormElement]
            // alert(form.subject); // [object RadioNodeList]
            // alert(form.subject.length); // 5
            // alert(form.subject[0].checked); // true
            let cnt = 0;
            for(let i=0; i<form.subject.length; i++){
                if(form.subject[i].checked === true)
                cnt ++;
            }

            if(cnt > 0)
                form.submit();  // <-- 홀드하고 있었던 서밋동작을 실행
            else
                alert("최소 1과목 이상 신청해야합니다");
        }



    </script>

</body>

</html>