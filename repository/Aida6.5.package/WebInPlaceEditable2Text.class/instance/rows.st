settings
rows
	"number of lines in edit area"
	self size isNil ifTrue: [^1].
	self size class == Point ifTrue: [^self size y].
	^1