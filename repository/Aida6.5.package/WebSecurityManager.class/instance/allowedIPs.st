settings
allowedIPs
	"whitelist: a collection of IP addresses, from which login is allowed. Star can be used, like 12.234.*  "
	^self settings at: #AllowedIPs ifAbsentPut: [OrderedCollection new]