<%@page import="web_pf.FileManager"%>
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
		String t = request.getParameter("time");
		Double time = Double.parseDouble(t);
		String id = FileManager.getLogin();
		FileManager.saveRankData(id, t);

		response.sendRedirect("1to50.jsp");
	%>
	<script>
		alert(t);
	</script>
	
</body>
</html>