private
creationContext
	"a context which created this element. If element is not updatable, then nil"
	^self otherAt: #creationContext ifAbsent: nil