<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<title>Employees</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<nav class="navbar navbar-dark bg-dark"> <a class="navbar-brand"
		href="#">Employee</a> </nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<img src="/img/logo.png" alt="Logo"> 
				<a href="#">Employees</a>
			</div>
			<div class="col-md-10" id="right-container">
			<h3>Employees</h3>
			<button id="create" type="button" class="btn btn-sm btn-purple">Create</button>
			<hr>
			<table id="employee-table"
					class="border-top table table-striped table-hover" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Work Phone</th>
							<th>Work Email</th>
							<th>Department</th>
							<th>Job Title</th>
							<th>Manager</th>
						</tr>
					</thead>
					<tbody id="tableBody">
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/main.js"></script>

	</body>
</html>