<%@page import="com.pojo.Orderstatus"%>
<%@page import="com.pojo.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="Customerheader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
int id=(int)session.getAttribute("id");
System.out.print("id"+id);
BLManager bl=new BLManager();

List<Item> i=bl.searchbyid1(id);
session.setAttribute("list", i);
String s=request.getParameter("sum");
System.out.print(s);

List<Orderstatus> o=bl.searchorder();
for(int j=0;j<o.size();j++){
String t=o.get(j).getTotal();
int t1=Integer.parseInt(t);
System.out.println("total"+t1);


session.setAttribute("l1",t1);
}
session.setAttribute("s", s);
%>
<body><br>
<div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
<table border="2" height="50%" width="50%" align="center">
<tr>
<th>Name</th>
<th>Email</th>
<th>Total</th>
<th>Status</th>

	
</tr>
<c:forEach items="${sessionScope.list}" var="l">
<tr>
<td>${l.registration.fname }</td>
<td>${l.registration.emailid}</td>

<td>${l1}</td>
<td>${l.status}</td>

</tr>
</c:forEach>
</table>

<center>	<a href="done.jsp">Feedback</a></center>
</div>
</div>
</div>
</div>
</body>
</html>