<%@page import="com.pojo.Booktable"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
BLManager bl=new BLManager();
List<Booktable> l=bl.searchbooking();
session.setAttribute("list",l);
%>


<body style="background-image: url('foodee-master/images/place.jpg');">
<div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">							 
              <table border="5"  class="table table-bordered table-striped">
                                       <tr>
                                         <th>Id</th>
                                         <th>Customer name</th>
                                          <th>Customer emailid</th>
                                          <th>Customer mobileno</th>
                                          <th>Booking date</th>
                                          <th>From time</th>
                                          <th>To time</th>
                                           <th>Table name</th>
                                          </tr>
                     
                                 <c:forEach items="${sessionScope.list }" var="a">
                                    <tr>
                                       <td>${a.tableid }</td>
                                        <td>${a. registration.fname}</td>
                                         <td>${a.registration.emailid}</td>
                                          <td>${a.registration.mobileno}</td>
                                             <td>${a.bookingdate }</td>
                                             <td>${a.fromtime }</td>
                                             <td>${a.tofrom }</td>
                                               <td>${a.tablename }</td>
                                          </tr> 
                                        </c:forEach>
         
                    </table>
                   </div>
                  </div>
                 </div>
                </div>
               </body>
                        
                    
         
			