accessing
versionWithNumber: aString
	"find version with that number"
	| spec |
	spec := self version versionSpecWithNumber: aString.
	^spec notNil ifTrue: [spec object] ifFalse: [nil]