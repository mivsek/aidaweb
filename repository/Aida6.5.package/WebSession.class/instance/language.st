locale support
language
	"preferred language of a web user. Initialy set from the last request (lazily, when first needed)"
	^self otherAt: #Language ifAbsent:
		[self lastRequest notNil 
			ifTrue: [self language: (self originatorLanguageFrom: self lastRequest)]
			ifFalse: [nil] ]