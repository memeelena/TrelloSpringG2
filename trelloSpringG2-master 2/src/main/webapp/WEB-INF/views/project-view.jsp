<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project view</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
			<h2 style = "font-family: 'Josefin Sans', sans-serif;">Project ID: ${project.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8 mb-5">
					<p><b>Name</b>: ${project.name}</p>
					<p><b>Description</b>: ${project.description}</p>
					
					
					
					<p><b>Assigned Users:</b></p>
					
					<ul>
						<c:forEach items="${project.users}" var="user">
							<li> <a href="${pageContext.request.contextPath}/users/${user.id}/view">${user.firstName}</a> </li>
						</c:forEach>
					</ul>
					
					
					
					<p><b>Assigned Tasks:</b></p>
					
					<ul>
						<c:forEach items="${project.tasks}" var="task">
							<li> <a href="${pageContext.request.contextPath}/tasks/${task.id}/view">${task.title}</a> </li>
						</c:forEach>
					</ul>
					
					<div class="mt-5">
			<a class="btn btn-info fa fa-arrow-left" href = "${pageContext.request.contextPath}/projects"></a> 
			<a class="btn btn-success fa fa-pencil" href = "${pageContext.request.contextPath}/projects/${project.id}/edit"></a> 
			<a class="btn btn-danger fa fa-trash" href = "${pageContext.request.contextPath}/projects/${project.id}/delete"></a>

			
			</div>
			</div>

		</div>
	</div>
	
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>