<!-- Remove contact from the database
	The contact UID is passed through the URL
	We use a cfqueryparam to ensure that only an integer can be inserted into our query -->
<cfquery name="removeContact" datasource="addressbookcf">
	DELETE FROM contacts
	WHERE uid = <cfqueryparam value="#url.uid#" CFSQLType="cf_sql_integer">
</cfquery>

<cflocation url="index.cfm" addtoken="no">