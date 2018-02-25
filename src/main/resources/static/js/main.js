$(function() {
	var $tableBody = $('#tableBody');
	

	$.ajax({
		type : 'GET',
		url : 'http://localhost:9070/employees',
		success : function(response) {
			$.each(response.result.employees, function(i, employee) {
				if (employee.manager != null)
					var $manager = employee.manager.name;
				else
					var $manager = '';

				$tableBody.append('<tr>' + '<td></td>' + '<td>' + employee.name
						+ '</td>' + '<td>' + employee.workPhone + '</td>'
						+ '<td>' + employee.workEmail + '</td>' + '<td>'
						+ employee.department.name + '</td>' + '<td>'
						+ employee.jobtitle.name + '</td>' + '<td>' + $manager
						+ '</td>' + '</tr>');
			});

		}
	});

	$('#create').on('click',function(){
		$.ajax({
			type : 'GET',
			url : '/showEdit',
			success : function(response) {
				$('#right-container').html(response);
				loadDepartment();
				loadJobTitle();
				loadManagerAndCoach();
				loadGender();
				loadMaritalStatus();
				loadJobType();
				loadNationalities();
			}
		})
	});
	
	function loadDepartment(){
		var $department = $('#department');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/departments',
			success : function(response) {
				console.log(response.result.departments);
				$.each(response.result.departments, function(i, department) {
					$department.append('<option>'+department.name+'</option>');
				});
			}
		})
	}
	
	function loadJobTitle(){
		var $jobtitle = $('#jobtitle');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/jobtitles',
			success : function(response) {
				console.log(response.result.jobtitles);
				$.each(response.result.jobtitles, function(i, jobtitle) {
					$jobtitle.append('<option>'+jobtitle.name+'</option>');
				});
			}
		})
	}
	
	function loadManagerAndCoach(){
		var $manager = $('#manager');
		var $coach = $('#coach');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/employees',
			success : function(response) {
				$.each(response.result.employees, function(i, employee) {
					$manager.append('<option>'+employee.name+'</option>');
					$coach.append('<option>'+employee.name+'</option>');
				});
			}
		})
	}
	
	function loadGender(){
		var $gender = $('#gender');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/genders',
			success : function(response) {
				$.each(response.result.genders, function(i, gender) {
					$gender.append('<option>'+gender.name+'</option>');
				});
			}
		})
	}
	
	
	function loadMaritalStatus(){
		var $maritalstatus = $('#maritalstatus');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/maritalstatuses',
			success : function(response) {
				$.each(response.result.maritalstatuses, function(i, maritalstatus) {
					
					$maritalstatus.append('<option>'+maritalstatus.status+'</option>');
				});
			}
		})
	}
	
	function loadJobType(){
		var $jobtype = $('#jobtype');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/jobtypes',
			success : function(response) {
				$.each(response.result.jobtypes, function(i, jobtype) {
					
					$jobtype.append('<option data-gg="hhhh">'+jobtype.name+'</option>');
				});
			}
		})
	}
	
	function loadNationalities(){
		var $nationality = $('#nationality');
		$.ajax({
			type : 'GET',
			url : 'http://localhost:9070/nationalities',
			success : function(response) {
				$.each(response.result.nationalities, function(i, nationality) {
					
					$nationality.append('<option>'+nationality.country+'</option>');
				});
			}
		})
	}
	
	
	

});
