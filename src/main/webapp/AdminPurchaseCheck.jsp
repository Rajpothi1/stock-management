   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.ResultSet"
 import ="com.stock.impl.*" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stock item</title>
  <style>
body {
      margin: 0;
      font-family: Arial;
      background:linear-gradient( to right,#8e9eab,#eef2f3);

    }

    .topnav {
      overflow: hidden;
      background-color: #333;
    }

    .topnav a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .active {
      background-color: #04AA6D;
      color: white;
    }

    .topnav .icon {
      display: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 17px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .topnav a:hover,
    .dropdown:hover .dropbtn {
      background-color: #555;
      color: white;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
      color: black;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    .topnav a.icon {
      float: right;
      display: block;
    }
    .h1
    {
    background-color:red;
    }
    table{
    margin-top:100px;
    margin-left:100px;}
</style>
</head>
<body>

    
    <div class="h1">
        <center><h1 >STOCK INVENTORY MANAGEMENT</h1></center>
    </div>
   
      <div class="topnav" id="myTopnav">
    <a href="invoice.jsp" >invoice</a>
   
     <a href="index.jsp" style=float:right>Logout</a>
    <a href="Admincart.jsp">Cart</a>
      <div class="dropdown">
      <button class="dropbtn" >Stock item
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="Additems.jsp">Add item</a>
        <a href="updateitem.jsp">Update item </a>
          <a href="deleteproduct.jsp">delete item </a>
       
      </div>
    </div>
    <a href = "AdminPurchaseCheck.jsp" style=float:right >Order Delivery Date</a>
    <a href="purchaseList.jsp">PURCHASELIST</a>
  
    </div>
      <%
      PuruchaseImpl pimpl=new  PuruchaseImpl();
      ResultSet rs=  pimpl.showPurchase();
          //(ResultSet)session.getAttribute("showProduct");
      %>
    <br>
     <table border=1; style="width:90%;margin-left:100px; border-collapse:collapse ">
          <tr>
            
            <th scope="col">order_id</th>
            <th scope="col">product_id</th>
            <th scope="col">user_id</th>
             <th scope="col">product_name</th>
            <th scope="col">product_quantity</th>
            <th scope="col">total_price</th>
            <th scope="col">status</th>
            <th scope="col">date</th>
              <th scope="col">Delivery</th>
            
          </tr>
       
       
       
         <% while(rs.next())
        { 
       
        %>
          <tr>
            
            <td><%=rs.getInt(1)%></td>
            <a><td><%=rs.getInt(2)%></td>
            <td><%=rs.getInt(3)%></td>
             <td><%=rs.getString(4) %></td>
              <td><%=rs.getInt(5)%></td>
            <td><%=rs.getDouble(6)%></td>
             <td><%=rs.getString(7)%></td>
            
            <td><%=rs.getDate(8)%></td>
              <td>
              
              
              
              <form action="invoice">
        Enter delivery no of days<input type="number" name="deliveryDate"   list ="deliverydate" autofocus required placeholder=" delivery no of days" min="1">
              <button type="submit">Submit
              </button>
              </form></td>
            
         	<% session.setAttribute("orderid",rs.getInt(1) );
         	session.setAttribute("users_id",rs.getInt(3) );
         	%>
           		
      
          </tr>
           <%} %>
     
      </table>
</body>
</html>