<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


<title>Light Bootstrap Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<style>
.dropbtn {
    background-color: purple;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">

			<!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

			<div class="sidebar-wrapper">
				<div class="logo">
				<center><img alt="abc" src="foodee-master/images/logo.png" style="width: 30%; height: 30%"></center>
					<a href="#" class="simple-text">
						 ONLINE FOOD SERVICE</a>
				</div>

				<ul class="nav">
					
					</a></li>
					
					<li><a href="Addmainmenu.jsp"> <i class="pe-7s-note2"></i>
							<p>Add Main Product</p>
					</a></li>
					<li><a href="Addsunmenu.jsp"> <i class="pe-7s-news-paper"></i>
							<p>Add SubProduct</p>
					</a></li>
					<li><a href="viewproduct1.jsp"> <i class="pe-7s-science"></i>
							<p>View All Product</p>
					</a></li>
					
					<li><a href="addspecialmenu.jsp"> <i class="pe-7s-science"></i>
							<p>Add special menu </p>
					</a></li>
					<li><a href="viewspecialmenu.jsp"> <i class="pe-7s-science"></i>
							<p>Edit special menu </p>
					</a></li>
					<li><a href="Specialoffer.jsp"> <i class="pe-7s-science"></i>
							<p>Add Special Offer </p>
					</a></li>
					<li><a href="managespecialoffer.jsp"> <i class="pe-7s-science"></i>
							<p>Manage Special Offer</p>
					</a></li>
					
					<li><a href="Searchproduct.jsp"> <i class="pe-7s-map-marker"></i>
							<p>Search Product</p>
					</a></li>
					<li><a href="viewcustomer.jsp"> <i class="pe-7s-bell"></i>
							<p>View Customer List</p>
					</a></li>
					<li><a href="avtablebooking.jsp"> <i class="pe-7s-bell"></i>
							<p>View table booking list</p>
					</a></li>
					<li><a href="newOrderConfirm1.jsp"> <i class="pe-7s-bell"></i>
							<p>View Customer Order confirmation</p>
					</a></li>
					
					
					
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						
						<a class="navbar-brand" href="#"></a>
					</div>
					
							

						<ul class="nav navbar-nav navbar-right">
						
				<li><a href="Adminprofile.jsp"> 
							<p>Admin Profile</p>
					</a></li>
								
							<li><a href="index.html">
									<p>Log out</p>
							</a></li>
							<li class="separator hidden-lg"></li>
						</ul>	</div>
				</nav>
				
				<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
</script>
				
				
			</body>
			</html>
			