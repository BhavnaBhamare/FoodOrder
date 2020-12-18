
<style>
.dropbtn {
    background-color:black;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}


.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: black;}
</style>
<%@include file="Customerheader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
session.getAttribute("fname");
session.getAttribute("mobileno");
session.getAttribute("pincode");
session.getAttribute("apartment");
session.getAttribute("area");
session.getAttribute("city");
session.getAttribute("state");
%>

<div class="row mt">
          <div class="col-lg-8">
           
            <div class="form-panel">
              <div class="form">
   						
								<center>
									<br>
									<h4><b><font color="light blue">Fill the below details..!</font></b></h4>
									<br>
									 <button class="dropbtn"><a href="Addressfordelivery.jsp">Address Details</a></button>
									 <br>
									 <br>
									  <button class="dropbtn"><a href="orderstatus.jsp"> Order Details</a></button>
									
									<br>
									<br>
									<div class="dropdown">
                                            <button class="dropbtn">Select payment method</button>
                                            <div class="dropdown-content">
                                            <a href="orderconfirm.jsp">Cash on delivery</a>
                                             <a href="Onlinepay2.jsp">Debit card</a>
                                              <a href="Onlinepay2.jsp">Credit card</a>
                                                 </div>
                                             </div>
                                             </center>
                                    </div>
                  </div>
                  </div>
                  </div>
                  