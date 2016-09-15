<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PetsWorld</title>

    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet">
    <script src="D:\pets\PetsWorld\src\main\webapp\resources\js\jquery-2.2.3.min.js"></script>
    <script src="D:\pets\PetsWorld\src\main\webapp\resources\js\bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
</head>
     
    <body style="background-color:powderblue;">
    
 
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">PETS WORLD</a>
</div>
   
<ul class="nav navbar-nav">
    <li><a href="<c:url value='views/home.jsp'/>"/><span class="glyphicon glyphicon-home"></span>HOME</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
  <ul class="dropdown-menu">
    <li><a href="#">Dogs and Puppies</a></li>
    <li><a href="#">Cats and Kittens</a></li>
    <li><a href="#">Pegions</a></li>
  </ul>       
    <li><a href="about.jsp">ABOUT US</a></li> 
  
</ul>

<ul class="nav navbar-nav navbar-right">
    <li><a href="D:\pets\PetsWorld\src\main\webapp\WEB-INF\views\login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    <li class="active"><a href="D:\pets\PetsWorld\src\main\webapp\WEB-INF\views\signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    
</ul>
</div>
</nav>


<body>

<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				
<form>
     <div class="col-sm-12">
	<div class="form-group">
     <label>Full Name</label>
     <input type="text" placeholder="Enter Full Name Here.." class="form-control">
	</div>	
     
     <div class="row">
     <div class="col-sm-6 form-group">				
        <div class="form-group">
     <label>User Name</label>
     <input type="text" placeholder="Enter User Name Here.." class="form-control">
	</div>
     </div>
							
     <div class="col-sm-6 form-group">
        <div class="form-group">
     <label>Password</label>
     <input type="text" placeholder="Enter Password Here.." class="form-control">
        </div>
     </div>					
	 
     <div class="col-sm-6 form-group">				
        <div class="form-group">
     <label>Email ID</label>
     <input type="text" placeholder="Enter Email ID Here.." class="form-control">
	</div>
     </div>
   							
     <div class="col-sm-6 form-group">
        <div class="form-group">
     <label>Contact</label>
     <input type="text" placeholder="Enter Contact Here.." class="form-control">
        </div>
     </div>
	
     <div class="col-sm-12">			
        <div class="form-group">
     <label>Address</label>
     <textarea placeholder="Enter Address Here.." rows="2" class="form-control"></textarea>
         </div>	
     </div>

     
     <div class="col-sm-6 form-group">				
        <div class="form-group">
     <label>Country</label>
     <input type="text" placeholder="Enter Country Here.." class="form-control">
	</div>
     </div>
							
     <div class="col-sm-6 form-group">
        <div class="form-group">
     <label>State</label>
     <input type="text" placeholder="Enter State Here.." class="form-control">
        </div>
     </div>					
	 
     <div class="col-sm-6 form-group">				
        <div class="form-group">
     <label>City</label>
     <input type="text" placeholder="Enter city Here.." class="form-control">
	</div>
     </div>
   							
     <div class="col-sm-6 form-group">
        <div class="form-group">
     <label>Postal Code</label>
     <input type="text" placeholder="Enter Postal Code.." class="form-control">
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


</body>
</html>