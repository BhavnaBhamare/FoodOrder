<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="Customerheader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
BLManager bl=new BLManager();
List<Mainproduct> l=bl.searchbylist();
session.setAttribute("list", l);
%>
<div class="row mt">
          <div class="col-lg-8">
           
            <div class="form-panel">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="Customersearchproduct">
    					 <h2><center> Search Menu</center></h2>
								<input type="hidden" name="id" value="${id }">

									<div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2"><b><font size="3%"><center>Menu name</center></font></b></label>
                    <div class="col-lg-6">
										<select name="mname">
										<option><b>Select menu</b></option>
										<c:forEach items="${sessionScope.list}" var="c">
										<option>${c.mname }</option>
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
                  
                  
           		