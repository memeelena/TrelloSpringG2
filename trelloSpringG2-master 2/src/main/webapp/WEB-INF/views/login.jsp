<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container mt-5">
		<h1>Login </h1>
		<hr>
		<div class="row">

			<div class="col-8">


<form:form action = "${pageContext.request.contextPath}/login" method="POST" modelAttribute="user">
					<form:hidden path="id"/>
					
					<div class="mb-3">
						<label for="email" class="form-label">Email</label>
						 <form:input path="email" class="form-control" type="email" />
					</div>
					
					<div class="mb-3">
					  <label for="password" class="form-label">Password </label>
					  	<form:input path="password" class="form-control" type="password"/>
					</div>
					
					
					<button type="submit" class="btn btn-success">Save</button>


				</form:form>


			</div>

		</div>


	</div>
		<jsp:include page="footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>