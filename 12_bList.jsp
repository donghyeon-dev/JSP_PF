<%@page import="web_pf.User"%>
<%@page import="web_pf.Board"%>
<%@page import="java.util.Vector"%>
<%@page import="web_pf.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
h2{
	margin:0 auto;
}
.btn{

	background: rgb(14, 134, 202);
    border: 2px solid rgb(16, 161, 222);
    color: #fff;
    font-size: 15px;
	color: #fff;
}
#top {
	width: 100%;
	position: absolute;
	z-index: 1;
	/* opacity: 0.5; */
	background: rgba(182, 182, 182, 0.014);
}

.top_menu {
	width: 1200px;
	height: 50px;
	margin: 0 auto;
	border-bottom: 1px solid rgba(255, 255, 255, 0.074);
	/* background : rgba(255, 255, 255, 0.074); */
}

.top_menu a {
	display: inline-block;
	text-decoration: none;
	font-size: 19px;
	font-weight: bold;
	margin: 15px;
	color: rgba(255, 255, 255, 0.7);
}
.menu_list {
	margin: 0 auto;
	float: right;
}
.top_left {
	float: left;
}
.top_right {
	float: right;
}

.top_login {
	display: inline-block;
}
.logo {
	float: left;
}
.img_logo {
	margin-top: 10px;
	margin-right: 40px;
	width: 80px;
	height: 30px;
	float: left;
}
a{
	color: rgba(255, 255, 255, 0.5);
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>

<%
		User user = (User)session.getAttribute("user");
%>
<div id="rapper">
<div id="top">
			<div class="top_menu">
				<div class="top_left">
					<div class="logo">
						<img src="image/logo_bl.png" class="img_logo"
						onclick = "location.href='index.jsp'"n						style="cursor:pointer;">
					</div>
					<div class="menu_list">
						<a href="#">게임 ∨</a> <a href="#">샵</a> <a href="#">새소식</a>
						<a href="#">E스포츠 ∨</a> <a href="#">이벤트</a>
					</div>
				</div>
				<div class="top_right">
					<div class="top_login">
					<%
					if(user != null){
					%>
						<a href="17_uInfo.jsp?id=<%=user.getId()%>"><%= user.getId() %></a>
					<%} else{ %>
						<%} %>
						<a href="12_bList.jsp">고객센터</a>
						<%
						String id = request.getParameter("id");
                       		if(user != null){
                       			id = user.getId();
                        %>
						<a href="06_logoutPro.jsp">로그아웃</a>
						<% } else{
						%>
						<a href="04_login.jsp">로그인</a>
						<%}
						%>
					</div>
				</div>
			</div>
		</div>
<br><br><br><br><br>
	<div align="center" id="center">
		<h2> 전체 게시글 보기 </h2>
		
		<%
			
			int pageSize= 10;
			String pageNum = request.getParameter("pageNum");
			if(pageNum ==null){
				pageNum = "1";
			}
			int count = 0;
			int number = 0;
			
			int curPage = Integer.parseInt(pageNum); 
			
			BoardDAO bdao = BoardDAO.getInstance();
			
			count = bdao.getAllCount();
			
			// 현재 페이지에 보여줄 시작 번호를 설정 = 데이터 베이스에서 불러올 시작번호
			int startRow = (curPage - 1) * pageSize;
			int endRow = curPage * pageSize;
			Vector<Board> vec = bdao.getAllBoard(startRow, endRow);
			number = count - (curPage - 1) * pageSize;
		%>
		<br>
		<table border="1">
			<tr height="40">
				<td align="right" colspan="5" class="tds">
					<input type="button" value="글쓰기"
					onclick="location.href='13_bWrite.jsp'"
					class="btn"
					>
		 		</td>
			</tr>
	
			<tr height="40">
				<td width="50" align="center" class="td1"> 번호 </td>
				<td width="320" align="center"class="td2"> 제목 </td>
				<td width="100" align="center"class="td3"> 작성자 </td>
				<td width="150" align="center"class="td4"> 작성일 </td>
				<td width="50" align="center" class="td5"> 조회수 </td>
			</tr>
	<%
		for(int i=0; i<vec.size(); i++){	
			// 벡터에 저장되어 있는 빈 클래스를 하나씩 추출
			Board bean = vec.get(i); %>
			<tr height="40">
				<%-- 답변형 게시판으로 정렬을 했기 때문에, getNum()으로 번호를 추출하면,
				번호가 뒤죽박죽 마구 섞이게 된다. --%>
				<td width="50" align="center" class="td10"> <%= number-- %> </td>
				<%-- 글 제목은 들여쓰기 때문에 왼쪽정렬할 필요가 있다. --%>
				<td width="100" align="left" class="td11"> 
					<%
						if(bean.getRe_step() > 1){
							// (re_step > 1) ? ==== 답글이 달렸는지 확인하는거임
							for(int j=0; j<(bean.getRe_step()-1)*5; j++){
							// re_step의 단계 만큼 공백 추가  (1 = 공백없음 // 2= 5개 // 3= 5*2 //....)
					%>		
						&nbsp;
					<%			
							}
						}
					%>
											
					<a href="15_bInfo.jsp?num=<%= bean.getNum() %><%-- &
										  ref=<%= bean.getRef() %>&
										  re_step<%= bean.getRe_step() %>&
										  re_level<%= bean.getRe_level() %> --%>"
					style="text-decoration: none">
					<%= bean.getSubject() %></a> </td>
				<td width="320" align="center" class="td12"> <%= bean.getWriter() %> </td>
				<td width="150" align="center" class="td13"> <%= bean.getReg_date() %> </td>
				<td width="50" align="center" class="td14"> <%= bean.getReadcount() %> </td>
			</tr>
	<%
		}
	%>
		</table>
		
			<%-- 페이지 카운터링 소스를 작성   --%>
		<p>
	 	<%
			if(count > 0){
				int pageCount = count / pageSize + (count %
						pageSize == 0 ? 0 : 1);	// 카운터링 숫자를 얼마까지 보여줄건지 결정
				
				
				int startPage = 1;
				
				if(curPage % pageSize != 0){
					startPage = (int)(curPage / pageSize) * pageSize + 1;
				}else{
					startPage = ((int)(curPage / pageSize )- 1) * pageSize + 1;
				}
		
				
				int endPage = startPage + pageSize - 1;	// 화면에 보여질 페이지의 마지막 숫자
				
				if(endPage > pageCount) endPage = pageCount;
					
				// 이전이라는 링크를 만들건지 파악
				if(startPage > 10){
		%>
			<a href="12_bList.jsp?pageNum=<%= startPage - 10 %>"> [이전] </a>
		<%
				}
				// 페이징 처리
				for(int i=startPage; i<=endPage; i++){
		%>
			<a href="12_bList.jsp?pageNum=<%= i %>"> [<%= i %>] </a>
		<%
					
				}
				// 다음이라는 링크를 만들건지 파악
				if(endPage < pageCount){
		%>
			<a href="12_bList.jsp?pageNum=<%= startPage + 10 %>"> [다음] </a>
		<%
				}
			}
		 %>
		
		
	</div>
</div>
</body>
</html>