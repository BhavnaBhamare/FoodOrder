<%@include file="adminHeader2.jsp"%>
<%
session.getAttribute("list");
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<div class="row mt">
          <div class="col-lg-8">
          
            <div class="form-panel">
              <div class="form">
               	 <form class="cmxform form-horizontal style-form"  action="Updatespecialoffer" method="post" enctype="multipart/form-data">
               	   <h4><center><font size="3px">Update Offer</font></center></h4> 
               	   <br>
					<input type="hidden" name="oid" value="${list.oid }">
					   <div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2">Menu name:</label>
                          <div class="col-lg-6">
                          <input class=" form-control" id="oname" name="oname"  type="text" value="${list.oname}" />
                        </div>
                       </div>
                      <br>
					 <div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2">Image:</label>
                          <div class="col-lg-6">
                          <img alt="abc" src="menuimages/${list.image}"
																style="width: 150px; height: 100px;" readonly="readonly" >
                        </div>
                       </div>
                      <br>		
						 <div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2">To:</label>
                          <div class="col-lg-6">
                          <input class=" form-control" id="todate" name="todate"  type="date" value="${list.todate}" />
                        </div>
                       </div>
                      <br>			
					  <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2">Price:</label>
                        <div class="col-lg-6">
                        <input class=" form-control" id="sprice" name="sprice"  type="text" value="${list.sprice}" />
                        </div>
                       </div>
                      <br>		
									
									
								  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">Update</button>
                    
                    </div>
                  </div>
                     
                      </form>
                  </div>
                  </div>
                  </div>
                  </div>
               </body>   
                  		