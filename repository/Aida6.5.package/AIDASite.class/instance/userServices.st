private
userServices
	"return a dictionary of user services (e.g. WebIndex, WebNews etc.)"
	userServices isNil ifTrue: [userServices := Dictionary new. ].
	^userServices