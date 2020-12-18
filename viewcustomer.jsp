<%@page import="com.pojo.Registration"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@ include file="adminHeader2.jsp"%>
<%
BLManager bl=new BLManager();
List<Registration> l=bl.searchregi();
session.setAttribute("list", l);
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
					<table border="5"  class="table table-bordered table-striped">
					<tr>
					<th>Id</th>
					 <th>First Name</th>
					 <th>Last Name</th>
				
					 <th>Email id</th>
					 <th>User Name</th>
					 <th>Address</th>
					 <th>Mobile no</th>
					 </tr>
					 
					<c:forEach items="${sessionScope.list }" var="a">
					<tr>
					 <td>${a.id }</td>
					 <td>${a.fname }</td>
					 <td>${a.lname }</td>
					 <td>${a.emailid }</td>								
					 <td>${a.username }</td>
					 <td>${a.address }</td>
					 <td>${a.mobileno }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
					
					 
					 
		
	
	
					
					
				
					
					
					
					
					
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			