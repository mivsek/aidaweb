private
endOfLine: aStream
	"return true if we are at the end of line (on cr or lf characters)"
	aStream peek isNil ifTrue: [^true].
	^(aStream peek = Character cr or: [aStream peek = Character lf]).