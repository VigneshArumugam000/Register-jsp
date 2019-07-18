<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
body {
	background-image: url(https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwicpYq46bjjAhWJrI8KHQk_ArMQjRx6BAgBEAU&url=http%3A%2F%2Fwww.lovethispic.com%2Fimage%2F247617%2Fblack-and-white-building-structure&psig=AOvVaw33fKVqiqO9nbL3OPb55GfY&ust=1563345271071706);
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100vh;
	overflow: auto;
}

.container {
	font-family: Roboto, sans-serif;
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 500px;
	padding-top: 10px;
	height:400px;
	margin-top: 166px;
}
/*--- for label of first and last name---*/
.lastname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 10px;
}

.firstname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 5px;
}

#lname {
	margin-top: 5px;
}

/*---for heading-----*/
.heading {
	text-decoration: bold;
	text-align: center;
	font-size: 30px;
	color: #F96;
	padding-top: 10px;
}

#email {
	margin-top: 5px;
}

.mail {
	margin-left: 44px;
	font-family: sans-serif;
	color: white;
	font-size: 14px;
	margin-top: 13px;
}

.pass {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	margin-left: 6px;
	margin-top: 9px;
}

#password {
	margin-top: 6px;
}
/*------------for phone Number--------*/
/*----------label--------*/
.pno {
	font-size: 18px;
	margin-left: -13px;
	margin-top: 10px;
	color: #ff9;
}

/*------------For submit button---------*/
.sbutton {
	color: white;
	font-size: 20px;
	border: 1px solid white;
	background-color: #080808;
	width:20%;
	margin-left: 41%;
	margin-top: 19px;
	box-shadow: 0px 2px 2px 0px white;
}

.btn.btn-warning:hover {
	box-shadow: 2px 1px 2px 3px #99ccff;
	background: #5900a6;
	color: #fff;
	transition: background-color 1.15s ease-in-out, border-color 1.15s
		ease-in-out, box-shadow 1.15s ease-in-out;
}
</style>

<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="container">
		<c:if test="${status}">
			<div class="alert alert-info">
				<strong>${message}</strong>
			</div>
		</c:if>
		
		<header class="heading"> Registration-Form</header>
		<hr></hr>
		<!---Form starting---->
		<div class="row ">
			<form action="register" method="post">
				<!--- For Name---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">

							<label class="firstname">First Name :</label>
						</div>

						<div class="col-xs-8">
							<input type="text" name="fname" id="fname"
								placeholder="Enter your First Name" class="form-control "
								tabindex="1" value="${newcustomer.fname }">
						</div>
					</div>
				</div>


				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="lastname">Last Name :</label>
						</div>
						<div class="col-xs-8">
							<input type="text" name="lname" id="lname"
								placeholder="Enter your Last Name" class="form-control last"
								tabindex="2" value="${newcustomer.lname }">
						</div>
					</div>
				</div>
				<!-----For email---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="mail">Email :</label>
						</div>
						<div class="col-xs-8">
							<input type="email" name="email" id="email"
								placeholder="Enter your email" class="form-control" tabindex="3"
								value="${newcustomer.email }">
						</div>
					</div>
				</div>
				<!-----For Password and confirm password---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="pass">Password :</label>
						</div>
						<div class="col-xs-8">
							<input type="password" name="user_password1" id="user_password1"
								placeholder="Enter your Password" class="form-control">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="pass">Confirm Password :</label>
						</div>
						<div class="col-xs-8">
							<input type="password" name="user_password2" id="user_password2"
								placeholder="Enter your Password" class="form-control">
						</div>
					</div>
				</div>
				<!----------------------------------------->

				<!-----------For Phone number-------->


				<div class="col-sm-6">
					<input type="submit" name="submit" id="submit">

				</div>
				
           <div class="col-sm-6">
        
         <a class='btn btn-info btn-xs' href="dspdetail">Click me</a>
				</div>
				</form>
				</div>
				</div>
				
			</body>
</html>

