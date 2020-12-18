<%@include file="Customerheader.jsp"%>

<%
String emailid=(String)request.getAttribute("emailid");

%>


<div class="row mt">
	<div class="col-lg-8">
		<div class="form-panel">
			<div class="form">
				<form class="cmxform form-horizontal style-form" id="signupForm"
					method="post" action="OrderdetailsServlet">
					<h2>
						<center>Order Details</center>
					</h2>
					<input type="hidden" name="id" value="${id }">

					<div class="form-group ">
						<!-- <label for="firstname" class="control-label col-lg-2"><b><font
								size="3px">Email Id</font></b></label> -->
						<div class="col-lg-6">
							<input class=" form-control" id="deliverydate"
								name="emailid" type="hidden" value="${emailid}" />
						</div>
					</div>


					<div class="form-group ">
						<label for="firstname" class="control-label col-lg-2"><b><font
								size="3px">Select Date:</font></b></label>
						<div class="col-lg-6">
							<input class=" form-control" id="deliverydate"
								name="deliverydate" type="date" value="${deliverydate}" />
						</div>
					</div>

					<div class="form-group ">
						<label for="firstname" class="control-label col-lg-2"><b><font
								size="3px">Total amount:</font></b></label>
						<div class="col-lg-6">
							<input class=" form-control" id="total" name="total" type="text"
								value="${total}" />
						</div>
					</div>
					<div class="form-group ">
						<label for="firstname" class="control-label col-lg-2"><b><font
								size="3px">Select delivery type:</font></b></label>
						<div class="col-lg-6">
							<select name="type">
								<option>-..Select type..-</option>
								<option>Delivery</option>
								<option>Pickup</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-theme" type="submit">Save Deatils</button>

						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>
