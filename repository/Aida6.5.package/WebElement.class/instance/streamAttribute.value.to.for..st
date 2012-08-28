private-streaming
streamAttribute: aNameSymbol value: aValue to: aStream for: aSession
	"if value is true/false, then if true, just print an atribute name, otherwise ommit both"
	"multivalue attributes are supposed to be javascript only! "
	| multiValue |
	aStream nextPut:  $ . 
	((aValue ~= false) | (aValue == true)) ifTrue: [aStream nextPutAll: aNameSymbol asString].
	(aValue isNil or: [aValue isKindOf: Boolean]) ifTrue: [^self]. "just name"
	multiValue := aValue class == OrderedCollection.    aStream nextPutAll: '="'.
	multiValue not ifTrue: [aStream 
		nextPutAll: (AIDASite convertToWeb: aValue asString on: aSession); "UTF-8 encoding"
		nextPutAll: '"'. ^self].
	aValue do: [:value | 
		aStream nextPutAll:  (AIDASite convertToWeb: value asString on: aSession). "UTF-8"
		aStream nextPutAll: '; ']. "javascript sentence separator"
	aStream nextPutAll: '"'.