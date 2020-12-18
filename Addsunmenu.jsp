<%@page import="com.model.BLManager"%>
<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>

<%@include file="adminHeader2.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
BLManager bl=new BLManager();
List<Mainproduct> l=bl.searchbylist();
session.setAttribute("list", l);
%>
<body style="background-image: url('foodee-master/images/place.jpg');">

<div class="row mt">
          <div class="col-lg-8">
            
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="Savesubmenu" enctype="multipart/form-data">
                <center><h2> Add Sub menu</h2></center>
                  <div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Menu name</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="name" name="name"  value="${name}" type="text" />
                    </div>
                  </div>
                  <br>
                  <div class="form-group ">
                    <label for="price" class="control-label col-lg-2">Price</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="price" name="price"  value="${price}" type="text" />
                    </div>
                  </div>
                  <br>
                  <div class="form-group ">
                    <label for="Image" class="control-label col-lg-2">Image</label>
                    <div class="col-lg-6">
                     <input class=" form-control" id="image" name="image"  value="${image}" type="file" />
                    </div>
                  </div>
                  <br>
                  <div class="form-group ">
                    <label for="Image" class="control-label col-lg-2">Select main menu</label>
                    <div class="col-lg-6">
                      <select name="mname">
											<option>Select main product name</option>
											<c:forEach items="${sessionScope.list }" var="a">
											<option>${a.mname }</option>
											</c:forEach>
											</select>
                    </div>
                  </div>
                  <br>
                  <div class="form-group ">
                    <label for="Image" class="control-label col-lg-2">Quentity</label>
                    <div class="col-lg-6">
                     <input class=" form-control" id="Quentity" name="Quentity"  value="${Quentity}" type="text" />
                    </div>
                  </div>
                      <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">Save menu</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>
                  
                  
           
</body>
</html>                 			
 								
 
							
