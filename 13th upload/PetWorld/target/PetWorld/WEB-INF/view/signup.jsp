<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SIGN UP</title>
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
				style="max-width: 100px; margin-top: 7px; height: 32px;" /></a>
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

			
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
</body>


<body>
<div class="center">
	<div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<form>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Full Name</label> <input type="text"
								placeholder="Enter Full Name Here.." class="form-control">
						</div>

						<div class="row">
							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>User Name</label> <input type="text"
										placeholder="Enter User Name Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>Password</label> <input type="text"
										placeholder="Enter Password Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>Email ID</label> <input type="text"
										placeholder="Enter Email ID Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>Contact</label> <input type="text"
										placeholder="Enter Contact Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label>Address</label>
									<textarea placeholder="Enter Address Here.." rows="2"
										class="form-control"></textarea>
								</div>
							</div>


							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>City</label> <input type="text"
										placeholder="Enter City Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>Postal Code</label> <input type="text"
										placeholder="Enter Postal Code Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>State</label> <input type="text"
										placeholder="Enter State Here.." class="form-control">
								</div>
							</div>

							<div class="col-sm-6 form-group">
								<div class="form-group">
									<label>Country</label> <input type="text"
										placeholder="Enter Country Here.." class="form-control">
								</div>
							</div>

							<button type="button" class="btn btn-info">Submit</button>
							<button type="button" class="btn btn-info">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	
	<%@include file="footer.jsp" %>


</body>
</html>