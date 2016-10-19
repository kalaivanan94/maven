
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>List of Products</title>
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
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="form">ADD PRODUCT</a></li>
			<li><a href="spform"> SUPPLIER FORM</a></li>
			<li class="active"><a href="catform"> CATEGORY FORM</a></li>
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
<body>
	<div class="center">
	<center>
		<div style="color: black; font-size: 30px">LIST OF CATEGORY</div>
		<br>
		<table border="1" bgcolor="white" width="500px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">
				<td>Category Id</td>
				<td>Category Name</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>

			<c:forEach items="${categoryList}" var="category">
				<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">
					<td>${category.catid}</td>
					<td>${category.catname}</td>

					<td><a href="catedit?id=${category.catid}">Edit</a></td>
					<td><a href="deleteCategory?id=${category.catid}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	<br>
	<a href="catform"><button type="button">CLICK HERE TO ADD
			NEW CATEGORY</button></a>
			</center>
			</div>
	<%@include file="footer.jsp"%>
</body>
</html>