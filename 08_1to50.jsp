<%@page import="web_pf.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="myCss.css">
</head>
<style>
#rapper{
        background-image: url(image/loginRapper.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        width: 100%;
        height : 800px;
        font-family: "Malgun Gothic";
        
}
body{
margin : 0 auto;
}
.login_rapper button{
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
.login_rapper{
    margin-top: 30px;
    height: 200px;
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
</style>
<body>
<div id = "rapper">
	<script>
		function goPro(){
			stop();
			alert(time);
			location.href="09_1to50Pro.jsp?time="+time;
		}
	</script>
	<script>
		function logId(){
			String id = FileManager.getLogin();
			alert(id);
		}
	</script>
	 <div class="inner_rapper">
	 	<button onclick = "logId()">아이디 확인</button>
    	<button onclick = "goPro()">랭킹 등록</button>
    	<div class="timer" id="time">0.00</div>
    	<button onclick="start()">시작</button>
    	<button  onclick="stop()">스톱</button>
    	<button onclick="reset()">리셋</button>
    	<button onclick="basic()">패널 생성</button>
    	<button onclick="setRandom()">랜덤 돌리기</button>
    	<div id="game1"></div>
    	<script src = "07_game1.js"></script>
    </div>
</div>   
</body>
</html>