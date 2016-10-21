
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Supplier</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>

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
					style="max-width: 100px;margin-top:6px; height: 32px;" /></a>
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
			<li><a href="form">
						ADD PRODUCT</a></li>
			<li class="active"><a href="spform">
						SUPPLIER FORM</a></li>
			<li><a href="catform">
						CATEGORY FORM</a></li>
			
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
<div style="color: black; font-size: 30px">ADD SUPPLIER</div>
  <form:form id="registerForm" commandName="suppli" method="post"
   action="./addSupplier">
   <br>
   <table width="400px" height="100px">
   <tr>
                <td><label for="name">SUPPLIER NAME</label></td>             
                   <td> <form:input type="text" path="spname" id="supplierName"/></td>
                   </tr>
                   <tr>           
                <td><label for="name">SUPPLIER PLACE</label></td>              
                   <td> <form:input type="text" path="splace" id="supplierPlace"/></td>
                   </tr>
                   </table>
     <button type="submit">ADD</button>
  </form:form>
  <br>
  <a href="splist"><button type="button">CLICK HERE TO SEE SUPPLIER LIST</button></a>
  </center>
  </div>
<%@include file="footer.jsp"%>
</body>
</html>