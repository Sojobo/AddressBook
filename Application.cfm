<cfapplication
	name = "AddressBook" 
	applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
	sessionManagement = "yes"
	sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)#
	scriptprotect = "all" />

<cferror type="exception" template="fnc_error.cfm">
<cferror type="request" template="fnc_error.cfm"> 
<cferror type="validation" template="fnc_error.cfm"> 