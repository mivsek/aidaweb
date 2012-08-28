private
creationObject
	"a Widget or App which created this element. 
	Valid only for aWebElement, never for its subclasses!"
	^self otherAt: #creationObject ifAbsent: [nil]