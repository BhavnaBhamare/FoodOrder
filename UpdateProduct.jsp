<%@include file="adminHeader2.jsp"%>
<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>

<%
session.getAttribute("list");
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<div class="row mt">
          <div class="col-lg-8">
            <div class="form-panel">
              <div class="form">
               	 <form class="cmxform form-horizontal style-form"  action="Updateproduct" method="post" enctype="multipart/form-data"> 
				<h4><center><font size="3px">Update Product</font></center></h4>		  
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2">Menu name</label>
                         <div class="col-lg-6">
                        <input class=" form-control" id="name" name="name"  type="text" value="${list.name}" />
                       </div>
                     </div>
								
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2">Price:</label>
                         <div class="col-lg-6">
                        <input class=" form-control" id="price" name="price"  type="text" value="${list.price}"  />
                       </div>
                     </div>			
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2">Image:</label>
                         <div class="col-lg-6">
                        <img alt="abc" src="menuimages/${list.image}"
																style="width: 150px; height: 100px;" readonly="readonly" >
                       </div>
                     </div>					
					<div class="form-group ">
                      <label for="firstname" class="control-label col-lg-2">Quantity:</label>
                         <div class="col-lg-6">
                        <input class=" form-control" id="Quantity" name="Quantity"  type="text" value="${list.quantity}" />
                       </div>
                     </div>
                     
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
                  
           
						
									
									
									
									
									
									
										
									

				
