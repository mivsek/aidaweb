testing
isCheckboxed
	self parent checkboxes isNil ifTrue: [^false].
	^self parent checkboxes = self id