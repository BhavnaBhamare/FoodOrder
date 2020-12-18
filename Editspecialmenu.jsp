<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>

<%
session.getAttribute("list");
%>
<body style="background-image: url('foodee-master/images/place.jpg');">
<div class="row mt">
          <div class="col-lg-8">
          
            <div class="form-panel">
              <div class="form">
     			 <form class="cmxform form-horizontal style-form" action="Editspecialmenu" method="post" enctype="multipart/form-data">
     			   <h4><font size="3px"><b><center>Update Special menu</center></b></font></h4>
     			   <br> 
					<input type="hidden" name="id" value="${list.id }">
                         <div class="form-group ">
                            <label for="firstname" class="control-label col-lg-2">Special menu name:</label>
                            <div class="col-lg-6">
                            <input class=" form-control" id="sname" name="sname"  type="text" value="${list.sname}" />
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
						<div class="form-group ">
                            <label for="firstname" class="control-label col-lg-2">Image:</label>
                            <div class="col-lg-6">
                            <img alt="abc" src="menuimages/${list.image}"
																style="width: 100px; height: 100px;" readonly="readonly" >
                           </div>
                        </div>		
						<br>			
						<div class="form-group ">
                            <label for="firstname" class="control-label col-lg-2">Type:</label>
                            <div class="col-lg-6">
                            <input class=" form-control" id="mname" name="mname"  type="text" value="${list.mainproduct.mname}" readonly="readonly" />
                           </div>
                        </div>
                        <br>		
						<div class="form-group ">
                            <label for="firstname" class="control-label col-lg-2">Quantity:</label>
                            <div class="col-lg-6">
                            <input class=" form-control" id="squantity" name="squantity"  type="text" value="${list.squantity}"  />
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