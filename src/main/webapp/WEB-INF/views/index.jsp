<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>같이 가치! 함께 가자</title>
 <link href="css/index.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 제이쿼리 불러오기 --> <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- Slick 불러오기 --> <script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
</head>
<body>

	<div class="top">
		<a href="."><img alt="로고" src="./image/logo.png"></a>
	
	<div class="menu">
		<ul>
			<li><a href="./guide">이용안내</a></li>
			<li><a href="take/list">이용하기</a></li>
			<li><a href="take/list">정보공유</a></li>
		</ul>
	</div>

	<div class="user">
		<ul>
			<li><a href="login">로그인</a></li>
			<li><a href="signup">회원가입</a></li>
		</ul>
	</div>
	
	</div>

	
		<div class="slider-div">
			<div><a href="take/list"><img src="./image/C_1.jpg"></a></div>
			<div><img src="./image/C_2.jpg"></div>
			<div><img src="./image/C_3.jpg"></div>
			<div><img src="./image/C_4.jpg"></div>
		</div>
	
	<script>
		$(function() {
			$('.slider-div')
					.slick(
							{
								slide : 'div', //슬라이드 되어야 할 태그 ex) div, li 
								infinite : true, //무한 반복 옵션     
								slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
								slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
								speed : 600, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
								arrows : false, // 옆으로 이동하는 화살표 표시 여부
								dots : true, // 스크롤바 아래 점으로 페이지네이션 여부
								autoplay : true, // 자동 스크롤 사용 여부
								autoplaySpeed : 4000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
								pauseOnHover : true, // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
								vertical : false, // 세로 방향 슬라이드 옵션
							
								dotsClass : "slick-dots", //아래 나오는 페이지네이션(점) css class 지정
								draggable : true, //드래그 가능 여부 
								
								responsive: [
									{
										breakpoint: 1024,
										settings: {
											
										}
									},
									{
										breakpoint: 600,
										settings: {
											
										}
									}
								]

							

							});
		})
	</script>
	
	<div class="search_img"><img src="./image/search.png"></div>
	
	<div class="go">
		<a href="./guide"><img src="./image/button1.png"></a>
		<a href="take/list"><img src="./image/button2.png"></a>
		<a href="board/goods/list"><img src="./image/button3.png"></a>
		<a href="board/normal/list"><img src="./image/button4.png"></a>
	</div>
	
	<div class="howto"><img src="./image/howto.png"></div>
	
	<div class="content3"><img src="./image/content3.png"></div>
	
	<footer>
		<div class="logo"><img src="./image/logo.png"></div>
		
		<div class="footer_wrap">
		
		<div class="text">
			<p>(주)투개더 <br><br>
			대전광역시 동구 우암로 352-21 <br><br>
			대표: 장영진, 김민재, 최영준, 김지해 <br><br>
			대표전화: 010-5923-2028 <br><br>
			업무시간: 평일 10:-18:00 (점심 12:00-13:00) <br><br>
			이메일: rlawlgo0703@gmail.com</p>
		</div>
		
		<div class="footer_list">
		
			<ul>
				<li class="list_title">투개더 정보</li>
				<li>투개더 소개</li>
				<li><a href="./guide">이용안내</a></li>
				<li>채팅상담</li>
				<li>이용약관</li>
				<li>개인정보처리방침</li>
		
			</ul>
			
		
			<ul>
				<li class="list_title">이용하기</li>
				<li><a href="take/wklist">산책 서비스</a></li>
				<li><a href="take/list">돌봄 서비스</a></li>
				<li><a href="board/goods/list">물품거래</a></li>
				<li><a href="board/normal/list">정보공유</a></li>
			</ul>
			
			<ul>
				<li class="list_title">투개더 계정</li>
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
			</ul>
		</div>
		
		<div class="footer_img"><img src="./image/footer_img.png"></div>
		</div>
		
		<div class="copy">
			<p>© 2021. TOGAETHER Co. all rights reserved</p>
		</div>
	</footer>
	
</body>
</html>