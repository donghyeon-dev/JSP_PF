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
td{
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
h2 {
	margin: 0 auto;
	margin-bottom: 50px;
}
input:-webkit-autofill {
	transition: all 5000s ease-in-out 0s;
}
.txarea {
	font-family: "Malgun Gothic";
	background: rgba(0, 0, 0, 0.5);
	border: 2px solid rgba(255, 255, 255, 0.3);
	font-size: 17px;
	color: #fff;
}

</style>
</head>
<body>
	<div id="rapper">
		<br><br><br><br><br>
	<div align="center" id = "center">
		<h2> 게시글 수정 </h2>
		<%
			// 해당 게시글 번호를 통하여 게시글을 수정
			int num = Integer.parseInt(request.getParameter("num"));
		
			// 하나의 게시글에 대한 정보를 리턴
			BoardDAO dao = BoardDAO.getInstance();
			Board bean = dao.getOneUpdateBoard(num);
		%>
		
		<form action="26_bUpdatePro.jsp" method="post">
			<table border="1">
				<tr height="40">
					<td width="120" align="center"> 작성자 </td>
					<td width="180" align="center"> <%= bean.getWriter() %></td>
					<td width="120" align="center"> 작성일 </td>
					<td width="180" align="center"> <%= bean.getReg_date() %></td>
				</tr>
				<tr height="40">
					<td width="120" align="center"> 제목 </td>
					<td width="480" colspan="3"> 
						<input type="text" name="subject" class="txarea"
                               value="<%=bean.getSubject()%>" size="60" />
					</td>				
				</tr>
				<tr height="40">
					<td width="120" align="center"> 패스워드 </td>
					<td width="480" colspan="3">
						<input type="password" name="password" class="txarea" size="60" />
					</td>
				</tr>
				<tr height="40">
					<td width="120" align="center"> 글내용 </td>
					<td width="480">
						<textarea rows="10" cols="60" name="content" class="txarea"><%=bean.getContent()%></textarea>
					</td>
				</tr>
				<tr height="40">
					<td colspan="4" align="center">
						<input type="hidden" name="num" value="<%= bean.getNum() %>" />
						<input type="submit" class="btn"  value="글수정" /> &nbsp;&nbsp;
						<input type="button" class="btn"onclick="location.href='12_bList.jsp'" value="전체글보기" />
					</td>
				</tr>
			</table>
		</form>
		
	</div>
	</div>
</body>
</html>