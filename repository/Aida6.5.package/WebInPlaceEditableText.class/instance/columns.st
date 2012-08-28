settings
columns
	"length of edit field or textarea"
	self size isNil ifTrue: [^20].
	self size class == Point ifTrue: [^self size x].
	^self size