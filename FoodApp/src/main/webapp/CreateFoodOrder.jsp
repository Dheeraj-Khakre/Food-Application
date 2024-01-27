<%@page import="com.foodapp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Food Order</title>
 <%@ include file="All_CSS_Script.jsp"%> 
</head>
<body>
    <header>
		<div class="hblock">
			<div class="hblock1">
				<a class="logo" href=""><img
					src="https://th.bing.com/th/id/OIP.fZ3hKqoUZR2oVxUMxfh4RQHaEK?w=297&h=180&c=7&r=0&o=5&pid=1.7"
					class="logo"></a>
				<div class="hblock1">
					<input type="search" placeholder="Enter your location" /> <img
						id="s"
						src="https://th.bing.com/th?q=Food+Logo+HD&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247">
				</div>
				<% User u = (User)session.getAttribute("user"); %>

			</div>
			<ul class="hblock2">
			<li class="hitem"><a class ="order" href="orderfood?id=<%=u.getId() %>">Order Food</a></li>
				<li class="hitem"><a class ="order" href="">Search</a></li>
				 

				<li class="hitem"><a class ="order" href="">Offers</a></li>
				<li class="hitem"><a  class ="order"href="">Help</a></li>
				<li class="hitem"><a  class ="order" href="">Cart</a></li>
			
				<li class="hitem"><a  class ="order" id="username" href="userinfo?id=<%= u.getId() %>"> <%= u.getName() %></a></li>
				
				
			</ul>
		</div>
	</header>


     <form:form  action="savefoodorder" modelAttribute="foodOrder">
      <div class="mb-3">
    <label for="name" class="form-label">Enter Name </label>
    <form:input path="name" class="form-control" id="name"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Mobile Number</label>
    <form:input path="mobileNo" class="form-control" id="exampleInputEmail1"/>
    </div>
 
 
  <button type="submit" class="btn btn-primary">Submit</button>
 </form:form>









	<div class="bpart">
		<h3>For better experience download our app</h3>
		<div id="bpartimage">
			<a href=""><img
				src="https://th.bing.com/th?id=OIP.o8Sw2mQtlVwcMk40MimrAQHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"
				alt=""></a> <a href=""><img
				src="https://th.bing.com/th/id/OIP.fZ3hKqoUZR2oVxUMxfh4RQHaEK?w=297&h=180&c=7&r=0&o=5&pid=1.7"
				alt=""></a>
		</div>

	</div>
	<footer>
		<div class="row">
			<div class="col">
				<a class="logo" href=""><img
					src="https://www.bing.com/images/search?view=detailV2&ccid=r4Hi50oE&id=7DBC84F1C07BEB5716C0B2E3099B13068E5C1507&thid=OIP.r4Hi50oE4H7Bhswqj3pbnQHaEy&mediaurl=https%3a%2f%2flogodix.com%2flogo%2f94501.jpg&exph=817&expw=1262&q=food+lofgo&simid=607989231691982562&FORM=IRPRST&ck=C92FBCF12661363C230A901D8A4E4B2F&selectedIndex=10&itb=0"
					class="logo"></a>
				<p>
					© 2023 Abcd Technologies <br>Pvt. Ltd
				</p>
			</div>
			<div class="col">
				<h3>Office</h3>
				<p>Marathahali</p>
				<p>Bangalore</p>
				<p>India</p>
				<p>560037</p>
				<p class="email">ksbfjbs@gzkjbb.com</p>
				<h4>+91-7438877233</h4>

			</div>
			<div class="col">
				<h3>Links</h3>

				<p>
					<a class="fitem" href="">Home</a>
				</p>
				<p>
					<a class="fitem" href="">Services</a>
				</p>
				<p>
					<a class="fitem" href="">Career</a>
				</p>
				<p>
					<a class="fitem" href="">About us</a>
				</p>
				<p>
					<a class="fitem" href="">Help</a>
				</p>

			</div>
			<div class="col">
				<h3>Mail us</h3>
				<form action="">

					<input id="em" type="email" placeholder="Enter your email Id"
						required>
					<button type="submit" value="submit"></button>
				</form>
			</div>

		</div>
	</footer>



</body>
</html>