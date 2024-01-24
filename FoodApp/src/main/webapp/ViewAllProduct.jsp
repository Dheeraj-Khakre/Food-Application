<%@page import="java.util.ArrayList"%>
<%@page import="com.foodapp.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View  All  Product</title>
<%@ include file="AdminHomePage.jsp" %>
</head>
<body>

    <div class="mx-auto" style="width: 200px;">
              <h3>Product  Table</h3>
</div>


  <nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search Produt  here" aria-label="Search">
      <button class="btn btn-outline-success text-white bg-success" type="submit">Search </button>
    </form>
  </div>
</nav>


      

     <table class="table table-dark table-striped mb-4">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col"> Product Name</th>
      <th scope="col">Product Type</th>
      <th scope="col">Cost Of Product</th>
       <th scope="col">Quantity</th>
      
    </tr>
  </thead>
  <tbody>
   
    
     <%    
         List<Product> products  = (ArrayList)request.getAttribute("products");
         for(Product p:products){
     %>
     <tr>
   
       <th ><%=p.getId() %></th>
      <td><%=p.getName() %></td>
      <td><%=p.getType() %></td>
      <td><%=p.getCost() %></td>
      <td><%=p.getQty() %></td>
    </tr>
    <%} %>
  </tbody>
</table>

</body>
</html>