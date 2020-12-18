<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
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
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="Searchproduct">
                 <h2><center> Search Menu</center></h2>
                 <br>
                 <br>
                 <input type="hidden" name="id" value="${id }">
                <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"><b><font size="3%"><center>Menu name</center></font></b></label>
                    <div class="col-lg-6"> <select name="mname">
                    <option><b>Select product name</b></option>
								<c:forEach items="${sessionScope.list}" var="a">
								<option>${a.mname }</option>
								</c:forEach>
								</select>
                    </div>
                  </div>
								
								 <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <button class="btn btn-theme" type="submit">Search menu</button>
                    
                    </div>
                  </div>
                  
                  </form>
                  </div>
                  </div>
                  </div>
                  </div>
                  
                  
           
</body>
</html>