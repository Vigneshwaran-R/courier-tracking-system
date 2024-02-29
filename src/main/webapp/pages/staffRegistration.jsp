
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Internuncio Express</title>
<link rel="shortcut icon" type="image/jpg" href="./image/myorder.jpg" />
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
</head>
<body style="font-family: Hack;" class="bg-dark">

	<nav class="navbar navbar-expand-lg navbar-light bg-white"> <a
		class="navbar-brand text-primary" href="/">Internuncio Express</a>

	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto ">
			<li class="nav-item"><a class="nav-link text-info" href="/"><u>Home</u></a>
			</li>
			<li class="nav-item"><a class="nav-link text-info"
				href="adminlogin"><u>Staff Login</u></a></li>
			<li class="nav-item"><a class="nav-link text-info"
				href="adminlogin"><u>Administrator Login</u></a></li>
			<li class="nav-item"><a class="nav-link text-info"
				href="contactus"><u>ContactUs</u></a></li>
		</ul>
	</div>
	</nav>
	<br />

	<div style="overflow: auto" class="main">

		<div class="jumbotron bg-secondary">
			<h2 style="color: Plum">Internuncio</h2>
			<p class="text-white" Style="font-family: Hack;">Internuncio A
				company, abbreviated as Internun co., is a legal entity made up of
				an association of people, be they natural, legal, or a mixture of
				both, for carrying on a commercial or industrial enterprise. Company
				members share a common purpose, and unite to focus their various
				talents and organize their collectively available skills or
				resources to achieve specific, declared goals.</p>
		</div>
		<center>
			<div id="register">
				<div class="container">
					<div class="row justify-content-center align-items-center">
						<div class="col-md-6">
							<div class="col-md-12">
								<form class="form" action="staffregister" method="post">
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
											type="radio" id="male" name="gender" value="male"> <label
											for="male" class="text-info">Male</label> <input type="radio"
											id="female" name="gender" value="female"> <label
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
									<div class="form-group">
										<label for="salary" class="text-info">Salary</label> <input
											type="number" name="salary" class="form-control"
											placeholder="salary" required="required" />
									</div>
									<div class="form-group">
										<label for="password" class="text-info">password</label> <input
											type="password" name="password" placeholder="password"
											required="required" class="form-control">
									</div>
									<div class="form-group">
										<label for="designation" class="text-info">Designation</label>
										<input type="text" name="designation"
											placeholder="designation" required="required"
											class="form-control">
									</div>
									<div class="form-group">
										<label for="permanentAddress" class="text-info">permanent
											Address</label> <input type="text" name="permanentAddress"
											placeholder="permanent addres" required="required"
											class="form-control">
									</div>
									<div class="form-group">
										<label for="correpondanceAddress" class="text-info">correpondance
											address</label> <input type="text" name="correpondanceAddress"
											placeholder="correpondanceAddress" required="required"
											class="form-control">
									</div>
									<div class="form-group">
										<label for="loginType" class="text-info">Admin or
											Staff</label><br> <select name="loginType"
											placeholder="Enter A or S" />
										<option value="A">Admin</option>
										<option value="S">Staff</option>
										</select>
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
		</center>

	</div>

	<div class="right jumbotron bg-secondary">
		<h2 style="color: Plum">What?</h2>
		<p class="text-white">Domestic Courier Service. International
			Courier Services. Door To Door Delivery. Local Courier Services.
			Parcel Delivery Services. International Parcel Service. Cargo Courier
			Services. Express Parcel Services.</p>
		<h2 style="color: Plum">Where?</h2>
		<p class="text-white">On the southEast coast of Bay Of Bengal,city
			of Chennai</p>
		<h2 style="color: Plum">Price?</h2>
		<p class="text-white">The Walk is free!</p>
		<br>
	</div>
	</div>

</body>
</html>
