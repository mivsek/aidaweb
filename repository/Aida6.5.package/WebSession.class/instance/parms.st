accessing-other
parms
	"This is a dictionary of parameters in query part of url. When web request arrives, parameters 
 	from query string are written here. When any url is dynamically generated, those parms are 
	appended to it as a query string. You can add, change or delete any parameter to better 
	suit your needs (eg. view=brief to instruct brief view of an object) "
	^self otherAt: #parms