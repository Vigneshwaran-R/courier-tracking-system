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

	<s:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/couriertracking" user="root"
		password="root" var="db" />
	<br />
	<div id="login">
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form class="form" action="userlogin" method="post">
							<h3 class="text-center text-info">Login</h3>
							<div class="form-group">
								<label for="customerId" class="text-info">UserId</label><br>
								<input type="number" name="customerId" placeholder="userId"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Password:</label><br>
								<input type="password" name="password" placeholder="password"
									class="form-control">
							</div>
							
							<div class="form-group">
								 <input type="submit" name="submit"
									class="btn btn-info btn-md" value="submit">
							</div>
							
							<div id="register-link" class="text-right">
								<p class="text-white">New User?</p>
								<a href="userSignUp" class="text-info">Register Here</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
