<%@page import="com.foodapp.entities.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foodapp.entities.FoodOrder"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View  All   Food Order</title>
<%@ include file="AdminHomePage.jsp" %>
</head>
<body>

    <div class="mx-auto" style="width: 300px;">
              <h3>Food Order Table</h3>
</div>


  <nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search Food Order Here" aria-label="Search">
      <button class="btn btn-outline-success text-white bg-success" type="submit">Search </button>
    </form>
  </div>
</nav>


      

     <table class="table table-dark table-striped mb-4">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">  Name</th>
      <th scope="col">Mobile Number</th>
      <th scope="col"> list of Item </th>
       <th scope="col"> Total Bill </th>
    </tr>
  </thead>
  <tbody>
   
   
   <%   List<FoodOrder> fos = (ArrayList)request.getAttribute("foodOrders");
    for(FoodOrder f:fos){
    %>
    <tr>
      <th ><%=f.getId() %></th>
      <td><%=f.getName() %></td>
      <td><%=f.getMobileNo() %></td>
      
     <!-- this is item table be pandding to creation .. --> 
      <td>   
      
      <%  for(Item i:f.getItems()   ){ %> 
            <ol>
               <li><%=i.getName() %>  </li>
            
            </ol>
            <%} %>
      
      </td>
      
      
      <td> <%=f.getTotalBill() %></td>
    </tr>
   <%} %>
  </tbody>
</table>


</body>
</html>