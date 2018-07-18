<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>AddressBook - CF</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		</head>
	<body>
		<div class="container col-md-4">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">Address book</div>

				<!-- Table -->
				<table class="table">
					<tr>
						<th>Firstname</th>
						<th>Lastname</th> 
						<th>Age</th>
						<td></td>
					</tr>
					<tr>
						<td>bob</td>
						<td>jones</td> 
						<td>62</td>
						<td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
					</tr>
					<tr>
						<td>bob</td>
						<td>smith</td> 
						<td>54</td>
						<td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
					</tr>
					<tr>
						<td>barbara</td>
						<td>streisand</td> 
						<td>76</td> 
						<td><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></td>
					</tr>
				</table>
				<button type="button" class="btn btn-success btn-block">Add Contact</button>
			</div>
		</div>
		<!-- Bootstrap JS -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
		<!-- jQuery JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	</body>
</html>