<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>AddressBook - CF</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<cfquery name="getContacts" datasource="addressbookcf">
		    SELECT * FROM contacts
		    ORDER BY first_name ASC
		</cfquery>
	</head>
	<body>
		<div class="container mx-auto " style="width: 400px;">
			<div class="panel panel-primary ">
				<!-- Default panel contents -->
				<div class="panel-heading">
					Address book
					<div class="btn-group pull-right">
						<button type="button" class="btn btn-default" aria-label="Right Align">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
						<button type="button" class="btn btn-default" aria-label="Right Align">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						</button>
					</div>
				</div>

				<!-- Table -->
				<table class="table">
					<cfoutput query="getContacts">
						<tr>
							<td>B</td>
							<td>#getContacts.first_name# #getContacts.second_name#</td> 
						</tr>
					</cfoutput>
				</table>
			</div>
		</div>
		<!-- Bootstrap JS -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
		<!-- jQuery JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	</body>
</html>