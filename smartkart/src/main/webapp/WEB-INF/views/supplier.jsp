<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE> 
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>


<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="container" style=width:100%;float:left;margin-top:50px;margin-bottom:50px; align="center" >

<form action="AddSupplier" method="post">
<table  class="table" style=width:25%;margin:auto;>
	<tr>
		<h1 align="center">Supplier Module</h1>
	</tr>
	<tr>
		<td>Supplier ID</td>
		<td><input name="supplierId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><input class="form-control" type="text" name="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Description</td>
		<td><textarea class="form-control" type="text" name="supplierDes"></textarea></td>
	</tr>
	<tr>
		<td>Supplier Email</td>
		<td><input class="form-control" type="text" name="supplierEmail"/></td>
		
	</tr>
	<tr style="width:100%;">
		<td>
			
			<button style="width:100px;margin-left:60px;"  class="btn btn-success btn-outline" type="submit" class="submitbtn">Insert</button>
		</td>
		<td>
			<button style="width:50%;" class="btn btn-default btn-outline" type="reset" class="erasebtn">Erase</button>
	</td>
	</tr>

</table>
</form>
</div>
<table class="table" style=width:50%;margin:auto;>

    
    <thead class="blue-grey lighten-5"><tr bgcolor="black">
    <td style=color:white>Supplier Id</td>
	<td style=color:white>Supplier Name</td>
	<td style=color:white>Supplier Description</td>
	<td style=color:white>Supplier Email</td>
	<td style=color:white>operation</td>
</tr> 
</thead>
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="#EEEEEE">
	<td>${supplier.supplierId}</td>
	<td>${supplier.supplierName}</td>
	<td>${supplier.supplierDes}</td>
	<td>${supplier.supplierEmail}</td>
	<td>
	<a style=padding-left:10px; href="<c:url value="/updateSupplier/${supplier.supplierId}"/>"><i class="glyphicon glyphicon-edit"></i></a>
	<a style=padding-left:25px; href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"><i class="glyphicon glyphicon-trash"></i></a>
	
	</td>
	</tr>

</c:forEach>
</table>
 
  <div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
  
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>