<%@include file="adminHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Product list</h4>
						<div class="content">
							<form action="Searchproduct" method="post">
								<div class="row">
									<input type="hidden" name="id" value="${id }">

									<div class="col-md-8">
										<div class="form-group">

											<c:forEach items="${sessionScope.List }" var="a">

												<img alt="abc" src="menuimages/${a.image}"
													style="width: 50px; height: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<br>
												<strong>Product Name: </strong>
												<b><c:out value="${a.name}"></c:out></b>
												<br>
												<strong>Price: </strong>
												<b><c:out value="${a.price}"></c:out></b>
												<br>
												
											</c:forEach>

										</div>
									</div>




									<br> <br> <br> <br>

								</div>


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


