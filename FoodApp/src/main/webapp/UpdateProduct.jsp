<%@page import="com.foodapp.entities.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product </title>
<%@ include file="AdminHomePage.jsp" %>
</head>
<body>
<div class ="container m-4 p-4">
       <% Product p = (Product)request.getAttribute("product"); %>
    <form  action="updateproduct">
      <div class="mb-3">
    <label for="name" class="form-label">Enter Name of Product</label>
    <input class="form-control"  value =<%=p.getName() %> id="name" name="name"/>
    </div>
     <div class="mb-3">
    <label for="id" class="form-label">Enter Name of Product</label>
    <input class="form-control"  type="hidden" value =<%=p.getId() %> id="id" name="id"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Type of Product</label>
    <input  class="form-control" value =<%=p.getType() %> id="exampleInputEmail1" name="type"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Cost of Product</label>
    <input   class="form-control" value =<%=p.getCost() %> id="exampleInputEmail1" name="cost"/>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Quantity of Product</label>
    <input class="form-control" value =<%=p.getQty() %> name="qty" id="exampleInputEmail1"/>
  </div>
 
  <button type="submit" class="btn btn-primary">Update</button>
 </form>
  </div> 

</body>
</html>