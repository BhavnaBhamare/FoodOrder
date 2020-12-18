<%@include file="Customerheader.jsp"%>
<%
session.getAttribute("id");
session.getAttribute("fname");
session.getAttribute("lname");
session.getAttribute("emailid");
session.getAttribute("username");
session.getAttribute("password");
session.getAttribute("address");
session.getAttribute("mobileno");
%>
<body style="background-image: url('foodee-master/images/bg1.jpg');">
<div class="row mt">
          <div class="col-lg-8">
           
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="Editcprofile">
									<input type="hidden" name="id" value="${id }">
									
										 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">First name:</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="fname" name="fname" type="text" value="${fname}" />
                        </div>
                     </div>
							
					 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Last name:</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="lname" name="lname" type="text" value="${lname}" />
                        </div>
                     </div>				
					  <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Email id:</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="emailid" name="emailid" type="text" value="${emailid}" />
                        </div>
                     </div>				
					 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Username</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="username" name="username" type="text" value="${username}" />
                        </div>
                     </div>					
					 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Password</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="password" name="password" type="text" value="${password}" />
                        </div>
                     </div>					
					 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Address</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="address" name="address" type="text" value="${address}" >
                        </div>
                     </div>					
						 <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Mobile number:</font></b></label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="mobileno" name="mobileno" type="text" value="${mobileno}"/>
                        </div>
                     </div>								
						 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <button class="btn btn-theme" type="submit">Update Profile</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>
                  
                  
           
</body>	

