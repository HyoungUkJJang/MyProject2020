<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	
		<title>포트폴리오 매칭</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
    <style> .carousel-inner > .carousel-item > img{ /* width: 640px; height: 720px; */ } 
    </style> 
		
		<!--부트스트랩 링크-->	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
    <script> $('.carousel').carousel({ interval: 2000 //기본 5초 }) </script> 
		
		<!-- 에이작스  -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

 		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	</head>
	
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="divided">

				<!-- One -->
					<section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right">
						<div class="content">
							<h3>Profile Input</h3>
							<p class="major">프로필을 완성시켜주세요</p>
							<form action="./login" method="post">
						
						    <h2>Carousel practice</h2>
						  
						    <div id="demo" class="carousel slide" data-ride="carousel"> 
						    <div class="carousel-inner"> 
						    <!-- 슬라이드 쇼 -->
						     <div class="carousel-item active"> <!--가로--> 
						     <img class="d-block w-100" src="https://images.pexels.com/photos/213399/pexels-photo-213399.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" alt="First slide"> 
						     <div class="carousel-caption d-none d-md-block"> 
						     <h5>TEST</h5> 
						     <p>testtesttest</p>
						      </div>
						       </div> 
						       <div class="carousel-item"> 
						       <img class="d-block w-100" src="https://images.pexels.com/photos/2355519/pexels-photo-2355519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260" alt="Second slide">
						        </div> 
						        <div class="carousel-item"> 
						        <img class="d-block w-100" src="https://images.pexels.com/photos/2544554/pexels-photo-2544554.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" alt="Third slide">
						         </div> <!-- / 슬라이드 쇼 끝 --> 
						         <!-- 왼쪽 오른쪽 화살표 버튼 --> 
						         <a class="carousel-control-prev" href="#demo" data-slide="prev"> 
						         <span class="carousel-control-prev-icon" aria-hidden="true"></span> <!-- <span>Previous</span> --> </a> 
						         <a class="carousel-control-next" href="#demo" data-slide="next"> 
						         <span class="carousel-control-next-icon" aria-hidden="true"></span> <!-- <span>Next</span> --> 
						         </a> <!-- / 화살표 버튼 끝 --> <!-- 인디케이터 --> 
						         <ul class="carousel-indicators"> 
						         <li data-target="#demo" data-slide-to="0" class="active"></li> <!--0번부터시작--> 
						         <li data-target="#demo" data-slide-to="1"></li>
						          <li data-target="#demo" data-slide-to="2"></li> </ul> <!-- 인디케이터 끝 --> 
							</div>
				        </form>
						</div>
						<div class="image">
							<img src="./resources/Index_Resources/images/banner.jpg" alt="" />
						</div>
					</section>
			</div>

		<!-- Scripts -->
			<script src="./resources/Index_Resources/assets/js/jquery.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/browser.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/breakpoints.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/util.js"></script>
			<script src="./resources/Index_Resources/assets/js/main.js"></script>

	</body>
</html>