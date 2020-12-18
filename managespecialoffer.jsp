<%@page import="com.pojo.Offer"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>
<%
BLManager bl=new BLManager();
List<Offer> l=bl.searchoffer();
session.setAttribute("list",l);
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
                <table border="8" id="example1" class="table table-bordered table-striped" >
                	<h4><center>Spacial offer</center></h4>
						<tr>
						 <th>Product name</th>
						 <th>Image</th>
						 <th>Valid date</th>
						 <th>Special price</th>
						 <th>Update offer</th>
						 <th>Delete</th>
						</tr>
						 
					<c:forEach items="${sessionScope.list }" var="a">
					<tr>
					 <td>${a.oname }</td>
					 <td><center>
					    <img alt="abc" src="menuimages/${a.image}"
												style="width: 150px; height: 100px;">
						</center></td>
					<td>${a.todate }</td>
					
					<td>${a.sprice }</td>
					<td><a href="Updatespecialoffer?oid=${a.oid }">Update</a></td>
		
					<td><a href="Deletespecialoffer?oid=${a.oid }">Delete</a>
				</tr>		
					</c:forEach>	
					</table>
										</div>
									</div>
								</div>
							</div>
						</body>
										
					 
		