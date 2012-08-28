accessing
context
	"a context of currently executing web request"
	"use sparingly, slow! "
	| ctx |
	ctx := self firstContextFromStack.
	^ctx notNil 
		ifTrue: [ctx]
		ifFalse: [self contexts values    "for tests to work, otherwise this is invalid! "
			detect: [:each | each isFirst and: [each view = #main] ] 
			ifNone: [nil]]