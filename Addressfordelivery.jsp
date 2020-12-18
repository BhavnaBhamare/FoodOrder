<%@include file="Customerheader.jsp"%>
<%
session.getAttribute("id");
session.getAttribute("fname");
session.getAttribute("mobileno");
%>


<div class="row mt">
          <div class="col-lg-8">
           
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="addressdetailServlet">
                 <h2><center> Address Details</center></h2>
                 		<input type="hidden" name="id" value="${id }">
                 
                 <br>
                  <div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Full name:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="fname" name="fname" type="text" value="${fname}"/>
                     </div>
                  </div>
                  <div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Mobile no:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="mobileno" name="mobileno" type="text" value="${mobileno}"/>
                     </div>
                  </div>							
				<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Flat,Houseno:</font></b></label>
                      <div class="col-lg-6">
                       <input class=" form-control" id="apartment" name="apartment" type="text" value="${apartment}"/>
                     </div>
                  </div>					
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Area,Colony:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="area" name="area" type="text" value="${area}"/>
                     </div>
                  </div>										
				<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Pincode:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="pincode" name="pincode" type="text" value="${pincode}"/>
                     </div>
                  </div>										
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Town/City:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="city" name="city" type="text" value="${city}"/>
                     </div>
                  </div>										
						<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2"><b><font size="3px">State:</font></b></label>
                      <div class="col-lg-6">
                      <input class=" form-control" id="state" name="state" type="text" value="${state}"/>
                     </div>
                  </div>
                  
                     <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <button class="btn btn-theme" type="submit">Save Deatils</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>					
                                   
                                   
									

									

								

															
									
									
							

