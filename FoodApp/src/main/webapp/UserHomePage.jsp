<%@page import="com.foodapp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index page</title>
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
			<form class="d-flex " action="userinfo">
			     <input type="hidden" name="id" value="<%=((User)request.getAttribute("user")).getId()%>">
				<button class="btn btn-outline-success text-white" type="submit">
					<%=((User)request.getAttribute("user")).getName()%></button>
			</form>
		</div>
	</nav>




	<div class="container m-4">

		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>

			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://source.unsplash.com/1200x400/?food"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>Some representative placeholder content for the first
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://source.unsplash.com/1200x400/?food,fastfood,forundises "
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://source.unsplash.com/1200x400/?food,fastfood,south india "
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>third slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>


			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<div class="container m-4 p-4">

		<div class="row row-cols-1 row-cols-md-2 g-4">
			<div class="col">
				<div class="card  m-4 p-4">
					<img src="https://source.unsplash.com/400x200/?food"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a longer card with supporting
							text below as a natural lead-in to additional content. This
							content is a little bit longer.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card  m-4 p-4">
					<img src="https://source.unsplash.com/400x200/?food,chinies"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a longer card with supporting
							text below as a natural lead-in to additional content. This
							content is a little bit longer.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card  m-4 p-4">
					<img src="https://source.unsplash.com/400x200/?pepsi"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a longer card with supporting
							text below as a natural lead-in to additional content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card  m-4 p-4">
					<img src="https://source.unsplash.com/400x200/?piza,food"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a longer card with supporting
							text below as a natural lead-in to additional content. This
							content is a little bit longer.</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container m-4 p-4">



		<div class="card-group">
			<div class="card m-4 p-4">
				<img src="https://source.unsplash.com/400x200/?piza,food,burgur"
					class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card m-4 p-4">
				<img src="https://source.unsplash.com/400x200/?piza,food,meat"
					class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This card has supporting text below as a
						natural lead-in to additional content.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card m-4 p-4">
				<img src="https://source.unsplash.com/400x200/?piza,starbur,food"
					class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This card has
						even longer content than the first to show that equal height
						action.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>

	</div>

</body>
</html>