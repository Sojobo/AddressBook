<cfquery name="getContacts" datasource="addressbookcf">
	SELECT * FROM contacts
	ORDER BY first_name ASC
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<cfset lastLetter = "">
	<cfoutput query="getContacts">
		<cfset contactLetter = Left(getContacts.first_name, 1)>
		<tr id="#getContacts.uid#" onclick="contactPressed('#getContacts.uid#','#getContacts.first_name#')">
			<td class="text-primary text-capitalize">
				<!-- We only want to show the first instance of each letter -->
				<cfif lastLetter neq contactLetter>#contactLetter#</cfif>
			</td>
			<td>#getContacts.first_name# #getContacts.second_name#</td> 
		</tr>
		<cfset lastLetter = contactLetter>
	</cfoutput>
</table>