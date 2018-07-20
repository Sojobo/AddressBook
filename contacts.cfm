<!-- Get a full list of all our contacts and order the results alphabetically -->
<cfquery name="getContacts" datasource="addressbookcf">
	SELECT first_name, second_name, email, uid FROM contacts
	ORDER BY first_name ASC
</cfquery>

<table class="table table-striped table-hover" id="contactList">
	<!-- We want to display the first instance of each letter of the alphabet down the left side row -->
	<cfset lastLetter = "">
	<cfoutput query="getContacts">
		<!-- This is the first letter of this contacts name -->
		<cfset contactLetter = Left(first_name, 1)>
		<tr id="#uid#" onclick="contactPressed('#uid#','#first_name#')">
			<td class="text-primary text-capitalize">
				<!-- If the lastLetter is not the same as this contacts first letter, display the letter -->
				<cfif lastLetter neq contactLetter>#contactLetter#</cfif>
			</td>
			<td><img src="https://www.gravatar.com/avatar/#lcase(Hash(lcase(email)))#?s=50&d=mp" style="border-radius: 50%;" /></td>
			<td>#first_name# #second_name#</td> 
		</tr>
		<!-- Update the lastLetter used -->
		<cfset lastLetter = contactLetter>
	</cfoutput>
</table>