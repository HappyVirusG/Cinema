<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=2">
    <link rel="stylesheet" href="../resource/css/join.css">
    
    
    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="../main/header.jsp" %>
    <div id="wrap">
	
        <section id="join">
            <form action="" method="post">  
                <div class="userInfo">
                    <label>아이디<br>
                        <input type="text" id="id" placeholder="아이디를 입력하세요">
                        <br>
                    </label>
    
                    <label>비밀번호<br>
                        <input type="password" name="" id="pw" placeholder="비밀번호를 입력하세요">
                        <br>
                    </label> 
                    
                    <label>비밀번호 확인<br>
                        <input type="password" name="" id=""><br>
                    </label>
    
                    <label>이름<br>
                        <input type="text" placeholder="이름을 입력하세요"><br>
                    </label>                
                    
                    <label>생년월일<br>
                        <input type="date"><br>
                    </label>
    
                    <label">이메일 <br>
                        <input type="text"><br>
                    </label>   

                    <label>연락처<br>
                        <input type="text" placeholder="010-0000-0000"><br>
                    </label> 
                </div>
                
                <label>
                    <p>
                        <input type="checkbox" name="" id="">
                        문자, 이메일로 상품 및 이벤트 정보를 받겠습니다. (선택)
                    </p>
                    
                </label>
                <label>
                    <p>
                        <input type="checkbox" name="" id="">
                        14세 이상입니다.
                    </p>
                </label>
                <button type="submit">가입하기</button>
            </form>

        </section>
    
    </div>
   <%@include file="../main/footer.jsp" %>
</body>
</html>