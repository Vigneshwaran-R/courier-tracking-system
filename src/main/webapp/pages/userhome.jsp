<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.couriertrackingsystem.model.Package"%>

<%
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "couriertracking";
	String userid = "root";
	String password = "root";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	background-color: #0d38e2;
	float: left;
	width: 20%;
	padding: 10px 15px;
	margin-top: 7px;
}

footer {
	bottom: 0%;
	position: fixed;
	min-width: 90%;
	font-size: 15px;
	font-family: 'assistant';
	color: #333;
	text-align: center;
	background-color: #0d38e2;
	padding: 5px 0;
}
</style>

</head>
<center>
	<body class="bg-dark" style="font-family: Hack;">

		<%
			String user = null;
			if (session.getAttribute("firstName") == null) {
				response.sendRedirect("/");
			} else
				user = (String) session.getAttribute("firstName");
			String userName = null;
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("user")) {
						userName = cookie.getValue();
					}
				}
			}
		%>


		<div style="width: 90%" align="left">
			<nav class="navbar navbar-expand-lg navbar-light bg-white"> <a
				class="navbar-brand text-primary" href="/">Internuncio Express</a>

			<div class="collapse navbar-collapse">
				<ul class="navbar-nav mr-auto ">
					<li class="nav-item"><a class="nav-link text-info" href="/"><u>Logout</u></a>
					</li>
					<li class="nav-item"><a class="nav-link text-info"
						href="insertpackage"><u>Create package</u></a></li>
					<li class="nav-item"><a class="nav-link text-info"
						href="rules"><u>Rules and Policy</u></a></li>
					<li class="nav-item"><a class="nav-link text-info"
						href="contactus"><u>ContactUs</u></a></li>

				</ul>
			</div>
			</nav>
			<br />

			<h2 style="color: azure;">
				Welcome
				<%=userName%></h2>

			<div style="overflow: auto">
				<div class="menu">
					<div>
						<img src="/image/track.png" style="width: 100%">
					</div>
				</div>

				<div class="main">
					<div class="jumbotron bg-secondary">
						<h2 style="color: Plum">Internuncio</h2>
						<p class="text-white" Style="font-family: Hack;">Internuncio A
							company, abbreviated as Internun co., is a legal entity made up
							of an association of people, be they natural, legal, or a mixture
							of both, for carrying on a commercial or industrial enterprise.
							Company members share a common purpose, and unite to focus their
							various talents and organize their collectively available skills
							or resources to achieve specific, declared goals.</p>
					</div>
					<img src="/image/courier.jpg" style="width: 100%" height="100%">

					<br> <br>


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
					<br> <img src="/image/track2.png" style="width: 100%"
						height="100%">
				</div>

				<table class="table table-stripped" id="customers">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Consignment Id</th>
							<th scope="col">Accept Date</th>
							<th scope="col">Package Weight</th>
							<th scope="col">Cost</th>
							<th scope="col">Receiver Address</th>
							<th scope="col">Customer Id</th>
							<th scope="col">Current Location</th>
							<th scope="col">Package Status</th>
						</tr>
					</thead>

				</table>

				<center>
					<p style="color: honeydew;">You have no package(s) yet</p>
				</center>



			</div>
</center>
</div>
</body>
</html>
