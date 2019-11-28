
<%@page import="web_pf.User"%>
<%@page import="web_pf.UserDAO"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("qwe123")){
	%>	
		<script>
			alert("관리자 페이지");
			location.href="16_uList.jsp";
		</script>
	<%} %>
	
	<% 
		boolean login = UserDAO.getInstance().loginUser(id , pw); 
		if(login){
			
		User user = UserDAO.getInstance().getOneUser(id);
		session.setAttribute("user", user);
		if(user.getId().equals("admin")){
	%>
	<script>
			alert("관리자 페이지");
			location.href = "16_uList.jsp?id=<%= user.getId()%>";
	</script>
	<%
		}
	%>	
		<script>
			alert("로그인 성공.");
			location.href="index.jsp";
		</script>
	<% 
		}else{
	%>
		<script>
			alert("로그인 실패.");
			location.href="04_login.jsp";
		</script>
	<% 
		}
	%>
</body>
</html>