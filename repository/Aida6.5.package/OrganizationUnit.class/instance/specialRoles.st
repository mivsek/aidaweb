roles-special
specialRoles
	"a set of roles, special a for member of that org.unit, like aprover, tester etc"
	specialRoles isNil ifTrue: [self initSpecialRoles].
	^specialRoles