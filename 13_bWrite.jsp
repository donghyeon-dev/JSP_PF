<%@page import="web_pf.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
input:-webkit-autofill {
	transition: all 5000s ease-in-out 0s;
}

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

h2 {
	margin: 0 auto;
	margin-bottom: 50px;
}

.btn {
	background: rgb(14, 134, 202);
	border: 2px solid rgb(16, 161, 222);
	color: #fff;
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
</style>
</head>
<body>
	<%
		User user = (User) session.getAttribute("user");
		String id = "";
		String email = "";
		if (user != null) {
			id = user.getId();
			email = user.getEmail();
		}
	%>
	<div id="rapper">
	<br><br><br><br><br>
		<div align="center" id="center">
			<h2>게시글 쓰기</h2>
			<form action="14_bWritePro.jsp" method="post">
				<table border="1">
					<tr height="40">
						<td align="center" width="150">작성자</td>
						<td width="450"><input type="text" readonly class="txarea"
							name="writer" size="60" value="<%=id%>" /></td>
					</tr>
					<tr height="40">
						<td align="center" width="150">제목</td>
						<td width="450"><input type="text" class="txarea"
							name="subject" size="60" /></td>
					</tr>
					<tr height="40">
						<td align="center" width="150">이메일</td>
						<td width="450"><input type="email" readonly class="txarea"
							name="email" size="60" value="<%=email%>" /></td>
					</tr>
					<tr height="40">
						<td align="center" width="150">글 비밀번호</td>
						<td width="450"><input type="password" class="txarea"
							name="password" size="60" /></td>
					</tr>
					<tr height="40">
						<td align="center" width="150">글내용</td>
						<td width="450"><textarea rows="10" class="txarea" cols="50"
								name="content"></textarea></td>
					</tr>
					<tr height="40">
						<td align="center" colspan="2">
                            <input type="submit" value="글쓰기" class="btn" />&nbsp;&nbsp;
                            <input type="reset" value="다시작성" class="btn" /> &nbsp;&nbsp;
                            <input type="button" class="btn" onclick="location.href='12_bList.jsp'"value="전체게시글보기"></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</body>
</html>