attributes
noId
	"remove Id, usually because it is automatically generated"
	self attributes isNil ifTrue: [^nil].
	^self attributes removeKey: #id ifAbsent: [nil]