initialize-release
initExtranetUser
	"add default extranet user"
	| user |
	(self users detect: [:each | each isExtranetUser and: [each name = WebUser extranetName]] 
		ifNone: [nil] )
			notNil ifTrue: [^nil].
	user := WebUser newExtranet.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self registeredGroup addUser: user.