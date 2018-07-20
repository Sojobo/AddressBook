<cfquery name="removeContact" datasource="addressbookcf">
	DELETE FROM contacts
	WHERE uid = <cfqueryparam value="#url.uid#" CFSQLType="cf_sql_integer">
</cfquery>

<cflocation url="index.cfm" addtoken="no">