settings
webUserClass: aClass
	"set if other class than WebUser is used for creating/registering users"
	^self settings at: #WebUserClass put: aClass