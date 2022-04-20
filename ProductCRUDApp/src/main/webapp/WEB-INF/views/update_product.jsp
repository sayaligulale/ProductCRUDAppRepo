<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="${pageContext.request.contextPath}/handle-product" method="post">
					<input type="hidden" value="${product.id }" name="id" />
					<div class="form-group">
						<label for="name" class="form-label">Product Name</label> 
						<input type="text" class="form-control" name="name" placeholder="Enter the product Name" value="${product.name }"> 
					</div>
					<div class="form-group">
						<label for="description" class="form-label">Description</label> 
						<textarea rows="5" cols="5" class="form-control" name="description" placeholder="Enter the product Description">${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="price" class="form-label">Price</label> 
						<input type="text" class="form-control" name="price" placeholder="Enter the product Price" value="${product.price }">
					</div>
					<div class="container p-3 text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>