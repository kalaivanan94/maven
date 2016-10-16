<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				style="max-width: 100px; margin-top: -7px; height: 32px;" /></a>
		</div>

		<ul class="nav navbar-nav">
			<li><a href="mainpage"><span
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
			<li><a href="form"> FORM</a></li>
			<li><a href="spform"> SUPPLIER FORM</a></li>
			<li><a href="catform"> CATEGORY FORM</a></li>
			<li class="active"><a href="cart"> <span
					class="glyphicon glyphicon-shopping-cart"></span>CART
			</a>
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>

		</ul>
	</div>
	</nav>



<div class="center">
		<center>
			<div style="color: black; font-size: 30px">SHOPPING CART</div>
			<div class="container">
				<c:forEach items="${productList}" var="user">
				<table>
					<tr
						style="background-color: white; color: black; text-align: center;"
						height="30px">
						<td><img src="<c:url value="${user.img}" />" alt="image"
							height="100px" width="100px" /></td>
						
						
						<td>
						<tr>Product Id:${user.pid}</tr><br>
						<tr>Product Name:${user.name}</tr><br>
						<tr>Product Description:${user.description}</tr><br>
						<tr>Product Category:${user.catname}</tr><br>
						<tr>Product Price: ${user.price}</tr>
						<td><a href="viewproduct"><button type="button">VIEW PRODUCT</button></a></td>
						
					
					</table>
						</td>
					<br>
				</c:forEach>
			</div>
			
		</center>
		
		
	</div>
</body>
</html>