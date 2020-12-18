<%@page import="com.pojo.Orderstatus"%>
<%@page import="com.pojo.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="adminHeader2.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	BLManager bl = new BLManager();

	String status="Pending";
	List<Item> l=bl.searchAllPandingRecord(status);
	
	System.out.print("list"+l.get(0).get);
	session.setAttribute("list1",l);
	//session.setAttribute("", arg1)
/* 	String status = "Pending";
	int id = 0;
	List<Item> it = bl.searchbystatus(status);
	for (int i = 0; i < it.size(); i++) {
		id = it.get(i).getRegistration().getId();

	}

	System.out.print("iiiiiiiidddddddd:" + id);

	System.out.print(it);

	int id1=0;
	List<Orderstatus> o = bl.searchorder();
	System.out.print("ooooooooooooo"+o);
	for (int i = 0; i <o.size(); i++) {
		id1=o.get(i).getRegistration().getId();

	} 
	if(id==id1){
		String total=o.get(id1).getTotal();
		session.setAttribute("list2", total);
	} */
	
	/* for (int j = 0; j < o.size(); j++) {
		if(it.get(j).getRegistration().getId()==o.get(j).getRegistration().getId()){
			String t = o.get(j).getTotal();
		   int t1 = Integer.parseInt(t);
		//return t1;
	} 
	}
	 */

	//session.setAttribute("list1", it);
%>
<body>
	<div class="row mt">
		<div class="col-lg-12">

			<div class="form-panel">
				<div class="form">
					<table border="5" class="table table-bordered table-striped">
						<h3>
							<b><font size="3px"><center>Confirm new Order</center></font></b>
						</h3>
						<tr>
							
							<th>Name</th>
							<th>Email</th>
							<th>Total Amount</th>
							<th>Status</th>
							<th>Confirm Order</th>
							<th>Pending</th>
						</tr>
						<c:forEach items="${sessionScope.list1}" var="l1">
							<tr>
							  <td>${l1.registration.fname}</td>	
							 <td>${l1.emailid}</td>
							  <td>${l1.}</td>
							  <td>${l1.}</td> 
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>




