<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Update Your Details</title>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles/bootstrap.min.css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
		style="margin-bottom:90px;"> <a class="navbar-brand" href="#">Vehicle
		Reservation System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="create.jsp">Create</a></li>
			<li class="nav-item"><a class="nav-link" href="search.jsp">Search</a></li>
			<li class="nav-item"><a class="nav-link" href="updateVehicle.jsp">Update</a></li>
		</ul>
	</div>
	<form:form action="#">
		<button type="submit" class="btn btn-outline-secondary">Logout</button>
	</form:form>
	</nav>
	<div class="container">

		<h2>Update Your Details</h2>
		<form:form action="/editEmployee" class="needs-validation" novalidate>
			<div class="form-group">
				<form:label path="adminId">Employee Id:</form:label> <form:input type="text"
					maxlength="6" class="form-control" path="adminId" placeholder="Your Id"
					required>
			</div>
			<div class="form-group">
				<form:label path="firstName">First Name:</form:label> <form:input type="text"
					class="form-control" path="firstName" placeholder="Your first name"
					required>
			</div>
			<div class="form-group">
				<form:label path="lastName">Last Name:</form:label> <form:input type="text"
					class="form-control" path="lastName" placeholder="Your last name"
					required>
			</div>
			<div class="form-group">
				<form:label path="age">Age:</form:label> <form:input type="text"
					class="form-control" path="age" placeholder="Your Age" 
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="gender">Gender:</form:label> <form:input type="text"
					class="form-control" path="gender" placeholder="Your Gender" 
					required>
			</div>
			<div class="form-group">
				<form:label path="contactNumber">Contact Number:</form:label> <form:input type="text"
					class="form-control" path="contactNumber" placeholder="Your Contact Number"
					 required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="emailId">Email Id:</form:label> <form:input type="text"
					class="form-control" id="emailId" placeholder="Your Email Id"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="password">Password:</form:label> <form:input type="text"
					class="form-control" path="password" placeholder="Your Password"
					 required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<form:label path="branch">Branch:</form:label> <form:input type="text"
					class="form-control" path="branch" placeholder="Enter Branch"
					 required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<button type="submit" class="btn btn-primary">Update</button>
		</form:form>
	</div>

	<script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Get the forms we want to add validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

</body>
</html>
​
