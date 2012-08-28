private
creationContext: aWebContext
	"a context which created this updatable element"
	^self otherAt: #creationContext put: aWebContext