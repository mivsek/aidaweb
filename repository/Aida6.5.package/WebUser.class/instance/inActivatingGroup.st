testing
inActivatingGroup
	"user needs to confirm registration"
	^self groups contains: [:each | each isActivatingGroup]