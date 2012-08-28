private
empasizeStarting: aCriteria in: aString
	"put in bold starting part of text to emphasize the criteria part. Ignore case"
	| in out |
	aCriteria trimBlanks isEmpty ifTrue: [^aString].
	(aCriteria trimBlanks, '*' match: aString) ifFalse: [^aString].
	in := aString readStream.
	out := WriteStream on: String new.
	out nextPutAll: '<b>'.
	aCriteria trimBlanks size timesRepeat: [out nextPut: in next].
	out nextPutAll: '</b>'.
	[in atEnd] whileFalse: [out nextPut: in next].
	^out contents