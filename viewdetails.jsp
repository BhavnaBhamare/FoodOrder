

<%@include file="Customerheader.jsp"%>
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
    background-color:white;
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

@media (max-width: 900px) {
    .column {
        width: 100%;
    }
}
@media (max-width: 600px) {
    .column {
        width: 100%;
    }
}
</style>
</head>
<%
session.getAttribute("adid");
session.getAttribute("fname");
session.getAttribute("mobileno");
session.getAttribute("pincode");
session.getAttribute("apartment");
session.getAttribute("area");
session.getAttribute("city");
session.getAttribute("state");
session.getAttribute("dtype");

%>
<body style="background-image: url('images11/background1.jpg'); background-repeat: no-repeat;">

<div class="main">

<br>
<br>
<div class="column">
    
    
    <div class="content">
    <h3><font color="red"><b>Address Details</b></font> </h3>
    <br><br>
    
													<br><br>
  <strong>First  Name:</strong>
  <c:out value="${fname}"></c:out>
												<br><br>
  <strong>Mobile no:</strong>
  <c:out value="${mobileno}"></c:out>
												<br><br>
  <strong> pin-code:</strong>
  <c:out value="${pincode}"></c:out>
												<br><br>
  <strong>Apartment:</strong>
  <c:out value="${apartment}"></c:out>
												<br><br>
  <strong>Area:</strong>
  <c:out value="${area}"></c:out>
												<br><br>
 
 <strong> City:</strong>
  <c:out value="${city}"></c:out>
												<br><br>
  <strong>State:</strong>
  <c:out value="${state}"></c:out>
												<br><br>
  <strong>Delivery type:</strong>
  <c:out value="${dtype}"></c:out>
							
	
		</div>										<br><br>											
      


  </div>
  
  </div>
  </body>
  </html>
  