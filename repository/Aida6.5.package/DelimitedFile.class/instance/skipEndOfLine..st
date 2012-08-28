private
skipEndOfLine: aStream

	"skip all cr and lf characters)"

	[aStream atEnd] whileFalse: 
		[(aStream peek = Character cr or: [aStream peek = Character lf]) 
			ifTrue:	[aStream skip: 1]
			ifFalse: [^self]
		].