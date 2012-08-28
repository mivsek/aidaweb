locale support
language: aLanguageCodeSymbol
	"preferred language of a web user. Initialy set from the last request (lazily, when first needed)"
	^self otherAt: #Language put: aLanguageCodeSymbol