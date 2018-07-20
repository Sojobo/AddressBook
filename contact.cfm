<cfquery name="getContact" datasource="addressbookcf">
	SELECT * FROM contacts
	WHERE uid = <cfqueryparam value="#url.uid#" CFSQLType="cf_sql_integer">
	LIMIT 1
</cfquery>

<table class="table table-striped table-hover" id="contactInfo" style="position: relative; overflow: hidden;">
	<cfoutput query="getContact">
		<cfif len(first_name) or len(second_name)>
			<tr>
				<td>
					<h4 class="glyphicon glyphicon-user"></h4>
					<img src="https://www.gravatar.com/avatar/#lcase(Hash(lcase(email)))#?s=100&d=mp" style="border-radius: 50%; position: absolute; right: 10px" />
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
					<h4 class="glyphicon glyphicon-home"></h4>
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
					#DateFormat(birthday, "dd/mm/yyyy")#
				</td>
			</tr>
		</cfif>

	</cfoutput>
</table>