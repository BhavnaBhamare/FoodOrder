<%@page import="com.pojo.Specialmenu"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>
<%
BLManager bl=new BLManager();
List<Specialmenu> l=bl.searchspecialmenu();
session.setAttribute("list",l);
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
                	<table border="5" id="example1" class="table table-bordered table-striped" >
                
			     <tr>       	      
		        <th>Id</th>
		        <th>Name</th>
		        <th>Image</th>
		        <th>Price</th>
		        <th>Quantity</th>
		        <th>Type</th>
		        <th>Edit menu</th>
		       </tr> 
		     
		    <c:forEach items="${sessionScope.list }" var="a">
		    <tr>
		     <td>${a.id }</td>
		     <td>${a.sname }</td>
		     <td><center>
															<img alt="abc" src="menuimages/${a.image}"
																style="width: 150px; height: 100px;">
														</center></td>
		    <td>${a.sprice }</td>
		    <td>${a.squantity }</td>
		    <td>${a.mainproduct.mname}</td>
		    <td><a href="Editspecialmenu?id=${a.id }">Edit</a></td>
		   </tr> 
		    </c:forEach>
		    
	</table>
										</div>
									</div>
								</div>
							</div>
						</body>
										  
		     
		     
		            