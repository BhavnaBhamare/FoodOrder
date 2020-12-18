<%@include file="Customerheader.jsp"%>
<style>
#con_err {
	color: red;
}
</style>
<script type="text/javascript">
	function valid_pincode() {
		var name = document.registration_form.pin.value;
		if (name == '') {
			document.getElementById('con_err').innerHTML = '*Please enter your contact number';

			document.registration_form.pin.focus();
			return false;
		} else {
			document.getElementById('con_err').innerHTML = '';
		}
		var txt = /^(\+\d{1,3}[- ]?)?\d{10}$/;
		if (document.registration_form.pin.value.match(txt)) {
			document.getElementById('con_err').innerHTML = '';
		} else {
			document.getElementById('con_err').innerHTML = 'Please enter your correct contact number';
			document.registration_form.pin.focus();
			return false;
		}
	}
</script>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Address details</h4>
						<div class="content">
							<form action="addressdetailsservlet" method="post">
								<div class="row">
									<input type="hidden" name="id" value="${id }">

									<div class="col-md-8">
										<div class="form-group">
											<label>Full name:</label> <input type="text"
												class="form-control" name="fname" placeholder="fname"
												value="${fname}">
										</div>
									</div>

									<div class="col-md-5">
										<div class="form-group">
											<label>Mobile no:</label> <input type="text"
												class="form-control" name="mobileno" placeholder="mobileno"
												value="${mobileno}">
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group">
											<label>Flat,Houseno,Building,Company,Apartment:</label> <input
												type="text" class="form-control" name="apartment"
												placeholder="apartment" value="${apartment}">
										</div>
									</div>
									
									<div class="col-md-5">
										<div class="form-group">
											<label>Area,Colony,Street,Sector,Village:</label> <input
												type="text" class="form-control" name="area"
												placeholder="area" value="${area}">
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group">
											<label>Pincode:</label> <input type="text"
												class="form-control" name="pincode" placeholder="pincode"
												value="${pincode}" onBlur="return valid_pincode()" id="pin">
											<label id="con_err"></label><br>
										</div>
									</div>
									

									<div class="col-md-5">
										<div class="form-group">
											<label>Town/City:</label> <input type="text"
												class="form-control" name="city" placeholder="city"
												value="${city}">
										</div>
									</div>



									<div class="col-md-6">
										<div class="form-group">
											<label>State:</label> <input type="text" class="form-control"
												name="state" placeholder="state" value="${state}">
										</div>
									</div>
									
									
									
								</div>

								 <button type="submit" class="btn btn-info btn-fill pull-right/editadminprofile.jsp" >Save Information</button>
								<div class="clearfix"></div>
								
								<!-- <h1 align="right"><a href="adminDashboard.jsp" style="font-size:50%; text-decoration: underline;">Back</a></h1>
								

 -->
								
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

