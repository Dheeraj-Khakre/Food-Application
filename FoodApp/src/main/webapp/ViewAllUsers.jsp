<%@page import="java.util.ArrayList"%>
<%@page import="com.foodapp.entities.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View  All  Users</title>
<%@ include file="AdminHomePage.jsp" %>
</head>
<body>

    <div class="mx-auto" style="width: 200px;">
              <h3>User Table</h3>
</div>


  <nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search user here" aria-label="Search">
      <button class="btn btn-outline-success text-white bg-success" type="submit">Search </button>
    </form>
  </div>
</nav>


      

     <table class="table table-dark table-striped mb-4">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col"> user Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile Number</th>
    </tr>
  </thead>
  <tbody>
    <%   List<User> users = (ArrayList)request.getAttribute("users");
    for(User u:users){
    %>
    <tr>
      <th ><%=u.getId() %></th>
      <td><%=u.getName() %></td>
      <td><%=u.getEmail() %></td>
      <td><%=u.getMobileNo() %></td>
    </tr>
   <%} %>
  
  </tbody>
</table>

</body>
</html>