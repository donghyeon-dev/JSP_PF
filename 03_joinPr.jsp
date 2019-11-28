
<%@page import="web_pf.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>joinProcessing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>

	<jsp:useBean id="user" class="web_pf.User">
		<jsp:setProperty name="user" property="*"/>
	</jsp:useBean>

	
	
	<%
		user.setTel(user.getTel1() + user.getTel2() + user.getTel3());
		UserDAO udao = UserDAO.getInstance();
		/* if(udao.checkId(user)){ */
		udao.jointUser(user);
		System.out.println(user.getTel());
		System.out.println(user.getName());
		/* } */
	%>
	<script>
			alert("회원가입을 축하합니다.");
			location.href="index.jsp";
	</script>
	
</body>
</html>