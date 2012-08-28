accessing
widget
	"on which widget this element is shown, if any"
	self parent isNil ifTrue: [^nil].
	^self parent widget