<%@include file="Customerheader.jsp"%>
<%@page import="com.pojo.Addressdetails" %>
<%@page import="com.model.BLManager"%>

<%
session.getAttribute("adid");
session.getAttribute("fname");
session.getAttribute("mobileno");
session.getAttribute("apartment");
session.getAttribute("area");
session.getAttribute("pincode");
session.getAttribute("city");
session.getAttribute("state");
%>

<body style="background-image: url('foodee-master/images/place.jpg');">
<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8">
				<div class="card">
					<div class="header">
						<h4 class="title"><b>Edit Address Details</b></h4>
						<div class="content">
							 <form action="editaddressdetails" method="post"> 
								<div class="row">
								<input type="hidden" name="adid" value="${adid }">

									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Name:</b></label> <input type="text" 
												class="form-control" name="fname" 
												placeholder="fname" value="${fname}"  >
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Mobile no:</b></label> <input type="text" 
												class="form-control" name="mobileno" 
												placeholder="mobileno" value="${mobileno}"  >
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Flat,Houseno,Building,Company,Apartment:</b></label> <input type="text" 
												class="form-control" name="apartment" 
												placeholder="apartment" value="${apartment}"  >
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Area,Colony,Street,Sector,Village:</b></label> <input type="text" 
												class="form-control" name="area" 
												placeholder="area" value="${area}"  >
										</div>
									</div>
									
										<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Pincode:</b></label> <input type="text" 
												class="form-control" name="pincode" 
												placeholder="pincode" value="${pincode}"  >
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Town/City:</b></label> <input type="text" 
												class="form-control" name="city" 
												placeholder="city" value="${city}"  >
										</div>
									</div>
									
									<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>State:</b></label> <input type="text" 
												class="form-control" name="state" 
												placeholder="state" value="${ state}"  >
										</div>
									</div>
									
										<div class="col-md-7">
										<div class="form-group">
		                                    <label><b>Delivery type:</b></label> <input type="text" 
												class="form-control" name="dtype" 
												placeholder="dtype" value="Delivery"  >
										</div>
									</div>
									
									</div>
									
									<button type="submit" class="btn btn-info btn-fill pull-right/editadminprofile.jsp" >Edit Special menu</button>
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
</body>
								