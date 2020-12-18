
<%@page import="com.pojo.Registration" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
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
input[type=email], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
   
    
}
input[type=password], select {
     width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
   
   
}
#example1 {
    border: 2px solid black;
    padding: 25px;
    background: url(images123.jpg);
    background-repeat: no-repeat;
    background-size: auto;
}

</style>
 <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("examplae1").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
      
       
        return true;
    }
    
    function validateform(){  
    	var name=document.myform.email.value;  
    	var password=document.getElementById("examplae1").value 
    	  
    	if (name==null || name==""){  
    	  alert("Name can't be blank");  
    	  return false;  
    	}else if(password.length<=6){  
    	  alert("Password must be at least 6 characters long.");  
    	   return false;
    	  } 
    	return true;
    	}  
   
    function myFunction() {
        var x = document.getElementById("examplae1");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>  
</head>
<%
session.getAttribute("emailid");
%>



<body>
 <div class="constent">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="header">
					<div class="inner" style="margin-top: 70px">
					
						
						
                        <form  action="passwordServlet" method="post" name="myform" onsubmit="return validateform()" >
                             <div class="row">
                           
                           <div class="col-md-5"  >
                           <div class="form-group">
                                <label>
                                    <span class="required">*</span> Emailid:
                                </label>
                                <input type="email" class="wpcf7-text" value="${emailid.emailid}" name="emailid" readonly="readonly" style="width: 250px">
                            </div>
                            </div>
                           
									<div class="col-md-5"  >
										<div class="form-group">
											<label>New Password::-</label> <input type="password" id="examplae1" style="width: 350px" class="form-section btn-container" name="password" placeholder="Type your password" required ><br>
										</div>
									</div>
									<br>
									<div class="col-md-5"  >
										<div class="form-group">
											<label>Confirm Password:-</label> <input type="password" id="txtConfirmPassword" style="width: 350px" class="form-section btn-container" name="password" placeholder="Type your password" required ><br>
										</div>
									</div>
								</div>
                                                     
                            
                            <input type="submit" class="button"  value="Reset Password" name="flag" onclick="return Validate()">
                            <input type="checkbox" onclick="myFunction()">Show Password
                            
                       
                        
                        </form><!-- .wpcf7 end -->
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                       
</body>
</html>