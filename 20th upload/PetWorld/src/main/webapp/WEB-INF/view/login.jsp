<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PET WORLD</title>

<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	height: 400px;
	margin: auto;
}

.center {
	text-align: center;
	margin-top: 50px;
}
</style>
</head>
<body style="background-color: powderblue;">
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"><img
				src="<c:url value='resources/image/img.jpg'/>"
				style="max-width: 100px; margin-top: 6px; height: 32px;" /></a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="mainpage"><span
					class="glyphicon glyphicon-home"></span> HOME</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="dogs">Dogs and Puppies</a></li>
					<li><a href="cats">Cats and Kittens</a></li>

				</ul>
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>
		<div class="container">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-log-in"></span>SIGN UP</a></li>
			<li><form class="loginForm" action="<c:url value="/login " />"
					method="post">
					
					<input type="text" placeholder="Username" name="username" />
					<input type="password" placeholder="Password" name="password" />
					<input type="submit" value="Login" />
					
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				</form></li>
				<br>

					<li><span class="psw"><a href="forgetpassword">Forget password?</span></li> 
							<c:if test="${not empty error}">
						<div class="error" style="color: red;">${error}</div>
					</c:if>

					<c:if test="${not empty msg }">
						<div class="msg" style="color: blue;">${msg}</div>
					</c:if>
		</ul>

	</div>
</div>
	</nav>
	</body>
<body>
	<div class="center">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">


				<div class="item active">
					<img src="<c:url value='resources/image/banner-03.jpg'/>" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/image/cat.jpg'/>" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/image/banner-12.jpg'/>" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/image/pets2.jpg'/>" />
				</div>


				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>