<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>Internuncio Express</title>
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
<link rel="shortcut icon" type="image/jpg" href="./image/myorder.jpg" />
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

header {
	bottom: 0%;
	min-width: 100%;
	position: fixed;
	background-color: #0d38e2;
	text-align: center;
	padding: 10px;
	margin-bottom: 0px;
	font-size: 12px;
}
</style>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
</head>
<center>
	<body style="font-family: Hack" onload="noBack();" class="bg-dark"
		onpageshow="if (event.persisted) noBack();" onunload="">
		<div style="width: 90%" align="left">
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<a class="navbar-brand text-primary" href="/">Internuncio
					Express</a>

				<div class="collapse navbar-collapse">
					<ul class="navbar-nav mr-auto ">
						<li class="nav-item"><a class="nav-link text-info" href="/"><u>Home</u></a>
						</li>
						<li class="nav-item"><a class="nav-link text-info"
							href="rules"><u>Rules and Policy</u></a></li>
						<li class="nav-item"><a class="nav-link text-info"
							href="insertpackage"><u>Create Package</u></a></li>
						<li class="nav-item"><a class="nav-link text-info"
							href="logout"><u>logout</u></a></li>
					</ul>
				</div>
			</nav>
			<br />

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
					<br>
				</div>
				<sql:setDataSource driver="com.mysql.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/couriertracking" user="root"
					password="root" var="db" />

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


				<sql:query var="rec" dataSource="${db}"> SELECT * from package; </sql:query>

				<table class="table table-stripped">
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
							<th scope="col">Update</th>
							<th scope="col">Delete</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${rec.rows}" var="v">
							<tr style="color: honeydew;">
								<td>${v.cosignment_id}</td>
								<td>${v.accept_date}</td>
								<td>${v.package_weight}</td>
								<td>${v.package_weight*100}</td>
								<td>${v.receiver_address}</td>
								<td>${v.customer_id}</td>
								<td>${v.current_location}</td>
								<td>${v.package_status}</td>
								<td><a
									href="update?consignmentId=${v.cosignment_id}&acceptDate=${v.accept_date}&packageWeight=${v.package_weight}&cost=${v.cost}&receiverAddress=${v.receiver_address}&employeeId=${v.employee_id}&customerId=${v.customer_id}&currentLocation=${v.current_location}&packageStatus=${v.package_status}"><input
										type="button" name="button" class="btn btn-primary"
										value="update"></a></td>
								<td><a
									href="deletepackage?consignmentId=${v.cosignment_id}"><input
										type="button" name="button" class="btn btn-primary"
										value="delete"></a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br> <img src="/image/track1.jpg" style="width: 100%"
					height="100%">



			</div>
</center>
</div>
</body>
</html>
