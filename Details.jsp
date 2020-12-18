<%@include file="Customerheader.jsp"%>

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title"><b></b></h4>
						<div class="content">
							 <form action="" method="post"> 
								<div class="row">

                                        <div class="col-md-7">
										<div class="form-group">
											<label><b>Amount:</b></label> <input type="text" 
												class="form-control" name="amount" 
												placeholder="amount" value="${amount}" >
										</div>
									</div>
									<br>
									     <div class="col-md-7">
										<div class="form-group">
											<label><b>Email:</b></label> <input type="text" 
												class="form-control" name="email" 
												placeholder="email" value="${email}" >
										</div>
									</div>
								
								<div class="col-md-7">
										<div class="form-group">
											<label><b>First Name:</b></label> <input type="text" 
												class="form-control" name="frname" 
												placeholder="frname" value="${frname}" >
										</div>
									</div>
									<br>
									     <div class="col-md-7">
										<div class="form-group">
											<label><b>Phone number:</b></label> <input type="text" 
												class="form-control" name="phno" 
												placeholder="phno" value="${phno}" >
										</div>
									</div>
								
								  
								
								
								
								
								</div>
								 <button type="submit" class="btn btn-info btn-fill pull-right/editadminprofile.jsp" >Save Details</button>
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