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
<form class="form-inline">
	<table class="table table-striped table-hover" id="contactList">
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-user"></h4>
			</td>
			<td>
				<input id="first_name" class="form-control mr-sm-2" type="text" placeholder="First name">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-phone"></h4>
			</td>
			<td>
				<input id="phone_mobile" class="form-control mr-sm-2" type="text" placeholder="Mobile number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-phone-alt"></h4>
			</td>
			<td>
				<input id="phone_home" class="form-control mr-sm-2" type="text" placeholder="Home number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-briefcase"></h4>
			</td>
			<td>
				<input id="phone_work" class="form-control mr-sm-2" type="text" placeholder="Work number">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-envelope"></h4>
			</td>
			<td>
				<input id="email" class="form-control mr-sm-2" type="text" placeholder="Email">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-globe"></h4>
			</td>
			<td>
				<input id="address" class="form-control mr-sm-2" type="text" placeholder="Address"><br>
				<input id="postcode" class="form-control mr-sm-2" type="text" placeholder="Postcode">
			</td>
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-calendar"></h4>
			</td>
			<td>
				<input id="birthday" type="text" class="form-control mr-sm-2" placeholder="Birthday">
			</td>
		</tr>
	</table>
</form>