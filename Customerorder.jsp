<%@page import="com.pojo.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
BLManager bl=new BLManager();
List<Item> l=bl.searchcustomerorder();
session.setAttribute("list",l);
%> 

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    background-color:pink;
    padding: 20px;
    font-family: Arial;
}
.main {
    max-width: 1000px;
    margin: auto;
}

h1 {
    font-size: 50px;
    word-break: break-all;
    
}

.row {
    margin: 8px -16px;
}
.row,
.row > .column {
    padding: 8px;
}
.column {
    float: left;
    width:25%;
}
.row:after {
    content: "";
    display: table;
    clear: both;
}
.content {
    background-color:silver;
    padding: 50px;
}
@media (max-width: 900px) {
    .column {
        width: 50%;
    }
}
@media (max-width: 600px) {
    .column {
        width: 100%;
    }
}
</style>
</head>
<body style="background-image: url('foodee-master/images/slide_2.jpg');">

<div class="main">
<br>
<br>
<div class="column">
    
    <c:forEach items="${sessionScope.list }" var="a">
    <div class="content">
    
  <strong>Customer Name: </strong>
  <b><c:out value="${a.registration.fname}"></c:out></b>
  <br>												
 <strong>Menu: </strong>
	<b><c:out value="${a.addproduct.name}"></c:out></b>
	<br>
	
	 <strong>Price(per quantity): </strong>
	<b><c:out value="${a.addproduct.price}"></c:out></b>
	<br>
	 <strong>Quantity: </strong>
	<b><c:out value="${a.iquantity}"></c:out></b>
	<br>
	<input type="button" value="Confirm order"><br><br><input type="button" value="Delete order">
	
	
		</div>										<br>											
      </c:forEach>


  </div>
  
  </div>
  </body>
  </html>


								 
