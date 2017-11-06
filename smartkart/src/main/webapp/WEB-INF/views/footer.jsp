<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
a {
    color: #0f0f0f;
   
}
h5{
	text-decoration: underline;
}
p{
	
}
</style>
</head>
<body>

<div id="pop" style=width:100%;background:black;>
<div id="container" style=width:100%;float:left; align="center">
<div id="con" style=width:33%;float:left;>
<h5 align="right">SmartKart</h5>
<h6 align="right"><a href="${pageContext.request.contextPath}/"></a>Contact us</h6>
<h6 align="right"><a href="${pageContext.request.contextPath}/"/>About us</h6>
<h6 align="right"><a href="${pageContext.request.contextPath}/"/>Careers</h6>
</div>
<div id="conn" style=width:33%;background:white;float:left;>
<h5>Keep in Touch</h5>

<h6><a href="${pageContext.request.contextPath}/"/>facebook</h6>
<h6><a href="${pageContext.request.contextPath}/"/>twitter</h6>
<h6><a href="${pageContext.request.contextPath}/"/>Instagram</h6>
<h6><a href="${pageContext.request.contextPath}/"/> Email</h6>

</div>
<div id="don" style=width:33%;background:white;float:left;>
<h5 align="left">Help</h5>

<h6 align="left"><a href="${pageContext.request.contextPath}/"/>Payment</h6>
<h6 align="left"><a href="${pageContext.request.contextPath}/"/>Shipping</h6>
<h6 align="left"><a href="${pageContext.request.contextPath}/"/>Cancellation</h6>
<h6 align="left"><a href="${pageContext.request.contextPath}/"/>FAQ</h6>
</div>
</div>
</body>
</html>