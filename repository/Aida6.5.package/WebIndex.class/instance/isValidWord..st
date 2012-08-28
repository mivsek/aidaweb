testing
isValidWord: aString
	"a valid word for indexing has three or more letters, can have also numbers "
	(aString size >= 3) ifFalse: [^false].
"	aString do:[:chr | chr isDigit ifTrue: [^false] ]. " "no more!"
	^true