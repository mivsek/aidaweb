accessing
app
	"return anApplication on which we are composing a web page"
	| object |
	self creationObject notNil ifTrue:
		[self creationObject isWebApplication ifTrue: [^self creationObject].
		self creationObject isWebWidget ifTrue: [^self creationObject app].]. 
	self parent isNil ifTrue: 
		[object := self firstAppFromStack.
		^object isNil ifTrue: [nil] ifFalse: [object ] ].
	^parent app