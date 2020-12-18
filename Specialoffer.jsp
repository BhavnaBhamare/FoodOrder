<%@include file="adminHeader2.jsp"%>

<body style="background-image: url('foodee-master/images/place.jpg');">

<div class="row mt">
          <div class="col-lg-8">
          
            <div class="form-panel">
              <div class="form">
     			 <form class="cmxform form-horizontal style-form" action="Specialofferservlet" method="post" enctype="multipart/form-data">
     			   <h4><font size="3px"><b><center>Add Special offer</center></b></font></h4>
     			   <br> 
						<input type="hidden" name="id" value="${id }">
						<div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Special Menu name</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="oname" name="oname" type="text" />
                         </div>
                      </div>
                      <br>
                      <div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Image:</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="image" name="image" type="file" />
                         </div>
                      </div>
                      <br>
                      <div class="form-group ">
                        <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Offer Valid From</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="fromdate" name="fromdate" type="date" />
                         </div>
                      </div>
                      <br>
						<div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2"><b><font size="3px">To:</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="todate" name="todate" type="date" />
                         </div>
                      </div>
                      <br>			
						<div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2"><b><font size="3px"> Original price:</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="oprice" name="oprice" type="text" />
                         </div>
                      </div>
                      <br>		
		               <div class="form-group ">
                          <label for="firstname" class="control-label col-lg-2"><b><font size="3px">Special price:</font></b></label>
                          <div class="col-lg-6">
                           <input class=" form-control" id="sprice" name="sprice" type="text" />
                         </div>
                      </div>
                      <br>		
		    
		                    
                      <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <button class="btn btn-theme" type="submit">Save menu</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>
                  
                  
           
</body>
</html>                         
									
		                             
						
		
		                                     