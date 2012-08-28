testing
isChecked
	| value |
	self aspect notNil ifTrue:
		[value := self object perform: self aspect.
		^value == true].  "so that false will be returned even if value is not so"
	self selected notNil ifTrue: [^self selected includes: self object]. 
	^self checked