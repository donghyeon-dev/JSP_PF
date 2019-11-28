<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>04_login</title>
</head>
<style>
body{margin: 0;}

input:-webkit-autofill {
 		  transition: all 5000s ease-in-out 0s;
}
#rapper{
        background-image: url(image/loginRapper.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        width: 100%;
        height : 1200px;
        font-family: "Malgun Gothic";
        
}
.space{
    height: 200px;
}
.center_rapper{
    margin: 0 auto;
    width: 300px;
    height: 522px;
}
.center_rapper img{
    margin: 0 auto;
    display :block;
}
.login_rapper{
    margin-top: 30px;
    height: 200px;
}
.login_rapper input{
    display: inline;
    background:rgba(0, 0, 0, 0.5);
    border:2px solid rgba(255, 255, 255, 0.3);
    font-size: 17px;
    margin-bottom: 15px;
    width: 300px;
    height: 20px;
    box-sizing: content-box;
    color: #fff;
    
    
}
.login_button{
    width: 300px;
    height: 25px;
    margin-bottom: 15px;
    background:rgb(14, 134, 202);
    border: 2px solid rgb(16, 161, 222);
    color: #fff;
    font-size: 15px;
    
}
.login_rapper a{
    display: block;
    text-align: center;
    color: #00aeff;
    font-size: 13px;
    text-decoration: none;
}


</style>
<body>
<script>
	function login(){
		location.href = "05_loginPr.jsp";
	}
</script>

<div id="rapper">
        <div class="space"></div>
        <div class="center_rapper">
            <div class="center_logo">
                <img src="image/loginLogo.png">
            </div>
            <div class="login_rapper">
            <form action="05_loginPr.jsp" method = "post">
                <input class="login_input" type="text" placeholder="    아이디" name="id">
                <input class="login_input" type="password" placeholder="    비밀번호" name="pw">
                <button class="login_button" type="submit" onclick ="login()">블리자드 로그인</button>
                <br><br>
                <a href="02_join.jsp" class="signup">블리자드 무료 회원 가입</a>
                <br>
                <a href="12_bList.jsp" class="login_support">로그인 문제 해결</a>
                <br>
                <a href="12_bList.jsp" class="retire">탈퇴한 계정 복구</a>
                </form>
            </div>

        </div>
    </div>
    
</body>
</html>