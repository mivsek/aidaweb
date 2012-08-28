adding ajax components
addDelayedFieldAspect: aSymbol for: anObject
	"for Ajax instant posting, posting is done with a delay. Usefull for live-search fields"
	^self add: (WebDelayedField new aspect:  aSymbol for: anObject)