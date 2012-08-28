accessing
imageStreamClassForFileName: aFilename 
	"ImageStream imageStreamClassForFileName: 'zzz.gif' asFilename."

	| aString aSymbol aClass |
	aString := (aFilename asString reverse copyUpTo: $.) reverse.
	aString := aString asLowercase.
	aSymbol := self imageKindTable at: aString ifAbsent: [nil].
	aSymbol isNil ifTrue: [^nil].
	aClass := Smalltalk at: aSymbol ifAbsent: [nil].
	^aClass