
<%@page import="com.pojo.Specialmenu" %>

<%@page import="com.model.BLManager" %>
<%@page import="java.util.List"%>

<%@include file="Customerheader.jsp" %>
<%
BLManager bl=new BLManager();
List<Specialmenu> s=bl.searchspecialmenu();
session.setAttribute("list", s);

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
	style="width: 150px; height: 140px;">
	<br>							
  <strong>Product Name: </strong>
  <b><c:out value="${a.sname}"></c:out></b>
  <br>
 <strong>Price: </strong>
	<b><c:out value="${a.sprice}"></c:out></b>
	<br>
	<a href="AddToCartServlet?id=${a.id}&action=Add to cart"><u>Add to cart</u></a>	
	
	
	</div>
		</div>																					
      </c:forEach>


  </div>
  
  
  </body>
  </html>

