<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Products</title>

<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
.center {
    text-align: center;
    margin-top: 70px;
}
</style>
</head>
<body style="background-color: powderblue;">
<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"><img
					src="<c:url value='resources/image/img.jpg'/>"
					style="max-width: 100px;margin-top:-5px; height: 30px;" /></a>
			</div>

			<ul class="nav navbar-nav">
				<li class="active"><a href="mainpage"><span
						class="glyphicon glyphicon-home"></span> HOME</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="dogs">Dogs and Puppies</a></li>
						<li><a href="cats">Cats and Kittens</a></li>
						<li><a href="pegions">Pegions</a></li>
					</ul>
				<li><a href="aboutus">ABOUT US</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
			
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						SIGN UP</a></li>
				<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> 
						LOGIN</a></li>
				
			</ul>
		</div>
	</nav>
	<div class="center">
	<center>
		<div style="color: black; font-size: 30px">ADD PRODUCTS</div>
		<br>
		<form:form id="registerForm" commandName="prod" method="post"
			action="./addProduct">
			<table width="400px" height="150px">
				<tr>
					<td><label for="name">PRODUCT NAME</label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="description">PRODUCT BREED</form:label>
					</td>
					<td><form:input path="description" /></td>
				</tr>
				<tr>
					<td><form:label path="price">PRODUCT PRICE</form:label></td>
					<td><form:input path="price" /></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="submit">ADD</button>
					<button type="button">CANCEL</button>
					</td>
				</tr>
			</table>
		</form:form>
		<a href="list">Click Here to see product List</a>
	</center>
	</div>
	
</body>
</html>