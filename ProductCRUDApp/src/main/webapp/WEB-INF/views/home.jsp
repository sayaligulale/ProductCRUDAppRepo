<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
			<h1 class="text-center">Welcome to Product App</h1>
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td>${p.price}</td>
								<td>
								<a href="add-product"><i class="fa-solid fa-plus" style="font-size: 20px"></i> </a>
								<a href="update/${p.id}"><i class="fa-solid fa-pen-nib text-primary" style="font-size: 20px"></i> </a>
								<a href="delete/${p.id}"><i class="fa-solid fa-trash-can text-danger" style="font-size: 20px"></i></a></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>