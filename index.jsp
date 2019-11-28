<%@page import="web_pf.User"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포트폴리오</title>
<link rel="shortcut icon" href="image/sam1.png">
<link rel="stylesheet" href="css/indexStyle.css">
</head>


<body>
	<%
		User user = (User) session.getAttribute("user");
	%>
	<div id="rapper">
		<div id="top">
			<div class="top_menu">
				<div class="top_left">
					<div class="logo">
						<img src="image/logo_bl.png" class="img_logo"
							onclick="location.href='index.jsp'"
							style="cursor: pointer;">
					</div>
					<div class="menu_list">
						<a href="#">게임 ∨</a> <a href="#">샵</a> <a href="#">새소식</a> <a
							href="#">E스포츠 ∨</a> <a href="#">이벤트</a>
					</div>
				</div>
				<div class="top_right">
					<div class="top_login">
						<%
							if (user != null) {
						%>
						<a href="17_uInfo.jsp?id=<%=user.getId()%>"><%=user.getId()%></a>
						<%
							} else {
						%>
						<%
							}
						%>
						<a href="12_bList.jsp">고객센터</a>
						<%
							String id = request.getParameter("id");
							if (user != null) {
								id = user.getId();
						%>
						<a href="06_logoutPro.jsp">로그아웃</a>
						<%
							} else {
						%>
						<a href="04_login.jsp">로그인</a>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
		<div id="center">
			<div class="center_cont">
				<div class="center_img">
					<img src="image/center_img1.jpg" class="center1">
				</div>
				<div class="center_img_text"></div>
				<div class="cont_game">
					<div class="cont_title">
						<a href="#" class="title1">게임</a> <a href="#" class="title2">모든
							게임 보기＞</a>
					</div>
					<div class="cont_comp">
						<a href="#" class="comp">Blizzard</a>
					</div>
					<div class="cont_img_group">
						<div class="img_group">
							<div class="img_over">
								<button class="img_btn">
									<a href="08_1to50.jsp"><img src="image/b7.jpg"></a>
									<p>1 to 50</p>
								</button>
							</div>

						</div>
						<div class="img_group">
							<div class="img_over">
								<button>
									<a href="10_memory.jsp"><img src="image/b2.jpg"></a>
									<p>Pairs game</p>
								</button>
							</div>

						</div>
						<div class="img_group">
							<div class="img_over">
								<button>
									<img src="image/b3.jpg">
								</button>
							</div>

						</div>
						<div class="img_group">
							<div class="img_over">
								<button>
									<img src="image/b4.jpg">
								</button>
							</div>

						</div>
						<div class="img_group">
							<div class="img_over">
								<button>
									<img src="image/b5.jpg">
								</button>
							</div>

						</div>
					</div>
					<div class="cont_message">
						<div class="message_text1">
							<a>한곳에서 모든 게임을 플레이할 수 있는 </a>
						</div>
						<div class="message_text2">
							<a>블리자드 Battle.net 앱</a>
						</div>
						<div class="message_text2">
							<a>｜</a>
						</div>
						<div class="message_text3">
							<a>언제 어디서나 함께하세요!</a>
						</div>
						<div class="message_text4">
							<a>블리자드 Battle.net 모바일 앱</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="middle">
			<div class="middle_news">
				<div class="cont_title2">
					<a href="#" class="news_title1">주요 소식</a> <a href="#"
						class="news_title2">새소식 모두 받기 ＞</a>
				</div>
                <div height = "30px"></div>
			</div>
			<div class="middle_img_group">
				<div class="news_img_group">
					<div class="news_img_over">
						<button>
							<img src="image/news3.jpg">
						</button>
					</div>
					<div class="comp" style="margin-top: 30px;">블리자드 인사이드</div>
					<div class="news_cont">콜 오브 듀티:모던 워페어 10월 25일 블리자드
						BATTNLE.NET으로 출시</div>

				</div>
				<div class="news_img_group">
					<div class="news_img_over">
						<button>
							<img src="image/news1.jpg">
						</button>
					</div>
					<div class="comp" style="margin-top: 30px;">하스스톤</div>
					<div class="news_cont">계획서: 달라란 침공 제1장 및 2장:지금 출시</div>

				</div>
				<div class="news_img_group">
					<div class="news_img_over">
						<button>
							<img src="image/news2.jpg" style="margin-left: -30px;">
						</button>
					</div>
					<div class="comp" style="margin-top: 30px;">월드 오브 워크래프트</div>
					<div class="news_cont">월드 오브 워크래프트 클래식 출시 안내</div>

				</div>
			</div>
		</div>

	</div>
	<div id="footer">
		<div class="footer_rapper">
			<div class="space"></div>
			<div class="footer_cont">
				<div class="language">
					<a>한국어</a>
				</div>
				<div class="footer_logo">
					<img src="image/loginLogo.png" class="footer_img">
				</div>
				<div class="footer_message" style="margin: 0 auto; width: 600px;">
					<div class="footer_message_text">
						<a href="#">인재채용 ｜ </a>
					</div>
					<div class="footer_message_text2">
						<a href="#">&nbsp;회사소개 ｜ </a>
					</div>
					<div class="footer_message_text3">
						<a href="#">&nbsp;고객지원 ｜ </a>
					</div>
					<div class="footer_message_text4">
						<a href="#">&nbsp;보도자료 ｜ </a>
					</div>
					<div class="footer_message_text4">
						<a href="#">&nbsp;API ｜ </a>
					</div>
					<div class="footer_message_text4">
						<a href="#">&nbsp;블리자드 PC방 </a>
					</div>
				</div>
				<div class="footer_copyright"
					style="width: 600px; align: center; margin: 0 auto; height: 20px;">
					<div
						style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">©2019
						Blizzard Entertainment, Inc. 모든 권리는 Blizzard Entertainment에 있습니다.</div>
				</div>
				<div class="footer_copyright"
					style="width: 600px; align: center; margin: 0 auto; height: 20px;">
					<div
						style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">여기서
						언급된 다른 모든 상표는 각 소유권자들의 자산입니다.</div>
				</div>
				<div class="footer_message"
					style="margin: 0 auto; width: 250px; font-size: 13px;">
					<div class="footer_message2_text"
						style="font-size: 13px; align: cetner;">
						<a href="#">개인정보 처리방침 ｜ </a>
					</div>
					<div class="footer_message2_text4"
						style="font-size: 13px; align: cetner;">
						<a href="#">&nbsp;이용약관 ｜ </a>
					</div>
					<div class="footer_message2_text4"
						style="font-size: 13px; align: cetner;">
						<a href="#">&nbsp;쿠키 </a>
					</div>
				</div>
				<div id="footer_legal" style="height: 200px;">
					<div class="footer_copyright"
						style="width: 600px; align: center; margin: 0 auto; height: 20px;">
						<div
							style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">
							블리자드 엔터테인먼트 유한 회사</div>
					</div>
					<div class="footer_copyright"
						style="width: 600px; align: center; margin: 0 auto; height: 20px;">
						<div
							style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">
							주소: 06164 서울시 강남구 테헤란로 521 파르나스타워 15층</div>
					</div>
					<div class="footer_copyright"
						style="width: 600px; align: center; margin: 0 auto; height: 20px;">
						<div
							style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">
							대표 번호: 1644-0727 | 팩스 번호: (02)544-3038 | 이메일:
							websupport@blizzard.co.kr</div>
					</div>
					<div class="footer_copyright"
						style="width: 600px; align: center; margin: 0 auto; height: 20px;">
						<div
							style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">
							사업자 등록 번호: 211-87-49910 | 통신 판매업 신고 번호: 강남-6017호 | 사업자정보확인</div>
					</div>
					<div class="footer_copyright"
						style="width: 600px; align: center; margin: 0 auto; height: 60px;">
						<div
							style="text-align: center; color: rgba(255, 255, 255, 0.3); font-size: 13px;">
							대표이사: 자렛 알렌 브랙, 전동진 | 개인정보 보호책임자: 전동진 대표이사</div>
					</div>


				</div>
			</div>
		</div>
	</div>


</body>
</html>