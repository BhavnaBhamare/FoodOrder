<%@page import="com.pojo.Offer"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="Customerheader.jsp" %>
<%
BLManager bl=new BLManager();
List<Offer> l=bl.searchoffer();
session.setAttribute("list", l);
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
   
    padding: 20px;
    font-family: Arial;
}
.main {
    max-width: 1000px;
    margin: auto;
}

h1,a {
    color:red;
    font-size: 20px;
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
<body>

<div class="main">


    
    <c:forEach items="${sessionScope.list }" var="a">
    <div class="column">
    <div class="content">
    
    <img alt="abc" src="menuimages/${a.image}"
	style="width: 170px; height: 120px;">											
  <strong>Product Name: </strong>
  <b><c:out value="${a.oname}"></c:out></b>
  <br>
  
 <strong>Original Price: </strong>
	<b><c:out value="${a.oprice}"></c:out></b>
	<br>
	
	<strong>Special Price: </strong>
	<b><c:out value="${a.sprice}"></c:out></b>
	<br>
	<label>Valid date</label>
	<br>
	<strong>From: </strong>
	<b><c:out value="${a.fromdate}"></c:out></b>
	<br>
	<strong>To: </strong>
	<b><c:out value="${a.todate}"></c:out></b>
	<br>
	<a href="AddToCartServlet?id=${a.oid}&action=Add to cart"><u>Add to cart</u></a>
	
	
	</div>
		</div>																					
      </c:forEach>


  </div>
  
  </div>
  </body>
  </html>

