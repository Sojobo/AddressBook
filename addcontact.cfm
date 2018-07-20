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

<form class="form-inline" action="fnc_addcontact.cfm" method="post">
	<table class="table table-striped table-hover" id="contactCreate">
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-user"></h4>
			</td>
			<td>
				<input name="first_name" class="form-control mr-sm-2" type="text" placeholder="First name">
				<input name="second_name" class="form-control mr-sm-2" type="text" placeholder="Surname">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-phone"></h4>
			</td>
			<td>
				<input name="phone_mobile" class="form-control mr-sm-2" type="text" placeholder="Mobile number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-phone-alt"></h4>
			</td>
			<td>
				<input name="phone_home" class="form-control mr-sm-2" type="text" placeholder="Home number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-briefcase"></h4>
			</td>
			<td>
				<input name="phone_work" class="form-control mr-sm-2" type="text" placeholder="Work number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-envelope"></h4>
			</td>
			<td>
				<input name="email" class="form-control mr-sm-2" type="email" placeholder="Email">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-home"></h4>
			</td>
			<td>
				<input name="address" class="form-control mr-sm-2" type="text" placeholder="Address"><br>
				<input name="postcode" class="form-control mr-sm-2" type="text" placeholder="Postcode">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-calendar"></h4>
			</td>
			<td>
				<input name="birthday" id="birthday" type="text" class="form-control mr-sm-2" autocomplete="off" placeholder="Birthday">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button" class="btn btn-danger" onclick="backButtonPressed()">Cancel</button>
				<button type="submit" class="btn btn-success pull-right">Save</button>
			</td>
		</tr>
	</table>
</form>