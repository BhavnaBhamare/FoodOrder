<%@page import="com.pojo.Addproduct"%>
<%@page import="com.pojo.Mainproduct"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminHeader2.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		BLManager bl=new BLManager();
		List<Addproduct> l = bl.search();
		session.setAttribute("list", l);
	%>
	<head>
	<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
	</head>

<body style="background-image: url('foodee-master/images/place.jpg');">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<div class="row mt">
      <div class="col-lg-12">
          
            <div class="form-panel">
              <div class="form">
      
						
						<table border="5" id="myTable" class="table table-bordered table-striped" >
						<h4>Menu</h4>
						<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
						<br>
											<tr>
												<th>Id</th>
												<th>Name</th>
												<th>Price</th>
												<th>Image</th>
												<th>Quantity</th>
												<th>Menu name</th>
												<th>Edit</th>
												
											</tr>
											<c:forEach items="${sessionScope.list }" var="a">
												<tr>
													<td><b>${a.id}</b></td>
													<td><b>${a.name}</b></td>
													
								
													<td><b>${a.price}</b></td>
													
													<td><center>
															<img alt="abc" src="menuimages/${a.image}"
																style="width: 200px; height: 100px;">
														</center></td>
													

													
													

													<td><b>${a.quantity }</b></td>
													
													<td><b>${a.mainproduct.mname }</b></td>
													
													<td><a href="Updateproduct?id=${a.id }">Edit</a></td>
													</tr>
											</c:forEach>
										</table>
										<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
										</div>
									</div>
								</div>
							</div>
						</body>
										
										
				