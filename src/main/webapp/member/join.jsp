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
                        <input type="text" id="user_id" name="user_id" placeholder="4~15자리의 문자를 입력하세요.">
                        <br>
                    </label>
    
                    <label>비밀번호<br>
                        <input type="password" id="user_pw1" name="user_pw1" placeholder="8자리 이상의 문자를 입력하세요.">
                        <br>
                    </label> 
                    
                    <label>비밀번호 확인<br>
                        <input type="password" id="user_pw2" name="user_pw2"><br>
                    </label>
    
                    <label>이름<br>
                        <input type="text" id="user_name" name="user_name" placeholder="이름을 입력하세요."><br>
                    </label>                
                    
                    <label>생년월일<br>
                        <input type="date"><br>
                    </label>
    
                    <label>이메일 <br>
                        <input type="text" id="user_email" name="user_email"><br>
                    </label>   

                    <label>연락처<br>
                        <input type="text" id="user_tel" name="user_tel" placeholder="010-0000-0000"><br>
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
        
    <script>
    let userId = document.querySelector("#user_id");
    let pw1 = document.querySelector("#user_pw1");
    let pw2 = document.querySelector("#user_pw2");
    let userName = document.querySelector("#user_name");
    let userEmail = document.querySelector("#user_email");
    let userTel = document.querySelector("#user_tel");
    


    userId.addEventListener("change", function(){
        if (userId.value.length < 4 || userId.value.length > 15) {
            alert("4~15글자 이내로 입력하세요.")
            userId.select();
        }
    })

    pw1.addEventListener("change", function(){
        if(pw1.value.length < 8) {
            alert ("8자리 이상의 문자를 입력하세요.")
            pw1.value="";
            pw1.focus();
        }
    })

    pw2.addEventListener("change", function(){
        if(pw1.value != pw2.value) {
            alert ("비밀번호가 일치하지 않습니다.")
            pw2.value="";
            pw2.focus();
        }
    })
    
    userName.addEventListener("change",function(){
    	    if(this.value == "") {
    	        alert ("이름이 입력되지 않았습니다")
    	        this.value=""; 
    	}
   	})

</script>
    
    </div>
   <%@include file="../main/footer.jsp" %>
</body>
</html>