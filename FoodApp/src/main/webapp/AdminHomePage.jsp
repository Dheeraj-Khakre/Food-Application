<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>
<%@ include file="All_CSS_Script.jsp"%>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Admin Home Page </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="viewallusers">View All Users</a></li>
					<li class="nav-item"><a class="nav-link" href="#"></a>
					</li>
					<li class="nav-item"><a class="nav-link active" href="viewallfoodorder">View All Food Order</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Product
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="addproduct">Add Product</a></li>
							<li><a class="dropdown-item" href="viewallproduct">View All Product</a></li>
							<li><a class="dropdown-item" href="#">View Product by Id</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>