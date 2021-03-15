<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User creation/modification</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
			<h2 style = "font-family: 'Josefin Sans', sans-serif;">User ID: ${user.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
			
			
			
				<form:form action = "${pageContext.request.contextPath}/users" method="POST" modelAttribute="user">
					<div class="form-group">
						<label for="firstName"><b>Name</b></label>
						<form:input path="firstName" class="form-control" />
					</div>
					<div class="form-group">
						<label for="lastName"><b>Last Name</b></label>
						<form:textarea path="lastName" class="form-control" />
					</div>
					<div class="form-group">
						<label for="age"><b>Age</b></label>
						<form:input type="number" path="age" class="form-control" />
					</div>
					<div class="form-group">
						<label for="email"><b>Email</b></label>
						<form:input path="email" class="form-control" type="email" />
					</div>
					<div class="form-group">
						<label for="password"><b>Password</b></label>
						<form:input path="password" class="form-control" type="password"/>
					</div>

				
				<form:hidden path="id"/>
				
			<%-- 	<button class = "btn btn-success btn-lg" type = "submit" >Save</button> back to user list --%>
				<button class = "btn btn-success btn-lg fa fa-floppy-o" type = "submit" ></button> <%-- Save user and redirect to project-edit --%>

				</form:form>
			
			
			

			
			
		
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>