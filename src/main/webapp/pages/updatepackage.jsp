<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update Package</title>
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

	<div style="width: 90%" align="left">
		<nav class="navbar navbar-expand-lg navbar-light bg-white"> <a
			class="navbar-brand text-primary" href="/">Internuncio Express</a>

		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto ">
				<li class="nav-item"><a class="nav-link text-info" href="/"><u>Home</u></a>
				</li>
				<li class="nav-item"><a class="nav-link text-info"
					href="stafflogin"><u>Staff Login</u></a></li>
				<li class="nav-item"><a class="nav-link text-info"
					href="insertpackage"><u>Admin Login</u></a></li>
				<li class="nav-item"><a class="nav-link text-info"
					href="contactus"><u>Contact us</u></a></li>
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
						company, abbreviated as Internun co., is a legal entity made up of
						an association of people, be they natural, legal, or a mixture of
						both, for carrying on a commercial or industrial enterprise.
						Company members share a common purpose, and unite to focus their
						various talents and organize their collectively available skills
						or resources to achieve specific, declared goals.</p>
				</div>
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

			<%
				String consignmentId = request.getParameter("consignmentId");
				String acceptDate = request.getParameter("acceptDate");
				String packageWeight = request.getParameter("packageWeight");
				String cost = request.getParameter("cost");
				String receiverAddress = request.getParameter("receiverAddress");
				String employeeId = request.getParameter("employeeId");
				String customerId = request.getParameter("customerId");
				String currentLocation = request.getParameter("currentLocation");
				String packageStatus = request.getParameter("packageStatus");
			%>
			<c:set var="receiverAddress" value="<%=receiverAddress%>">
			</c:set>
			<center>
				<fieldset style="width: 40%;">
					<b style="color: white">Package Updation</b>
					<div class="container">
						<div id="login-row"
							class="row justify-content-center align-items-center">
							<div id="login-column" class="col-md-6">
								<div id="login-box" class="col-md-12">
									<form class="form" action="updatePackage" method="post">
										<h3 class="text-center text-info">Update</h3>
										<table class="table table-stripped">
											<tr>
												<td class="text-info">Consignment ID</td>
												<td><input value=<%=consignmentId%> type="number"
													name="cosignmentId" required="required"
													class="form-control" /></td>
											</tr>
											<tr>
												<td class="text-info">Accept Date</td>
												<td><input value=<%=acceptDate%> readonly="readonly"
													type="text" name="acceptDate" required="required"
													class="form-control" /></td>
											</tr>
											<tr>
												<td class="text-info">Package Weight</td>
												<td><input value=<%=packageWeight%> readonly="readonly"
													type="text" name="packageWeight" class="form-control" /></td>
											</tr>




											<tr>
												<td class="text-info">Receiver Address</td>
												<td><textarea rows="5" cols="30" readonly="readonly"
														name="receiverAddress" required="required"
														class="form-control">${receiverAddress} </textarea></td>
											</tr>
											<tr>
												<td class="text-info">employeeId</td>
												<td><input value=<%=employeeId%> type="number"
													name="employeeId" /></td>
											</tr>
											<tr>
												<td class="text-info">customerId</td>
												<td><input value=<%=customerId%> readonly="readonly"
													type="number" name="customerId" required="required"
													class="form-control" /></td>
											</tr>
											<tr>
												<td class="text-info">Current Location</td>
												<td><input value=<%=currentLocation%> type="text"
													name="currentLocation" required="required"
													class="form-control" /></td>
											</tr>
											<tr>
												<td class="text-info">Package Status</td>
												<td><select name="packageStatus">
														<option value=<%=packageStatus%>><%=packageStatus%></option>
														<option value="booked">booked</option>
														<option value="in transit">in transit</option>
														<option value="delivered">delivered</option>
												</select></td>
											</tr>
											<tr>
												<td><input type="submit" value="Submit"
													class="btn btn-info btn-md" /></td>
											</tr>
										</table>
									</form>
				</fieldset>
			</center>

		</div>


	</div>

</body>
</html>
