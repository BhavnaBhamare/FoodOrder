<%@include file="Customerheader.jsp" %>
<%@page import="com.pojo.Registration"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	BLManager bl = new BLManager();
	List<Registration> r = bl.searchByList();
	session.setAttribute("list", r);
%>
<body style="background-image: url('foodee-master/images/table.jpg'); ">

<div class="row mt">
          <div class="col-lg-8">
           
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="BookTableServlet">
                 <h2><center> Book Table</center></h2>
                 <br>
                 <br>
			 <input type="hidden" name="id" value="${id }">

		
	      <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"><b><font size="3%"><center>Enter Email id:</center></font></b></label>
                    <div class="col-lg-6">
                    <select name="emailid">
				<option>Select Email id</option>
				<c:forEach items="${sessionScope.list }" var="l">
				<option>${l.emailid }</option>
				</c:forEach>
				</select>
			 </div>
		</div>
		 <center> <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Select Booking date:</font></b></label></center>
		 <br>
		    <div class="form-group ">
                  
                    <div class="col-lg-6">
                      <input class=" form-control" id="bookingdate" name="bookingdate" type="date" value="${bookingdate}" />
                    </div>
                  </div>
			 <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Booking time From:</font></b></label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="fromtime" name="fromtime" type="time" value="${fromtime}" />
                    </div>
                  </div>						
		    <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"><b><font size="3px">TO:</font></b></label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="tofrom" name="tofrom" type="time" value="${tofrom}" />
                    </div>
                  </div> 
				
									
									<div class="col-md-8">
							<div class="form-group">
							<label><b>For Two people</b> </label>
							<br>
											<input type="checkbox" name="tablename" value="table1" onclick="go();"><img src="3.png" > 
								&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;
									&nbsp;	&nbsp;	&nbsp;	&nbsp;	
											<input type="checkbox" name="tablename" value="table2"><img src="2.png" > 
											&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;
						
											<input type="checkbox" name="tablename" value="table3"><img src="4.png">
										</div>
									</div>
									
									<div class="col-md-8">
		                                 <div class="form-group">
		                                 <label><b>For Three or four people</b></label>
		                                 <br>
											<input type="checkbox" name="tablename" value="table4"><img src="4.png">
											&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;
									&nbsp;	&nbsp;	&nbsp;	&nbsp;	
											<input type="checkbox" name="tablename" value="table5"><img src="2.png" > 
											&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	
						
											<input type="checkbox" name="tablename" value="table2"><img src="4.png">
										</div>
									</div>
									<br>
									<br>
								<div class="col-md-8">	
									<div class="form-group">
									<label><b>For more than Five people</b></label>
									<br>
										<input type="checkbox" name="tablename" value="table6"><img src="1.png">
										&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;
									&nbsp;	&nbsp;	&nbsp;	&nbsp;	
										<input type="checkbox" name="tablename" value="table7"><img src="4.png">
											&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	
				
											<input type="checkbox" name="tablename" value="table8"><img src="2.png" > 
											
										
										</div>
									</div>
									 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <button class="btn btn-theme" type="submit">Book Table</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>
                  
                  
           
									
									
									
		
                    
                  
        	
	