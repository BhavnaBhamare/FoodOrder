<%@page import="com.pojo.Addproduct"%>
<%@page import="com.pojo.Mainproduct" %>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
BLManager bl=new BLManager();
List<Mainproduct> l=bl.searchbylist();
session.setAttribute("list", l);
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Search Product</h4>
						<div class="content">
							 <form action="Updateproduct" method="post" > 
								<div class="row">
								<input type="hidden" name="id" value="${id }">

									<div class="col-md-8">
										<div class="form-group">
											<label>Sub menu name:</label> <input type="text" 
												class="form-control" name="name" 
												placeholder="name" value="${name}" >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Price:</label> <input type="text" 
												class="form-control" name="price" 
												placeholder="price" value="${price}" >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Image:</label> <input type="file" 
												class="form-control" name="image" 
												placeholder="image" value="${image}" >
										</div>
									</div>
									
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Select main product</label><select name="mname">
											<option>Select main product name</option>
											<c:forEach items="${sessionScope.list }" var="a">
											<option>${a.mname }</option>
											</c:forEach>
											</select>
										</div>
									</div>
									
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Quantity:</label> <input type="text" 
												class="form-control" name="Quentity" 
												placeholder="Quentity" value="${Quentity}" >
										</div>
									</div>
									
								
										
									
								
																
								<br>
								<br>
								<br>
								<br>
								
 								</div>
 								
								<button type="submit" class="btn btn-info btn-fill pull-right" >Save update</button>
								<div class="clearfix"></div>
								
								<!-- <h1 align="right"><a href="adminDashboard.jsp" style="font-size:50%; text-decoration: underline;">Back</a></h1>
								

 -->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
