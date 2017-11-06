<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
button {
    background-color:#0000;
    padding: 14px 20px;
    cursor: pointer;
    border-radius: 15px;
 
    
}
.submitbtn {
    padding: 14px 20px;
    background-color:green;
    color:white;
    width:30%;
    margin-right:1%;
  
}
.submitbtn,.erasebtn {
	
    float: center;
   
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">

<div class="col-lg-8">
<div class="row">
<spr:form modelAttribute="user" action="saveRegister" method="post">
<div class="col-lg-8">
<h1> Customer Registration Form</h1>
<div class="form-group">
<label>First Name</label>
<spr:input path="firstname" placeholder="Enter first name" class="form-control"/>
</div>

<div class="form-group">
<label>Last Name</label>
<spr:input path="lastname" placeholder="Enter last name" class="form-control"/>
</div>

<div class="form-group">
<label>Email Id</label>
<spr:input path="email" placeholder="Enter Email Id" class="form-control"/>
</div>

<div class="form-group">
<label>Phone No</label>
<spr:input path="phone" placeholder="Enter phone number" class="form-control"/>
</div>
<div class="form-group">
<label>Password</label>
<spr:input type="password" path="password" placeholder="Enter password" class="form-control"/>
</div><div class="form-group">

<label>Address</label>
<spr:input path="address" placeholder="Enter Address" class="form-control"/>
</div>
<div class="form-group">
<label>Country</label>
<spr:input path="country" placeholder="Enter the country" class="form-control"/>
</div>

<button type="submit" class="submitbtn">Submit</button>
<button type="reset"  class="erasebtn">Reset</button>
</div>

</spr:form>
</div>
</div>
</div>
<div  style=width:100%;height:2px;margin-top:400px;background:black;></div>
 

</body>


</html>