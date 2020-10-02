<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html >
<head>
	<title>Easy Profile Blue - templatemo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 
Easy Profile Template
http://www.templatemo.com/tm-467-easy-profile
-->
	<!-- stylesheet css -->
	<link rel="stylesheet" href="./resources/Profile_Resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/Profile_Resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/Profile_Resources/css/templatemo-blue.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<!-- preloader section -->
<div class="preloader">
	<div class="sk-spinner sk-spinner-wordpress">
       <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- header section -->
<header>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<img src=${obj.userimg } class="img-responsive img-circle tm-border" alt="templatemo easy profile">
				<hr>
				<h1 class="tm-title bold shadow">Hi, I am ${obj.username }</h1>
				<h1 class="white bold shadow">${obj.usermajor }</h1>
			</div>
		</div>
	</div>
</header>

<!-- about and skills section -->
<section class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12">
			<div class="about">
				<h3 class="accent">Easy Profile</h3>
				<h2>${profile.easy_Profile_name }</h2>
				<p>${profile.easy_profile_content}</p>
			</div>
		</div>
		<div class="col-md-6 col-sm-12">
			<div class="skills">
				<h2 class="white">Skills</h2>
				<strong>${profile.skill_name1 }</strong>
				<span class="pull-right">${profile.skill_Value1 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value1 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value1}%;"></div>
					</div>
				<strong>${profile.skill_name2 }</strong>
				<span class="pull-right">${profile.skill_Value2 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value2 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value2 }%;"></div>
					</div>
				<strong>${profile.skill_name3 }</strong>
				<span class="pull-right">${profile.skill_Value3 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value3 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value3 }%;"></div>
					</div>
			</div>
		</div>
	</div>
</section>

<!-- education and languages -->
<section class="container">
	<div class="row">
		<div class="col-md-8 col-sm-12">
			<div class="education">
				<h2 class="white">Education</h2>
					<div class="education-content">
						<h4 class="education-title accent">${profile.education_Main_Name }</h4>
							<div class="education-school">
								<h5>${profile.education_Sub_Name }</h5>
							</div>
						<p class="education-description">${profile.education_Content }</p>
					</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12">
			<div class="languages">
				<h2>Languages</h2>
					<ul>
						<li>${profile.languages1 }</li>
						<li>${profile.languages2 }</li>
						<li>${profile.languages3 }</li>
					</ul>
			</div>
		</div>
	</div>
</section>

<!-- contact and experience -->
<section class="container">
	<div class="row">
		<div class="col-md-4 col-sm-12">
			<div class="contact">
				<h2>Contact</h2>
					<p><i class="fa fa-map-marker"></i> ${profile.contact_Place }</p>
					<p><i class="fa fa-phone"></i> ${profile.contact_Phone }</p>
					<p><i class="fa fa-envelope"></i> ${profile.contact_Mail }</p>
					<p><i class="fa fa-globe"></i> ${profile.contact_Page }</p>
			</div>
		</div>
		<div class="col-md-8 col-sm-12">
			<div class="experience">
				<h2 class="white">Experiences</h2>
					<div class="experience-content">
						<h4 class="experience-title accent">${profile.experiences_Main_Name }</h4>
						<h5>${profile.experiences_Sub_Name }</h5>
						<p class="education-description">${profile.experiences_Content }</p>
					</div>
			</div>
		</div>
	</div>
</section>

<!-- footer section -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<p>Copyright &copy; 2084 Your Easy Profile</p>
				<ul class="social-icons">
					<li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-google-plus"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-dribbble"></a></li>
					<li><a href="#" class="fa fa-github"></a></li>
					<li><a href="#" class="fa fa-behance"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

<!-- javascript js -->	
<script src="./resources/Profile_Resources/js/jquery.js"></script>
<script src="./resources/Profile_Resources/js/bootstrap.min.js"></script>	
<script src="./resources/Profile_Resources/js/jquery.backstretch.min.js"></script>
<script src="./resources/Profile_Resources/js/custom.js"></script>

</body>
</html>