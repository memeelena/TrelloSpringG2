<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>User list</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>

</head>
<body style >
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
		
		<h1 style = "font-family: 'Josefin Sans', sans-serif;">User list</h1>
		<hr/>
		
		<p>${NOTIFICATION}</p>
		
		<p>
			<a class = "btn btn-primary fa fa-plus" href="${pageContext.request.contextPath}/users/new"></a>
			<a class = "btn btn-danger fa fa-times" href="${pageContext.request.contextPath}/users/delete/all"></a>
			
		</p>
	
		<table class = "table table-striped table-bordered">
			
			<tr class = "thead-dark">
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Email</th> 
				<th>Password</th>
				<th>Actions</th>
			</tr>
			
			<c:forEach items="${users}" var="user">
			
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.age}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
				<%-- 	<td>
					
						<c:forEach items="${user.projects}" var="project">
							<span class="badge bg-info text-white">${project.name}</span>
						</c:forEach>

					</td>
					--%>
					<td> 
						<a class="btn btn-info fa fa-eye" href = "${pageContext.request.contextPath}/users/${user.id}/view"></a> 
						<a class="btn btn-success fa fa-pencil" href = "${pageContext.request.contextPath}/users/${user.id}/edit"></a> 
						<a class="btn btn-danger fa fa-trash" href = "${pageContext.request.contextPath}/users/${user.id}/delete"></a>
						 
					</td>
				</tr>
				
			</c:forEach>
			
		</table>
		
	</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>