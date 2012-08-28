testing
includes: anObject
	"Answer whether anObject is one of the receiver's elements."

	self days values do: [:each | (each includes: anObject) ifTrue: [^true]].
	^false