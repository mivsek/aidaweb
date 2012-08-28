settings
webUserClass
	"set if other class than WebUser is used for creating/registering users"
	^self settings at: #WebUserClass ifAbsent: [WebUser]