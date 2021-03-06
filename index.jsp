<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="facebook4j.Facebook,twitter4j.Twitter"%>

	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="@avizuber & @nadavreis">
<title>EDEN PROJECT</title>
<!-- Google Font -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700|Pacifico'
	rel='stylesheet' type='text/css'>
<!-- Bootstrap Core CSS -->
<link href="/Eden/res/css/indexScreen/bootstrap.min.css"
	rel="stylesheet" media="screen">
<!-- Fonts -->
<link href="/Eden/res/css/indexScreen/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Dosis'
	rel='stylesheet' type='text/css'>
<!-- Custom Theme CSS -->
<link href="/Eden/res/css/indexScreen/launchrocket.css"
	rel="stylesheet">
<link href="/Eden/res/css/indexScreen/flatMenu.css" rel="stylesheet">
<link href="/Eden/res/css/indexScreen/headerMenu.css"
	rel="stylesheet">

</head>
<%
	Facebook facebook = (Facebook) session.getAttribute("facebook");
	Twitter twitter = (Twitter) session.getAttribute("twitter");
	String userid = (String) session.getAttribute("userid");
	//int user_num=0;
	if(facebook==null&twitter==null&userid==null){
		session.setAttribute("user_num", 0);
	}else{
		
	}

%>
<body>

	<div class="headerMenu">
		<a class='button ctrl' href='#' tabindex='1'><i class="fa fa-gear"></i></a>
		<ul class='tip ctrl'>
			
				<%
					if (twitter == null & facebook == null & userid == null) {	// 전부 없을 때
				%> 
				<li class='slice'><a href='facebooksignin.do'><i class="fa fa-facebook-square"></i></a></li>
				<li class='slice'><a href='twitter1.do'><i class="fa fa-twitter-square"></i></a></li>
				<li class='slice'><a href='adminlogin_form.do'><i class="fa fa-tachometer"></i></a></li>
			<%
				} else if (twitter == null & facebook != null & userid == null) { //페이스 북 있을때
			%>
			
				<li class='slice'><a href='facebooklogout.do'><i class="fa fa-sign-out"></i></a></li>
				<li li class='slice'><a href="header_myPage.do?user_num=${user_num}"><i class="fa fa-tachometer"></i></a></li>
			
			<%
				} else if (twitter != null & facebook == null & userid == null) {  //트위터 있을 때 
			%>
				<li class='slice'><a href="twitterlogout.do"><i class="fa fa-sign-out"></i></a></li>
				<li class='slice'><a href="header_myPage.do?user_num=${user_num}"><i class="fa fa-tachometer"></i></a></li>
			<%
				} else if (userid != null & twitter == null & facebook == null) {  // 관리자일때
			%>
				<li class='slice'><a href="adminlogout.do"><i class="fa fa-sign-out"></i></a></li>
				<li class='slice'><a href="adminindex.do"><i class="fa fa-tachometer"></i></a></li>
			<%}%>

		</ul>
	</div>
	<div class="teaser">
		<div class="iconSec">
			<img src="/Eden/images/kiwi.jpg" width=110px>
		</div>
		<div class="titleSec">
			<h1 class="logo" style="margin: 0 0 10px 0;">사라진 동물들을 찾아 :</h1>
			<p>이 사이트는 모바일 환경과 데스크탑 환경을 지원합니다.</p>
		</div>
		<div class="flatMenu">
			<br />
			<nav style="border: 0px;">
				<div align="right" style="float: rigth; margin-right: 10px;">
					<ul class="panel" style="border: 0px;">
						<li class="color-1">
						<a href="aboutK.do">
								<div class="front">
									<i class="fa fa-home fa-4x"></i>
								</div>
								<div class="back">
									<span>소개</span>
								</div>
						</a></li>
						<li class="color-2">
						<a href="map.do">
								<div class="front">
									<i class="fa fa-align-left fa-4x"></i>
								</div>
								<div class="back">
									<span>동물DB</span>
								</div>
						</a></li>
						<li class="color-3">
						<a href="msglist.do">
								<div class="front">
									<i class="fa fa-envelope-o fa-4x"></i>
								</div>
								<div class="back">
									<span>메세지</span>
								</div>
						</a></li>
						<li class="color-4">
						<a href="side_support.do">
								<div class="front">
									<i class="fa fa-heart fa-4x"></i>
								</div>
								<div class="back">
									<span>후원금</span>
								</div>
						</a></li>
						<li class="color-5"><a href="events_list.do">
								<div class="front">
									<i class="fa fa-calendar fa-4x"></i>
								</div>
								<div class="back">
									<span>이벤트</span>
								</div>
						</a></li>
						<li class="color-6"><a href="video_list.do">
								<div class="front">
									<i class="fa fa-youtube-play fa-4x"></i>
								</div>
								<div class="back">
									<span>비디오</span>
								</div>
						</a></li>

					</ul>
				</div>
			</nav>
		
		</div>


	</div>

	<div class="container-fluid">
		<div class="header">
			<h2 class="logo">eden</h2>
		</div>

		<div class="footer" style="position: absolute; bottom: 30px;">
			<p>| &copy; 프로젝트 2015</p>
		</div>

		<video autoplay loop poster="/Eden/res/img/bg.png" id="bgvid">
			<source src="/Eden/res/vid/bg.mp4" type="video/mp4">
		</video>
	</div>
	<!-- Core JavaScript Files -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="/Eden/res/js/indexScreen/bootstrap.min.js"></script>
</body>

</html>