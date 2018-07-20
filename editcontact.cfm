<!-- Grab all info we have on our selected contact
	The contact UID is passed through the URL
	We use a cfqueryparam to ensure that only an integer can be inserted into our query -->
<cfquery name="getContact" datasource="addressbookcf">
	SELECT * FROM contacts
	WHERE uid = <cfqueryparam value="#url.uid#" CFSQLType="cf_sql_integer">
	LIMIT 1
</cfquery>

<!-- JS script allowing us to choose a date and format it nicely for our birthday -->
<script type="text/javascript">
	$(function () {
		$("#birthday").datepicker({
			changeMonth: true,
			changeYear: true,
			yearRange: "-100:+0",
			dateFormat: "dd/mm/yy"
		});
	});
</script>

<cfoutput query="getContact">
	<form class="form-inline" action="fnc_editcontact.cfm?uid=#uid#" method="post">
		<table class="table table-striped table-hover" id="contactEdit">
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-user"></h4>
				</td>
				<td>
					<input name="first_name" class="form-control mr-sm-2" type="text" placeholder="First name" value="#first_name#">
					<input name="second_name" class="form-control mr-sm-2" type="text" placeholder="Surname" value="#second_name#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-phone"></h4>
				</td>
				<td>
					<input name="phone_mobile" class="form-control mr-sm-2" type="text" placeholder="Mobile number" value="#phone_mobile#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-phone-alt"></h4>
				</td>
				<td>
					<input name="phone_home" class="form-control mr-sm-2" type="text" placeholder="Home number" value="#phone_home#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-briefcase"></h4>
				</td>
				<td>
					<input name="phone_work" class="form-control mr-sm-2" type="text" placeholder="Work number" value="#phone_work#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-envelope"></h4>
				</td>
				<td>
					<input name="email" class="form-control mr-sm-2" type="email" placeholder="Email" value="#email#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-home"></h4>
				</td>
				<td>
					<input name="address" class="form-control mr-sm-2" type="text" placeholder="Address" value="#address#"><br>
					<input name="postcode" class="form-control mr-sm-2" type="text" placeholder="Postcode" value="#postcode#">
				</td>
			</tr>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-calendar"></h4>
				</td>
				<td>
					<input name="birthday" id="birthday" type="text" class="form-control mr-sm-2" placeholder="Birthday" autocomplete="off" value="#DateFormat(birthday, "dd/mm/yyyy")#">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-success pull-right">Save</button>
					</form>
					<!-- Little bit hacky with the form switch, this could be tidied up to submit selected forms via JS probably -->
					<form class="form-inline" action="fnc_removecontact.cfm?uid=#uid#" method="post">
						<button type="submit" class="btn btn-danger">Delete</button>
					</form>
				</td>
			</tr>
		</table>
</cfoutput>