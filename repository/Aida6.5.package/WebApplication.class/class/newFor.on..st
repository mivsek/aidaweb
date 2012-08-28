instance creation
newFor: anObject on: aSession
	"guess a class from anObject class name (class name + 'App') and create instance of it"
	| instance |
	instance := self newFromNameFor: anObject on: aSession.
	instance isNil ifTrue: [^nil].
	^instance session: aSession