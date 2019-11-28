<%@page import="web_pf.Board"%>
<%@page import="web_pf.BoardDAO"%>
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
	height : 1200px;
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
	BoardDAO bdao = BoardDAO.getInstance();
	int num = Integer.parseInt(request.getParameter("num"));
	// 게시글 하나 리턴함
	Board bean = bdao.getOneBoard(num);
%>
	<div id="rapper">
		<div align="center" id="center">
		<h2> 게시글 삭제 </h2>
		<form action="09_bDeletePro.jsp" method="post">
			<table border="1">
				<tr height="40">
					<td width="120" align="center"> 작성자 </td>
					<td width="180" align="center"> <%= bean.getWriter() %> </td>
					<td width="120" align="center"> 작성일 </td>
					<td width="180" align="center"> <%= bean.getReg_date() %> </td>
				</tr>
				<tr height="40">
					<td width="120" align="center"> 제목 </td>
					<td align="left" colspan="3"> <%= bean.getSubject() %> </td>
				</tr>
				<tr height="40">
					<td width="120" align="center"> 패스워드 </td>
					<td align="left" colspan="3"> 
						<input type="password" name="password" size="60">
					</td>
				</tr>
				<tr height="40">
					<td align="center" colspan="4">
						<input type="hidden" name="num" value="<%= num %>">
						<input type="submit" value="글삭제"> &nbsp;&nbsp;
						<input type="button" onclick="location.href='12_bList.jsp'" value="목록보기">
					</td>
				</tr>
			</table>
		</form>
	</div>
	</div>

</body>
</html>