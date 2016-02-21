<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/LoginModal.css" rel="stylesheet" type="text/css">
<title>Login Form</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
<script type="text/javascript">
            function validate()
            {
                var username = document.forms["RegisterForm"]["username"].value;
                var email = document.forms["RegisterForm"]["email"].value;
                var password = document.forms["RegisterForm"]["password"].value;
                var cnfpassword = document.forms["RegisterForm"]["cnfpassword"].value;
                var atpos = email.indexOf("@");
                var dotpos = email.lastIndexOf(".");

                if(username ==""){
                	alert("Error: Username cannot be blank!");
                    form.username.focus();
                    return false;
					};
					re = /^\w+$/;
				    if(!re.test(username)) {
				      alert("Error: Username must contain only letters, numbers and underscores!");
				      form.username.focus();
				      return false;
				    };
				    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length) {
	                    alert("Not a valid e-mail address");
	                    return false;
	                
	                };
				    if(password != "" && password == cnfpassword) {
				        if(password.length < 6) {
				          alert("Error: Password must contain at least six characters!");
				          form.password.focus();
				          return false;
				        }
				    if(password == username) {
				            alert("Error: Password must be different from Username!");
				            form.password.focus();
				            return false;
				          }
				    re = /[0-9]/;
				      if(!re.test(password)) {
				        alert("Error: password must contain at least one number (0-9)!");
				        form.password.focus();
				        return false;
				      }
				      re = /[a-z]/;
				      if(!re.test(password)) {
				        alert("Error: password must contain at least one lowercase letter (a-z)!");
				        form.password.focus();
				        return false;
				      }
				      re = /[A-Z]/;
				      if(!re.test(password)) {
				        alert("Error: password must contain at least one uppercase letter (A-Z)!");
				        form.password.focus();
				        return false;
				      }
				    }else {
				        alert("Error: Please check that you've entered and confirmed your password!");
				        form.password.focus();
				        return false;
				      };


                
                
            }

        </script>
</head>
<body>
<div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
				<form action="login.html" method="post">  
					Name:<input type="text" name="name"/><br/>  
					Password:<input type="password" name="password"/><br/>  
			<a href="#registermodal">	Register New Account </a><input type="submit" value="login"/>  	
				</form>
	</div>
	</div>
	
	<div id="registermodal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
				<form name="RegisterForm" action="register.html" method="post" onsubmit="return validate();">
					UserName<input type="text" name="username" id="username"/><br/>
					FirstName<input type="text" name="firstname" id="firstname"/><br/>
					LastName<input type="text" name="lastname" id="lastname"/><br/>  
					Email Address<input type="text" name="email" id="email"/><br/>  
					Password:<input type="password" name="password"/><br/>
					Confirm Password:<input type="password" name="cnfpassword"/><br/>  
			<a href="#openModal">	Already have an account ?? </a><input type="submit" value="Register"/>  	
				</form>
	</div>
	</div>
</body>
</html>