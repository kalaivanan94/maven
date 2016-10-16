<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Category</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
.center {
    text-align: center;
    margin-top: 50px;
}

</style>
<body style="background-color: powderblue;">
<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"><img
					src="<c:url value='resources/image/img.jpg'/>"
					style="max-width: 100px;margin-top:6px; height: 32px;" /></a>
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
<body>	
	<div class="generic-container">
		<div class="well lead">Edit Category</div>
		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm" method="post" action="./updateCategory"
			commandName="categ">
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="Id">Category Id</label>
					<div class="col-md-7">
						<form:input type="text" path="catid" value="${catList.catid}"
							readonly="true" class="form-control input-sm" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Category
						Name</label>
					<div class="col-md-7">
						<form:input type="text" path="catname" value="${catList.catname}"
							class="form-control input-sm" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Update" class="btn btn-primary btn-sm" />
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>