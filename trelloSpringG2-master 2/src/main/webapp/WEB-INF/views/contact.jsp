<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body style = "background-color:#D3F2FF
">
		<jsp:include page="navbar.jsp"></jsp:include>
		<br><br>
		
		<div class="container">
		
		<div class="row">
		
		<div class="col-3">
		
		</div>
		
		<div class="col-6">
		<h4 style = "font-family: 'Josefin Sans', sans-serif;"><b>If want to contact with us, feel free to send a message here.</b></h4>
		<div style ="text-align: left; " >
	<form>
	 <div class="mb-6 mt-5">
	
	  <label for="name"><b>Name:</b></label><br>
	  <input type="text" ><br><br>
	  </div>
	   <div class="mb-3">
	  
	  <label for="email"><b>Email:</b></label><br>
	  <input type="email"><br><br>
	  </div>
	  
	  <label for="message"><b>Message:</b></label><br>
	</form>
	  <textarea rows="4" cols="50" name="comment" form="usrform">
	  
	  </textarea><br>
	  	  <input type="submit" value="Submit" style = "background-color:#008cba; color:white">
	  </div>
	  	  
	  	  </div>
	  	<div class="col-3">
	  	</div>
            </div>
	  </div>
	  	  


	  


		
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>