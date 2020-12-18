<%@page import="com.pojo.Item"%>
<%@page import="com.model.BLManager"%>
<%@page import="com.pojo.Addtocart"%>
<%@page import="com.pojo.Addproduct"%>

<%@page import="java.util.List"%>
<%@include file="Customerheader.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
  <div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
     			<h4 class="title"><b><i><font color="Purple">Welcome</font></i></b></h4>
					

				<a href="customersearchmenu.jsp">continue shopping</a>

<form action="AddToCartServlet?action=update" method="post">
<table cellpadding="2" class="table table-bordered table-striped">

<%


%>
<tr>

<th>Option</th>
<th>Id</th>
<th>Name</th>
<th>price</th>
<th>quantity  </th>
<th>sub total</th>



</tr>
<c:set var="s" value="0"></c:set>
<c:forEach var="it" items="${sessionScope.cart}">
<c:set var="s" value="${s+it.addproduct.price * it.iquantity}"></c:set>
<tr>

<td align="center" ><a href="AddToCartServlet?id=${it.addproduct.id}&action=delete" onclick="return confirm('are you sure')">Delete</a></td>
<td>${it.addproduct.id}</td>
<td>${it.addproduct.name}</td>
<td>${it.addproduct.price}</td>
<td>${it.iquantity}  </td>
<td>${it.addproduct.price * it.iquantity }</td>

</tr>




</c:forEach>

<tr>
<td  colspan="5" align="right">sum</td>
<td>${s}</td>

</tr>
</table>

<button><a href="cashoronline.jsp">Continue process</a></button>




</form>
</table>
										</div>
									</div>
								</div>
							</div>
						</body>