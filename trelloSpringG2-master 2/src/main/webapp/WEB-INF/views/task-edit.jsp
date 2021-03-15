<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task creation/modification</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
			<h2 style = "font-family: 'Josefin Sans', sans-serif;">Task ID: ${task.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
			
			
			
				<form:form action = "${pageContext.request.contextPath}/tasks" method="POST" modelAttribute="task">
					<div class="form-group">
						<label for="title"><b>Title</b></label>
						<form:input path="title" class="form-control" />
					</div>
					<div class="form-group">
						<label for="description"><b>Description</b></label>
						<form:textarea path="description" class="form-control" />
					</div>

<!-- 					selector una opción -->
					<div class="form-group">
						<label for="project"><b>Project</b></label>
						<form:select class="form-select form-select-lg mb-3" path="project" items="${projects}" itemLabel="name" itemValue="id"></form:select>
					</div>
<!-- 					Selectores múltiples-->
					<div class="form-group">
					<%-- 	<label for="users">User list</label>
<c:forEach items="${users}" var="user" varStatus="loop">
<div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input"
        id="${user.firstName}" name="${user.firstName}"> <label
        class="custom-control-label" for="${user.firstName}">${user.firstName}</label>
</div>

</c:forEach>
						
					</div> --%>
					<div class="form-group">
						<label for="tags"><b>Tag list</b></label>
						<form:select class="form-select form-select-lg mb-3" path="tags" items="${tags}" itemLabel="name" itemValue="id"></form:select>
					</div>

				
				<form:hidden path="id"/>
				
				<button class = "btn btn-success btn-lg fa fa-floppy-o" type = "submit" ></button>
				
				</form:form>
			
			
			

			
			
		
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>