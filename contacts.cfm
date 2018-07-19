<cfquery name="getContacts" datasource="addressbookcf">
	SELECT * FROM contacts
	ORDER BY first_name ASC
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<cfset lastLetter = "">
	<cfoutput query="getContacts">
		<cfset contactLetter = Left(first_name, 1)>
		<tr id="#uid#" onclick="contactPressed('#uid#','#first_name#')">
			<td class="text-primary text-capitalize">
				<!-- We only want to show the first instance of each letter -->
				<cfif lastLetter neq contactLetter>#contactLetter#</cfif>
			</td>
			<td><img src="https://www.gravatar.com/avatar/#lcase(Hash(lcase(email)))#?s=50&d=mp" style="border-radius: 50%;" /></td>
			<td>#first_name# #second_name#</td> 
		</tr>
		<cfset lastLetter = contactLetter>
	</cfoutput>
</table>