<div class="container">

	<br />
	<div class='row'>
		<input id="store" type="submit" class="btn btn-sm btn-purple"
			value="Submit"> &nbsp
		<button id="create" type="button" class="btn btn-sm btn-purple">Discard</button>

	</div>
	<div class='row'>
		<div class="form-group">
			<label for="name">Name</label> <input type="text"
				class="form-control" id="name" placeholder="Enter Name"> <label
				for="jobtype">Job Type</label> <select id="jobtype"></select>
		</div>
	</div>



	<div class='row'>
		<div class='col-md-6'>
			<h3>Contact Information</h3>
			<table>
				<tr>
					<td>Working Address</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Working Mobile</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Working Location</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Working Email</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Working Phone</td>
					<td><input type="text"></td>
				</tr>
			</table>

		</div>
		<div class='col-md-6'>
			<h3>Position</h3>
			<table>
				<tr>
					<td>Department</td>
					<td><select id="department"></select></td>
				</tr>
				<tr>
					<td>Job Title</td>
					<td><select id="jobtitle"></select></td>
				</tr>
				<tr>
					<td>Manager</td>
					<td><select id="manager"></select></td>
				</tr>
				<tr>
					<td>Coach</td>
					<td><select id="coach"></select></td>
				</tr>
			</table>
		</div>
	</div>



	<div class='row'>
		<div class='col-md-6'>
			<h3>Citizenship and Other Information</h3>
			<table>
				<tr>
					<td>Nationality (Country)</td>
					<td><select id="nationality"></select></td>
				</tr>
				<tr>
					<td>Identification No</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Passport No</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>Bank Account No</td>
					<td><input type="text"></td>
				</tr>
			</table>

		</div>
		<div class='col-md-6'>
			<h3>Contact Information</h3>
			<table>
				<tr>
					<td>Home Address</td>
					<td><input type="text"></td>
				</tr>
			</table>
		</div>
	</div>

	<div class='row'>
		<div class='col-md-6'>
			<h3>Status</h3>
			<table>
				<tr>
					<td>Gender</td>
					<td><select id="gender"></select></td>
				</tr>
				<tr>
					<td>Marital Status</td>
					<td><select id="maritalstatus"></select></td>
				</tr>
			</table>

		</div>
		<div class='col-md-6'>
			<h3>Birth</h3>
			<table>
				<tr>
					<td>Date Of Birth</td>
					<td><input type="text"></td>
				</tr>
			</table>
		</div>
	</div>
	<br />
	<script>
	$(function(){
		var $name = $('#name');
		var $jobtype = $('#jobtype');
		$('#store').on('click', function() {
			alert($jobtype.data('gg'));
			 var employee = {
				name : $name.val(),
				jobType : $jobtype.val()
			}; 
			
			console.log(employee.jobType);

			/* $.ajax({
				type : 'POST',
				url : 'http://localhost:9070/employees',
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(employee),
				dataType : 'json',
				cache : false,
				success : function(response) {
					alert('success');
				}
			}) */

		});
	});
		
	</script>
</div>