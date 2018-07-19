<cfparam name = "form.birthday" default = "NULL"> 
<cfquery name="addContact" datasource="addressbookcf">
	UPDATE contacts
	SET first_name = <cfqueryparam value="#form.first_name#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.first_name))#">,
	second_name = <cfqueryparam value="#form.second_name#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.second_name))#">,
	address = <cfqueryparam value="#form.address#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.address))#">,
	postcode = <cfqueryparam value="#form.postcode#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.postcode))#">,
	phone_home = <cfqueryparam value="#form.phone_home#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_home))#">,
	phone_work = <cfqueryparam value="#form.phone_work#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_work))#">,
	phone_mobile = <cfqueryparam value="#form.phone_mobile#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.phone_mobile))#">,
	email = <cfqueryparam value="#form.email#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.email))#">,
	birthday = <cfqueryparam value="#form.birthday#" CFSQLType="cf_sql_varchar" null="#NOT len(trim(form.birthday))#">
	WHERE uid = <cfqueryparam value="#url.uid#" CFSQLType="cf_sql_integer">
</cfquery>

<cflocation url="index.cfm?view=contact&uid=#url.uid#&name=#form.first_name#" addtoken="no">