<%@page import="web_pf.User"%>
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
	h2{
		margin:0 auto;
		margin-bottom:50px;
	}
	.btn{
	
		background: rgb(14, 134, 202);
	    border: 2px solid rgb(16, 161, 222);
	    color: #fff;
	    font-size: 15px;
		color: #fff;
	}
	.txarea{
		font-family: "Malgun Gothic";
		background: rgba(0, 0, 0, 0.5);
		border: 2px solid rgba(255, 255, 255, 0.3);
		font-size: 17px;
		color: #fff;
	}
	.hidetext { -webkit-text-security: disc; }
	
	</style>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	BoardDAO bdao = BoardDAO.getInstance();
	Board bean = bdao.getOneBoard(num);
%>
<div id ="rapper">
<br><br><br><br><br>
	<div align="center" id="center">
	<h2> 게시글 보기 </h2>
	<table border="1">
		<tr height="40">
			<td align="center" width="120"> 글번호 </td>
			<td align="center" width="180"> <%= bean.getNum() %></td>
			<td align="center" width="120"> 조회수 </td>
			<td align="center" width="180"> <%= bean.getReadcount() %></td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 작성자 </td>
			<td align="center" width="180"> <%= bean.getWriter() %></td>
			<td align="center" width="120"> 작성일 </td>
			<td align="center" width="180"> <%= bean.getReg_date() %></td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 이메일 </td>
			<td align="center" colspan="3" class="hidetext"> <%= bean.getEmail() %></td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 제목 </td>
			<td align="center" colspan="3"> <%= bean.getSubject() %></td>
		</tr>
		<tr height="80">
			<td align="center" width="120"> 글 내용 </td>
			<td align="center" width="120" colspan="3"> <%= bean.getContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></td>
		</tr>
		<tr height="40">
			<td align="center" colspan="4">
			<%
			User user = (User)session.getAttribute("user");
			String id = request.getParameter("id");
			String logid = user.getId();
           		if(user != null && logid.equals(bean.getWriter())){
			%>
				<input type="button" class="btn" value="답글쓰기" onclick="location.href='21_bRe.jsp?num=<%= bean.getNum() %>'">
				<input type="button" class="btn" value="수정하기" onclick="location.href='25_bUpdate.jsp?num=<%= bean.getNum() %>'" >
				<input type="button" class="btn" value="삭제하기" onclick="location.href='23_bDelete.jsp?num=<%= bean.getNum() %>'" >
				<input type="button" class="btn" value="목록보기" onclick="location.href='12_bList.jsp'" >
			<%
           		} else{
           	%>
				<input type="button" class="btn" value="답글쓰기" onclick="location.href='21_bRe.jsp?num=<%= bean.getNum() %>'">
				<input type="button" class="btn" value="목록보기" onclick="location.href='12_bList.jsp'" >
			<%
			}
			%>
			</td>
		</tr>
	</table>
</div>

</div>

</body>
</html>