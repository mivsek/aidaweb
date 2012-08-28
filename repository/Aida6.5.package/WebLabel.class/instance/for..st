attributes
for: anElementOrId
	"a related element id for which is that label"
	^self attributesAt: #for put: 
		((anElementOrId isKindOf: WebElement)
			ifTrue: [anElementOrId id]
			ifFalse: [anElementOrId])