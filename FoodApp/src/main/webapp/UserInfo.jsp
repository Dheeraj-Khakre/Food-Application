<%@page import="com.foodapp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Account</title>
<%@ include file="All_CSS_Script.jsp"%>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Food-App</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contact
							us</a></li>
					<li class="nav-item"><a class="nav-link " href="#"
						tabindex="-1" aria-disabled="true">Disabled</a></li>

				</ul>

			</div>
			<form class="d-flex" action="#">
				<input class="form-control me-2" type="search"
					placeholder="Search Food  Here" aria-label="Search">
				<button class="btn btn-outline-success text-white bg-success"
					type="submit" disabled="disabled">Search</button>
			</form>

		</div>
	</nav>
            <%User user = (User)request.getAttribute("user"); %>
	<div>
		<div class="card" style="width: 18rem;">
			<div class="card-header">Name : <%=user.getName() %></div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Email :  <%=user.getEmail() %></li>
				<li class="list-group-item">Mobile no : <%=user.getMobileNo() %></li>
				
			</ul>
			 <a href="#" class="btn btn-primary">Go to Order</a>
		</div>


	</div>


</body>
</html>