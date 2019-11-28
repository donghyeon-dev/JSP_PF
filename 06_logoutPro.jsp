<%@page import="web_pf.User"%>
<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		User user= (User)session.getAttribute("user");
		session.invalidate();
	%>
	<script>
		var id = "<%=user.getId()%>님 로그아웃 완료";
		alert(id);
		location.href="index.jsp";
	</script>
</body>
</html>