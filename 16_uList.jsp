<%@page import="web_pf.User"%>
<%@page import="java.util.Vector"%>
<%@page import="web_pf.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	margin: 0 auto;
}
.td11{
	font-weight: bold;
	padding-left: 15px;
	font-size: 15px;
}
#center{
	hieght:500px;
	font-size: 15px;
 	color: #fff;
}
#rapper {
	background-image: url(image/loginRapper.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height : 1200px;
	font-family: "Malgun Gothic";
}
h2{
	margin:0 auto;
}
.btn{

	background: rgb(14, 134, 202);
    border: 2px solid rgb(16, 161, 222);
    color: #fff;
    font-size: 15px;
	color: #fff;
	width:150px;
	height:50px;
	font-family: "Malgun Gothic";
}
#top {
	width: 100%;
	position: absolute;
	z-index: 1;
	/* opacity: 0.5; */
	background: rgba(182, 182, 182, 0.014);
}

.top_menu {
	width: 1200px;
	height: 50px;
	margin: 0 auto;
	border-bottom: 1px solid rgba(255, 255, 255, 0.074);
	/* background : rgba(255, 255, 255, 0.074); */
}

.top_menu a {
	display: inline-block;
	text-decoration: none;
	font-size: 14px;
	font-weight: bold;
	margin: 15px;
	color: rgba(255, 255, 255, 0.7);
}
.menu_list {
	margin: 0 auto;
	float: right;
}
.top_left {
	float: left;
}
.top_right {
	float: right;
}

.top_login {
	display: inline-block;
}
.logo {
	float: left;
}
.img_logo {
	margin-top: 10px;
	margin-right: 40px;
	width: 80px;
	height: 30px;
	float: left;
}
a{
	color: rgba(255, 255, 255, 0.5);
}

</style>
</head>
<body>
<div id="rapper">
	<%
		UserDAO udao = UserDAO.getInstance();
		Vector<User>vec = udao.getAllUser();
	%>
<br><br><br><br><br>
	<div align="center" id="center">
		<h2>모든 회원 보기</h2>
		<br>
		<table border="1">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="150">비밀번호</td>
			<td align="center" width="150">이름</td>
			<td align="center" width="150">전화번호</td>
			<td align="center" width="150">이메일</td>
		</tr>
		<%
			for(int i= 0; i < vec.size(); i++){
				User user = vec.get(i);
		%>
		<tr height="50">
			<td align="center" width="250">
				<a href="17_uInfo.jsp?id=<%=user.getId()%>"><%=user.getId() %>	
			</td>
			<td align="center" width="250"><%=user.getPw() %></td>
			<td align="center" width="250"><%=user.getName() %></td>
			<td align="center" width="250"><%=user.getTel()%></td>
			<td align="center" width="250"><%=user.getEmail() %></td>
		</tr>
		<% 
			}
		%>
		</table>
		<button value="뒤로가기" onclick="location.href='index.jsp'" class="btn">홈으로 가기</button>
	</div>
</div>
</body>
</html>