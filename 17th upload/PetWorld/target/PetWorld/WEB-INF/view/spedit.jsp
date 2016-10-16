
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
					<li><a href="pegions">Pegions</a></li>
				</ul>
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="form"> FORM</a></li>
			<li class="active"><a href="spform"><span
					class="glyphicon glyphicon-edit"></span> SUPPLIER FORM</a></li>
			<li><a href="catform"> CATEGORY FORM</a></li>

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
			<div style="color: black; font-size: 30px">EDIT SUPPLIER</div>
			<c:url var="userRegistration" value="saveUser.html" />
			<form:form id="registerForm" method="post" action="./updateSupplier"
				commandName="suppli">
				<br>
				<table width="400px" height="100px">
					<tr>
						<td><label for="Id">SUPPLIER ID</label></td>
						<td><form:input type="text" path="spid"
								value="${spList.spid}" readonly="true" /></td>
					</tr>
					<tr>
						<td><label for="name">Supplier Name</label></td>
						<td><form:input type="text" path="spname"
								value="${spList.spname}" /></td>
					</tr>
					<tr>
						<td><label for="name">Supplier Place</label></td>
						<td><form:input type="text" path="splace"
								value="${spList.splace}" /></td>
					</tr>
				</table>
				<br>
				<button type="submit">UPDATE</button>
			</form:form>
		</center>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>