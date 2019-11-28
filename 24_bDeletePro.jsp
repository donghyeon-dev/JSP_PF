<%@page import="web_pf.BoardDAO"%>
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
		String pass = request.getParameter("password");
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO bdao = BoardDAO.getInstance();
		String password = bdao.getPass(num);
		
		if(pass.equals(password)){
			bdao.deleteBoard(num);
			response.sendRedirect("12_bList.jsp");
		} else {
	%>
		<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다.");
		histroy.go(-1);
		</script>
		<%
		}
		%>
</body>
</html>