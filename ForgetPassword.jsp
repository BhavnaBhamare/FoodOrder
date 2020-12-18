<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.content-area .inner{
position: relative;
width: 98%;
min-height: 50px;
margin-left: 5px;
border-radius: 3px;
background-color: white;
box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
}

.title{
    position: relative;
	height: 20px;
	padding-top:-20px;
	float: left;
        padding-left: 15px;
        padding-right: 15px;
	font-size: 21px;
	color: white;
	border-radius: 4px;
	margin-left:15px;
	text-align: center;
	margin-top: -45px;
    background:  linear-gradient(60deg, #ffa726, #fb8c00);
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text], select {
    width: 100%;
    padding: 10px 15px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


</style>
</head>
<script language = "Javascript">

function emailcheck(str) {

var at="@"
var dot="."
var lat=str.indexOf(at)
var lstr=str.length
var ldot=str.indexOf(dot)
if (str.indexOf(at)==-1){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at,(lat+1))!=-1){
alert("Invalid E-mail ID")
return false
}

if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot,(lat+2))==-1){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(" ")!=-1){
alert("Invalid E-mail ID")
return false
}
alert("valid E-mail ID")
return true 
}

function ValidateEmail(){
var emailID=document.forget.email

if ((emailid.value==null)||(emailid.value=="")){
alert("Please Enter your Email Address")
emailID.focus()
return false
}
if (emailcheck(emailID.value)==false){
emailID.value=""
emailID.focus()
return false
}
return true
}
</script>
<body>

<div class="constent">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="header">
					<div class="inner" style="margin-top: 70px">
					
						
						<div class="content">
               <form  action="ForgetPasswordServlet" method="post" name="forget" onsubmit="return ValidateEmail()">
                         
                    <div class="row">
									<div class="col-md-4" id="example1" >
										<div class="form-group">
											<label>Email:-</label> <input type="text" style="width: 350px" class="form-section btn-container" name="email" placeholder="Type your EmailID" required ><br>
										</div>
									</div>
								</div>
								<br> <input type="submit" class="button"
											value="Reset Password" name="flag"  >
									</form>
                        </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                   </div>
                       
</body>
</html>