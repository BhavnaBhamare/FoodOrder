<%@page import="com.pojo.Registration"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="Customerheader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
BLManager bl=new BLManager();
List<Registration> l=bl.searchregi();
session.setAttribute("list", l);
%>

<div class="content">
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					 <div class="content">
						<h4 class="title"><b><i><font color="Purple">My Profile </font></i></b></h4>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

                    <table border="5" class="table table-bordered table-striped">
                    <tr>
                     <th>Id</th>
                     <th>First Name</th>
                     <th>Last Name</th>
                     <th>Profile photo</th>
                     <th>Email ID</th>
                     <th>Username</th>
                     <th>Password</th>
                     <th>Address</th>
                     <th>Mobile no</th>
                     <th>Edit profile</th>
                    </tr>
                    
                      <c:forEach items="${sessionScope.list }" var="m">
                      <tr>
                       <td>${m.id }</td>
                       <td>${m.fname}</td>
                       <td>${m.lname }</td>
                       
                       <td><centter>
                       <img alt="abc" src="profilephoto/${m.image}"
						style="width: 150px; height: 100px;">
                       </centter>
                       </td>
                       
                       <td>${m.emailid }</td>
                       <td>${m.username }</td>
                       <td>${m.password }</td>
                       <td>${m.address }</td>
                       <td>${m.mobileno }</td>
                       <td><a href="EditProfileC?id=${m.id }">Edit</a></td>
                      </tr>
                      </c:forEach>
                     </table>
                    </div>
                    </div>
                    </div>
                    </div>
                    </section>
                    </div>
                    