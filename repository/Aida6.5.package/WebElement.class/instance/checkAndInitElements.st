testing
checkAndInitElements
	"lazy initialization od elements, when needed. Only for composite elements, else error"
	self isComposite 
		ifTrue:[(elements = nil) ifTrue: [elements := OrderedCollection new.       ]]
		ifFalse: [Smalltalk error: 'This is not a composite WebElement'].