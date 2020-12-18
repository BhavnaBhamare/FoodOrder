<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<%
BLManager bl=new BLManager();
List<Mainproduct> l=bl.searchbylist();
session.setAttribute("list", l);
%>
<div class="row mt">
          <div class="col-lg-8">
            
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" action="Savespecialmenu" method="post" action="Savesubmenu" enctype="multipart/form-data">
                <center><h2> Add Special menu</h2></center>
                <input type="hidden" name="id" value="${id }">
                  <div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Special menu name:</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="sname" name="sname"  value="${sname}" type="text" />
                    </div>
                  </div>
                  <br>
       		      <div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Image:</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="image" name="image"  value="${image}" type="file" />
                    </div>
                  </div>
                  <br>
       		      <div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Menu price:</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="sprice" name="sprice"  value="${sprice}" type="text" />
                    </div>
                  </div>
                  <br>
					<div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Menu quantity:</label>
                    <div class="col-lg-6">
                      <input class=" form-control" id="squantity" name="squantity"  value="${squantity}" type="text" />
                    </div>
                  </div>
                  <br>
						<div class="form-group ">
                    <label for="menuname" class="control-label col-lg-2">Select menu type:</label>
                    <div class="col-lg-6">
                     <select name="mname">
											<option>Select menu name</option>
											<c:forEach items="${sessionScope.list }" var="a">
											<option>${a.mname }</option>
											</c:forEach>
											</select>
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
									
					
									
									
									
									
									
									
		
			
									
