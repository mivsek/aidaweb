accessing
singleton
	Singleton isNil ifTrue: [Singleton := self new].
	^Singleton