private-subelements
add: aWebElement
	"Include new element as one of the receiver's elements.  Answer aWebElement.
	If you nest a web page into another web page, then add only elements of it"
	self checkAndInitElements.  "if not composite element, then error"
	"if nested web pages then add elements without header"
	(aWebElement isKindOf: WebApplication) ifTrue: [^self halt].
	((aWebElement isKindOf: WebPage) and: [self isKindOf: WebPage])
		ifTrue: [^elements add: aWebElement elements].
	aWebElement parent: self.
	elements add: aWebElement.
	aWebElement postAddAction. "now the element is added to the parent, it can do some more actions"
	^aWebElement