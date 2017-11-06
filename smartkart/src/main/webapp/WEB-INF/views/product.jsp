<%@ page language="java" contentType="text/html" import="com.model.Product"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE> 
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Smartkart</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="container" style=width:100%;float:left;margin-top:50px;margin-bottom:50px; align="center" >

<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="post">
<table  class="table" style=width:25%;margin:auto;>
	<tr>
		<h1 align="center">Product Module</h1>
	</tr>
	<tr> 
		<td>Product ID</td>
		<td><form:input class="form-control" path="productId"/></td> 
	</tr>
	<tr> 
		<td>Product Name</td>
		<td><form:input class="form-control" path="productName"/></td>
	</tr>
	<tr>
		<td>Product Description</td>
		<td><form:input class="form-control" path="productDes"/></td>
	</tr>
	<tr>
		<td>Product Stock</td>
		<td><form:input class="form-control" path="stock"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input  class="form-control" path="price"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select  class="form-control" path="catId">
		<form:option value="0" label="---Select--"/>
		<form:options items="${categoryList}"/>
		</form:select>
		</td>
	
	</tr>
	
	<tr>
		<td>Supplier</td>
		
		<td><form:select class="form-control" path="supplierId">
		<form:option value="0" label="---select---"/>
		<form:options items="${supplierList}"/>
		</form:select>
		</td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input class="form-control" type="file" path="pimage"/></td>
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
</form:form>
</div>
<div  style=width:100%;height:2px;margin-top:650px;background:black;></div>

</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>