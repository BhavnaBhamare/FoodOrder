<%@page import="com.pojo.Specialmenu"%>
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

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Order List </h4>
						<div class="content">
							 
								<div class="row">
				
						
						<table border="5" id="example1" class="table table-bordered table-striped" >
						<tr>
						 <th>Name</th>
						 <th>Menu name</th>
						 <th>Date</th>
						 <th>Total</th>
					     <th>Type</th>
					     <th>status</th>
					     <th>Action</th>
			          </tr>
			          <c:forEach items="${sessionScope.list }" var="a">
			          <tr>
			           <td>${a.registration.fname }</td>
			           <td>${a.addproduct.name }</td>
			          
			          </tr> 
			          
			          </c:forEach>
			          
			          
			          
			          </table>
			         </div>
			        </div>
			       </div>
			      </div>
			      </div>
			      </div>
			      </div>
			      </div>
			          