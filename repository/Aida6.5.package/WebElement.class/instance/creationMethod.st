private
creationMethod
	"a method which created this element, always from some App or Widget. 
	Valid only for aWebElement, never for its subclasses!"
	^self otherAt: #creationMethod ifAbsent: [nil]