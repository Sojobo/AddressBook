<!-- We're using cfqueryparam on all inputs here to protect our query from any harmful inputs,
	if the input is blank we're also setting the field to NULL
	we're using the cfquery result to obtain our UID from this new user -->
<cfquery name="addContact" datasource="addressbookcf" result="getID">
	INSERT INTO contacts (first_name, second_name, address, postcode, phone_home, phone_work, phone_mobile, email, birthday)
	VALUES (<cfqueryparam value="#form.first_name#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.first_name))#">,
		<cfqueryparam value="#form.second_name#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.second_name))#">,
		<cfqueryparam value="#form.address#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.address))#">,
		<cfqueryparam value="#form.postcode#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.postcode))#">,
		<cfqueryparam value="#form.phone_home#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_home))#">,
		<cfqueryparam value="#form.phone_work#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_work))#">,
		<cfqueryparam value="#form.phone_mobile#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_mobile))#">,
		<cfqueryparam value="#form.email#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.email))#">,
		<cfqueryparam value="#form.birthday#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.birthday))#">)
</cfquery>

<!-- using the getID result from the above query we can now directly view our new contact -->
<cflocation url="index.cfm?view=contact&uid=#getID.GENERATEDKEY#&name=#form.first_name#" addtoken="no">