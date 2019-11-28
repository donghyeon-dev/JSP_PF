<%@page import="web_pf.User"%>
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

	font-size: 15px;
 	color: #fff;
}
#rapper {
	background-image: url(image/loginRapper.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 1200px;
	font-family: "Malgun Gothic";
}
.btn{

	background: rgb(14, 134, 202);
    border: 2px solid rgb(16, 161, 222);
    color: #fff;
    font-size: 15px;
	color: #fff;
}

a{
	color: rgba(255, 255, 255, 0.5);
	text-decoration: none;
}

</style>
</head>

<body>
	<%
		String id = request.getParameter("id");
		UserDAO udao = UserDAO.getInstance();
		User user = udao.getOneUser(id);
	%>
<div id="rapper">
	<div align="center" id="center">
	<br><br><br><br>
		<h2> 회원 정보 보기</h2>
		<table border="1">
			<tr height="50">
				<td align="center" width="150"> 아이디 </td>
				<td align="center" width="250"> <%= user.getId() %> </td>
			</tr>	
			<tr height="50">
				<td align="center" width="150"> 비밀번호 </td>
				<td align="center" width="250"> <%= user.getPw() %> </td>
			</tr>
			<tr height="50">
				<td align="center" width="150"> 이름 </td>
				<td align="center" width="250"> <%= user.getName() %> </td>
			</tr>
			<tr height="50">
				<td align="center" width="150"> 전화번호 </td>
				<td align="center" width="250"> <%= user.getTel() %> </td>
			</tr>
			<tr height="50">
				<td align="center" width="150"> 이메일 </td>
				<td align="center" width="250"> <%= user.getEmail() %> </td>
			</tr>
			<tr height="50">
				<td align="center" colspan="2">
					<%-- onclick은 자바스크립트 문법! 다른페이지 이동 --%>
					<button class="btn" onclick="location.href='18_uUpdate.jsp?id=<%= user.getId()%>'"> 회원수정 </button>
					<button class="btn" onclick="location.href='20_uDeletePro.jsp?id=<%= user.getId()%>'"> 회원삭제 </button>
					<% if(user.getId().equals("admin")){  %>
					<button class="btn" onclick="location.href='16_uList.jsp'"> 전체조회 </button>
					<% } else {} %>
					<button class="btn" onclick="location.href='index.jsp'">메인화면</button>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>