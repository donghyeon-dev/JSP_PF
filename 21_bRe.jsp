<%@page import="web_pf.Board"%>
<%@page import="web_pf.BoardDAO"%>
<%@page import="web_pf.User"%>
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

#center {
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
table{
	font-family: "Malgun Gothic";
	color: #fff;
	
}

h2 {
	margin: 0 auto;
	margin-bottom: 50px;
}

.btn {
	font-family: "Malgun Gothic";
	background: rgb(14, 134, 202);
	border: 2px solid rgb(16, 161, 222);
	font-size: 15px;
	color: #fff;
}

.txarea {
	font-family: "Malgun Gothic";
	background: rgba(0, 0, 0, 0.5);
	border: 2px solid rgba(255, 255, 255, 0.3);
	font-size: 17px;
	color: #fff;
}

.hidetext {
	-webkit-text-security: disc;
}
</style>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO bdao = BoardDAO.getInstance();
		Board bean = bdao.getOneBoard(num);
		int ref = bean.getRef();
		int re_step = bean.getRe_step();
		int re_level = bean.getRe_level();
	
		User user = (User) session.getAttribute("user");
		String id = "";
		String email = "";
		if (user != null) {
			id = user.getId();
			email = user.getEmail();
		}
		
	%>
	<div id="rapper" align="center">
	<br><br><br><br><br>
		<div id="center">
		<h2>답변 작성</h2>
		<form action="22_bRePro.jsp" method="post">
			<table border="1">
				<tr height="40">
					<td width="150" align="center"> 작성자 </td>
					<td width="450"> <input type="text" name="writer" size="60" class="txarea" value="<%=id%>"> </td>
				</tr>
				<tr height="40">
					<td width="150" align="center"> 제목 </td>
					<td width="450"> <input type="text" name="subject" value="[답변]" size="60" class="txarea"> </td>
				</tr>
				<tr height="40">
					<td width="150" align="center"> 이메일 </td>
					<td width="450"> <input type="email" name="email" size="60" class="txarea" value="<%=email%>"> </td>
				</tr>
				<tr height="40">
					<td width="150" align="center"> 비밀번호 </td>
					<td width="450"> <input type="password" name="password" size="60" class="txarea"> </td>
				</tr>
				<tr height="40">
					<td width="150" align="center"> 글 내용 </td>
					<td width="450"> <textarea rows="10" cols="60" name="content" class="txarea"></textarea> </td>
				</tr>
			
				<tr height="40">
					<%-- form에서 사용자로부터 데이터를 입력받지 않고 데이터를 넘김 --%>
					<td align="center" colspan="2">
						<input type="hidden" name="ref" value=<%=ref%>>
						<input type="hidden" name="re_step" value=<%=re_step%>>
						<input type="hidden" name="re_level" value=<%=re_level%>>
						<input class="btn" type="submit" value="답글쓰기완료" /> &nbsp;&nbsp;
						<input class="btn" type="button" onclick="location.href='12_bList.jsp'" value="전체글보기" />&nbsp;&nbsp;
						<input class="btn" type="reset" value="취소" style="color:red" /> 
						
					</td>			
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>