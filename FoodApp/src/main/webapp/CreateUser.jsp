<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
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

		</div>
	</nav>


<Div class ="container m-4 p-4">

   
      <form:form  action="saveuser" modelAttribute="user">
      <div class="mb-3">
    <label for="name" class="form-label">Enter Name</label>
    <form:input path="name" class="form-control" id="name"/>
    </div>
     <div class="mb-3">
    <label for="name" class="form-label">Enter Mobile Number</label>
    <form:input path="mobileNo" class="form-control" id="name"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <form:input path="email" class="form-control" id="exampleInputEmail1"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <form:input path="password" type="password" class="form-control" id="exampleInputEmail1"/>
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
 </form:form>

 

</Div>

</body>
</html>