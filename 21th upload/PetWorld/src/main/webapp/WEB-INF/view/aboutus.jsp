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
body {
	background-image: url("resources/image/dog-grass-banner.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 650px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"><img
				src="<c:url value='resources/image/img.jpg'/>"
				style="max-width: 100px; margin-top: 6px; height: 32px;" /></a>
		</div>

		<ul class="nav navbar-nav">
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-home"></span> HOME</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="dogs">Dogs and Puppies</a></li>
					<li><a href="cats">Cats and Kittens</a></li>
					
				</ul>
			<li class="active"><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			
			<li><a href="membership"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
	<br>
	<br>
	<h3>PetWorld.com was launched by, Mr. S.Kalaivanan.
<br>
<br>
We have bred and owned several breeds of Dogs such as: Basset Hounds, Beagles,<br> Rottweilers, Dachshunds, Dobermanns, Bulldogs, Rampur Hounds, Chippiparais,<br> French Mastiffs, Pugs, Beagles, Bulldogs and  Neapolitan Mastiffs.<br><br> They have exhibited in shows all over India.
<br>
The web-site is a direct result of their great interest in dogs,cats and <br>the need to compile a large database of dog owners, breeders, veterinarians,<br> dog trainers, animal welfare organisations and all those offering dog related services in India.
<br><br>
This web site is run with the welfare of the Canine world in mind.<br>
<br><br><br><br>
All business enquiries maybe be addressed to <br>
Mr. S.KALAIVANAN,<br>
31, B.N.Road, T.Nagar, Chennai-600017.<br>
Ph: 0-9789037581<br>
E-mail: s.kalaivanan007@gmail.com

</h3>
	<%@include file="footer.jsp"%>
</body>
</html>