<cfquery name="getContact" datasource="addressbookcf">
	SELECT * FROM contacts
	WHERE uid = #url.uid#
	LIMIT 1
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<cfoutput query="getContact">
		<cfif len(first_name) or len(second_name)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-user"></h4>
				</td>
				<td>
					#first_name# #second_name#
				</td>
			</tr>
		</cfif>
		<cfif len(phone_mobile)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-phone"></h4>
				</td>
				<td>
					#phone_mobile#
				</td>
			</tr>
		</cfif>
		<cfif len(phone_home)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-phone-alt"></h4>
				</td>
				<td>
					#phone_home#
				</td>
			</tr>
		</cfif>
		<cfif len(phone_work)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-briefcase"></h4>
				</td>
				<td>
					#phone_work#
				</td>
			</tr>
		</cfif>
		<cfif len(email)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-envelope"></h4>
				</td>
				<td>
					#email#
				</td>
			</tr>
		</cfif>
		<cfif len(address) or len(postcode)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-globe"></h4>
				</td>
				<td>
					#address# <br>
					#postcode#
				</td>
			</tr>
		</cfif>
		<cfif len(birthday)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-calendar"></h4>
				</td>
				<td>
					#dateTimeFormat(birthday, "dd-mm-yy")#
				</td>
			</tr>
		</cfif>

	</cfoutput>
</table>