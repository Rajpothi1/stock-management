<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" import="com.stock.impl.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Stock item</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
body {
	background: linear-gradient(lightblue, lightgreen);
}

.h1 {
	background-color: red;
	position: absolute;
	left: 10px;
	top: 10px;
	width: 100%;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	margin-top: 70px;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #111;
}

.active {
	background-color: #04AA6D;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 20px;
}
</style>
</head>
<body>


	<div class="h1">
		<center>
			<h1>STOCK INVENTORY MANAGEMENT</h1>
		</center>
	</div>
	<br>
	<ul>
        <li><a class="active" href="stockItemsusers.jsp">Stock Item</a></li>
        <li><a class="active" href="usercart.jsp"> My Cart</a></li>
     
         <li><a class="active" href="userview.jsp">My Profile</a></li>
        
      
         <li style="float: right;"><a class="active" href="index.jsp">Logout</a></li>
        <li style="float: right;"><a class="active" href="walletrecharge.jsp">Wallet</a></li>
        <li><a  class="active" href = "userpurchaselist.jsp">My order List</a></li>
           <li> <a  class="active"href = "userinvoice.jsp">  Invoice </a></li>
             <li><a class="active" href="#help">Help</a></li>
        <br><br>
      </ul>
      	<form action="searchitem.jsp" method="">
		Enter Product Name:<br> <input type="text" name="proname"
			id="proname"><br>
		<br>

		<button type="submit">search</button>
		</div>
	</form>

	<%
	StockImpl stock = new StockImpl();

	ResultSet rs = stock.showProduct();
	//(ResultSet)session.getAttribute("showProduct");
	%>

	<br>
	<table style="width: 80%; margin-left: 100px;">
		<tr>

			<th scope="col">ProductId</th>
			<th scope="col">ProductName</th>
			<th scope="col">ProductQuantity</th>
			<th scope="col">Price</th>
			<th scope="col">Choice</th>
		</tr>



		<%
		while (rs.next()) {
		%>
		<tr>

			<td><%=rs.getInt(1)%></td>
			<a><td><%=rs.getString(2)%></td>
				<td><%=rs.getInt(3)%></td>
				<td><%=rs.getDouble(4)%></td>

				<td><a href="product.jsp?pname=<%=rs.getString(2)%>"><button
							type="button" class="btn btn-primary">select</button></a></td>
		</tr>
		<%
		}
		%>

	</table>
</body>
</html>