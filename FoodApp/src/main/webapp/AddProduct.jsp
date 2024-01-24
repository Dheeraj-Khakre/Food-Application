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

    <form:form  action="saveproduct" modelAttribute="product">
      <div class="mb-3">
    <label for="name" class="form-label">Enter Name of Product</label>
    <form:input path="name" class="form-control" id="name"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Type of Product</label>
    <form:input path="type" class="form-control" id="exampleInputEmail1"/>
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Cost of Product</label>
    <form:input path="cost"  class="form-control" id="exampleInputEmail1"/>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Quantity of Product</label>
    <form:input path="qty"  class="form-control" id="exampleInputEmail1"/>
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
 </form:form>
   

</body>
</html>