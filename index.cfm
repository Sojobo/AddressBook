<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>AddressBook - CF</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- jQuery JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<!-- Bootstrap JS -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
		<cfquery name="getContacts" datasource="addressbookcf">
		    SELECT * FROM contacts
		    ORDER BY first_name ASC
		</cfquery>

		<script>
			$(document).ready(function(){
				$("#searchBar").on("keyup", function() {
					var value = $(this).val().toLowerCase();
					$("#contactList tr").filter(function() {
						$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
					});
				});
				$("#searchButton").on("click", function() {
					$("#searchBar").toggleClass("hide");
					$("#searchBar").focus();
				});
			});
		</script>
	</head>
	<body>
		<div class="container mx-auto " style="width: 450px;">
			<div class="panel panel-primary ">
				<div class="panel-heading">
					Address book
					<div class="btn-group pull-right">
						<form class="form-inline">
					    	<input id="searchBar" class="hide form-control mr-sm-2" type="search" placeholder="Search">
							<button id="searchButton" type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
							<button type="button" class="btn btn-default">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</form>
					</div>
				</div>

				<table class="table" id="contactList">
					<cfset lastLetter = "">
					<cfoutput query="getContacts">
						<cfset contactLetter = Left(getContacts.first_name, 1)>
						<tr>
							<td class="text-primary text-capitalize">
								<!-- We only want to show the first instance of each letter -->
								<cfif lastLetter neq contactLetter>#contactLetter#</cfif>
							</td>
							<td>#getContacts.first_name# #getContacts.second_name#</td> 
						</tr>
						<cfset lastLetter = contactLetter>
					</cfoutput>
				</table>
			</div>
		</div>
	</body>
</html>