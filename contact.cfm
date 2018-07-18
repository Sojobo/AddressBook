<cfquery name="getContact" datasource="addressbookcf">
	SELECT * FROM contacts
	WHERE uid = #url.uid#
	LIMIT 1
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<cfoutput query="getContact">
		<cfset contactLetter = Left(getContact.first_name, 1)>
		<tr>
			<td class="text-primary text-capitalize">
			</td>
			<td>#getContact.first_name# #getContact.second_name#</td> 
		</tr>
		<cfset lastLetter = contactLetter>
	</cfoutput>
</table>