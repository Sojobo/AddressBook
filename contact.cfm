<cfquery name="getContact" datasource="addressbookcf">
	SELECT * FROM contacts
	WHERE uid = #url.uid#
	LIMIT 1
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<cfoutput query="getContact">
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-user"></h4>
			</td>
			<td class="align-baseline">
				#getContact.first_name# #getContact.second_name#
			</td> 
		</tr>
		<tr>
			<td>
				<h4 class="glyphicon glyphicon-earphone"></h4>
			</td>
			<td class="align-baseline">
				#getContact.phone_mobile#
			</td> 
		</tr>
	</cfoutput>
</table>