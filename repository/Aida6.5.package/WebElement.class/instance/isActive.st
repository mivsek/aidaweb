testing
isActive
	"this element is still part of some active (displayed on the browser) App view"
	self parent isNil ifTrue: [^false].
	^self parent isActive