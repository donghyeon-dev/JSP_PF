
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>join</title>
</head>
<style>
body {
	margin: 0;
}

#rapper {
	background-image: url(image/loginRapper.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height : 1200px;
	font-family: "Malgun Gothic";
}

.space {
	height: 20px;
}

.center_rapper {
	margin: 0 auto;
	width: 300px;
	height: 522px;
}

.center_rapper img {
	margin: 0 auto;
	display: block;
}

.login_rapper {
	margin-top: 30px;
	height: 100%;
}

.login_rapper .nor {
	display: inline;
	background: rgba(0, 0, 0, 0.5);
	border: 2px solid rgba(255, 255, 255, 0.3);
	font-size: 17px;
	margin-bottom: 15px;
	width: 300px;
	height: 20px;
	box-sizing: content-box;
	color: #fff;
}
.login_rapper .nor2{
	background: rgb(14, 134, 202);
    border: 2px solid rgb(16, 161, 222);
    color: #fff;
    font-size: 15px;
    width: 300px;
	height: 20px;
	box-sizing: content-box;
	color: #fff;
	margin-bottom: 15px;
}
.login_button {
	width: 300px;
	height: 25px;
	margin-bottom: 15px;
	background: rgb(14, 134, 202);
	border: 2px solid rgb(16, 161, 222);
	color: #fff;
	font-size: 15px;
}

.login_rapper a {
	display: block;
	text-align: center;
	color: #00aeff;
	font-size: 13px;
	text-decoration: none;
}
 p{
 	color: white;
 }
input.tel{
 	width:90 px;
 	margin: 5px;
 	background: rgba(0, 0, 0, 0.5);
	border: 2px solid rgba(255, 255, 255, 0.3);
	font-size: 17px;
	box-sizing: content-box;
	color: #fff;
 }
</style>
<body>

<script>
		function moveHome() {
			location.href = "index.jsp";
		}
		
		function moveFocus(num,fromform,toform){
		  var str = fromform.value.length;
		  if(str == num) {
		    toform.focus();
		  }    
		}

</script>
	<div id="rapper">
		<div class="space"></div>
		<div class="center_rapper">
			<div class="center_logo">
				<img src="image/loginLogo.png">
			</div>
			<div class="login_rapper">
				<form action="03_joinPr.jsp" method="post">
					<p>
						아이디<input type="text" name="id" class="nor" autocomplete="off">
					</p>
					<p>
						패스워드<input type="password" name="pw" class="nor" autocomplete="off">
					</p>
					<p>
						이름<input type="text" name="name" class="nor" autocomplete="off">
					</p>
					<p>
						연락처
						<input type="text" size="2" name="tel1" maxlength="3"
						onKeyUp="javascript:moveFocus(3,this,tel2)" class="tel" autocomplete="off">
						<input type="text" size="3" name="tel2" maxlength="4"
						onKeyUp="javascript:moveFocus(4,this,tel3)" class="tel" autocomplete="off">
						<input type="text" size="3" name="tel3" maxlength="4"
						onKeyUp="javascript:moveFocus(4,this,email)"class="tel" autocomplete="off">
					</p>
					<p>
						이메일<input type="email" name="email" class="nor" autocomplete="off">
					</p>
					<input type="submit" value="회원가입" class="nor2">
					<input type="reset" value="다시쓰기" class="nor2">
					<input type="button" value="돌아가기" onclick="moveHome()" class="nor2">
				</form>
			</div>

		</div>
	</div>
</body>
</html>