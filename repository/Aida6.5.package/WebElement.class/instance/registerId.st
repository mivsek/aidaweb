attributes
registerId
	"put into current context ids dictionary for faster search from AJAX requests"
	| ctx |
	self id notNil ifTrue: [^nil]. "is probably already registered! "
	ctx := self context.
	ctx notNil ifTrue: 	[ctx registerIdFor: self]