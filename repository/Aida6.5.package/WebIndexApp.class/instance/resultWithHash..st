accessing
resultWithHash: aString
	"find an object in results with that hash value"
	^(self results detect: [:each | each key hash asString = aString] ifNone: [Association new]) key