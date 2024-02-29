<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Internuncio Express</title>
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
<body class="bg-dark" style="font-family: Hack;">



	<nav class="navbar navbar-expand-lg navbar-light bg-white"> <a
		class="navbar-brand text-primary" href="/">Internuncio Express</a>

	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto ">
			<li class="nav-item"><a class="nav-link text-info" href="/"><u>Home</u></a>
			</li>
			<li class="nav-item"><a class="nav-link text-info" href="rules"><u>Rules
						and Policy</u></a></li>
			<li class="nav-item"><a class="nav-link text-info" href="logout"><u>logout</u></a>
			</li>
		</ul>
	</div>
	</nav>
	<br />

	<div style="overflow: auto">

		<div class="main">
			<div class="jumbotron bg-secondary">
				<h2 style="color: Plum">Internuncio</h2>
				<p class="text-white" Style="font-family: Hack;">Internuncio A
					company, abbreviated as Internun co., is a legal entity made up of
					an association of people, be they natural, legal, or a mixture of
					both, for carrying on a commercial or industrial enterprise.
					Company members share a common purpose, and unite to focus their
					various talents and organize their collectively available skills or
					resources to achieve specific, declared goals.</p>
			</div>

			<center>
				<table class="table">
					<tr>
						<td><a href="insertpackage" target="blank" rel="nofollow">Package
								Creation</a></td>
					</tr>
					<tr>
						<td><a href="updatepackage" target="blank" rel="nofollow">Package
								Updation</a></td>
					</tr>
				</table>
			</center>
		</div>

		<div class="right jumbotron bg-secondary">
			<h2 style="color: Plum">What?</h2>
			<p class="text-white">Domestic Courier Service. International
				Courier Services. Door To Door Delivery. Local Courier Services.
				Parcel Delivery Services. International Parcel Service. Cargo
				Courier Services. Express Parcel Services.</p>
			<h2 style="color: Plum">Where?</h2>
			<p class="text-white">On the southEast coast of Bay Of
				Bengal,city of Chennai</p>
			<h2 style="color: Plum">Price?</h2>
			<p class="text-white">The Walk is free!</p>
			<br>
		</div>
	</div>

</body>
</html>
