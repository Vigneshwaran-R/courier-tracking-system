<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Internuncio Express</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!--  ><script type=text/javascript>
	var popup = "${idpopup}";
function myf(){
	alert(popup);}
</script>-->


<style>
* {
	box-sizing: border-box;
}

.menu {
	float: left;
	width: 20%;
}

.menuitem {
	padding: 8px;
	margin-top: 7px;
	border-bottom: 1px solid #f1f1f1;
}

.main {
	float: left;
	width: 60%;
	padding: 0 20px;
	overflow: hidden;
}

.right {
	background-color: hsl(240, 100%, 70%);
	float: left;
	width: 20%;
	padding: 10px 15px;
	margin-top: 7px;
}

footer {
	bottom: 0%;
	min-width: 100%;
	position: fixed;
	background-color: #f1f1f1;
	text-align: center;
	padding: 10px;
	margin-bottom: 0px;
	font-size: 12px;
}

#a {
	color: #e83c3c;
	background-color: #8cf442;
	border: none;
}
</style>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
</head>
<body class="bg-dark" style="font-family: Hack;" onload="noBack();"
	onpageshow="if (event.persisted) noBack();" onunload="">

	<nav class="navbar navbar-expand-lg navbar-light bg-white"> <a
		class="navbar-brand text-primary" href="/">Internuncio Express</a>

	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto ">
			<li class="nav-item"><a class="nav-link text-info" href="/"><u>Home</u></a>
			</li>
			<li class="nav-item"><a class="nav-link text-info" href="/rules"><u>Rules
						and Policy</u></a></li>
			<li class="nav-item"><a class="nav-link text-info"
				href="/contactus"><u>ContactUs</u></a></li>
		</ul>
	</div>
	</nav>

	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/couriertracking" user="root"
		password="root" var="db" />

	<sql:query var="result" dataSource="${db}"> SELECT customer_id FROM user ORDER BY customer_id DESC LIMIT 1; </sql:query>




	<div id="register">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-6">
					<div class="col-md-12">
						<form class="form" action="userregistration" method="post">
							<h3 class="text-center text-info">Sign Up</h3>
							<div class="form-group">
								<label for="firstName" class="text-info">First Name</label><br>
								<input type="text" name="firstName" placeholder="first name"
									required="required" class="form-control">
							</div>
							<div class="form-group">
								<label for="lastName" class="text-info">Last Name</label><br>
								<input type="text" name="lastName" placeholder="last name"
									required="required" class="form-control">
							</div>
							<div class="form-group">
								<label for="gender" class="text-info">Gender: </label> <input
									type="radio" id="male" name="gender" value="male"
									required="required"> <label for="male"
									class="text-info">Male</label> <input type="radio" id="female"
									name="gender" value="female" required="required"> <label
									for="female" class="text-info">Female</label>
							</div>
							<div class="form-group">
								<label for="email" class="text-info">Email</label> <input
									type="email" name="email" placeholder="email"
									required="required" class="form-control">
							</div>
							<div class="form-group">
								<label for="contactNumber" class="text-info">contactNumber</label>
								<input type="number" name="contactNumber"
									placeholder="contactNumber" required="required"
									class="form-control">
							</div>


							<!--  ><div class="form-group">
								<label for="customerId" class="text-info">customerId</label> <input
									type="number" name="customerId" class="form-control"
									value="<c:out value="${id}"/>" />
							</div>-->


							<div class="form-group">
								<c:forEach var="res" items="${result.rows}">

									<label for="customerId" class="text-info">customerId</label>
									<input type="number" name="customerId" class="form-control"
										value="${res.customer_id+1}" />
								</c:forEach>
							</div>


							<div class="form-group">
								<label for="password" class="text-info">password</label> <input
									type="password" name="password" placeholder="password"
									required="required" class="form-control">
							</div>
							<div class="form-group text-center">
								<input type="submit" name="submit" class="btn btn-primary"
									value="submit">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center text-info">Kindly note down your
		customerId</div>
	<div>
		<img src="./image/myorder.jpg" style="width: 100%"
			style="vertical-align:middle" width="25" height="300">
	</div>

	</div>





</body>
</html>
