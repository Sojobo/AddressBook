<cfapplication
	name = "AddressBook" 
    applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
    sessionManagement = "yes"
	sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)#
	scriptprotect = "all">