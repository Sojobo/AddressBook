<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>AddressBook - CF</title>
		<!-- jQuery -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="main.js"></script>

		<style type="text/css">
			#contactList tr { cursor: pointer }
			.table > tbody > tr > td { vertical-align: baseline; }
			.table .glyphicon { padding: 0 5px 0 10px }
		</style>

		<cfset header = "header_contacts.cfm">
		<cfset content = "contacts.cfm">
		<cfif IsDefined("url.view")>
			<cfset header = "header_#url.view#.cfm">
			<cfset content = "#url.view#.cfm">
		</cfif>
	</head>
	<body>
		<div class="container mx-auto " style="width: 450px;">
			<div class="panel panel-primary ">
				<div id="contentHeader" class="panel-heading" style="height: 50px;">
					<cfinclude template = #header#>
				</div>
				<div id="contentWindow">
					<cfinclude template = #content#>
				</div>
			</div>
		</div>
	</body>
</html>