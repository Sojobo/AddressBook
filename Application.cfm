<!-- Protect from XSS attacks -->
<cfapplication
	name = "AddressBook" 
	scriptprotect = "all" />

<!-- Error handling to stop CF from exposing directories and table names -->
<cferror type="exception" template="fnc_error.cfm">
<cferror type="request" template="fnc_error.cfm"> 
<cferror type="validation" template="fnc_error.cfm"> 