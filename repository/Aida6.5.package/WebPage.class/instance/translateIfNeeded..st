private-streaming
translateIfNeeded: aStringOrMultilangAssociation
	^aStringOrMultilangAssociation aidaIsAssociation
		ifTrue: [aStringOrMultilangAssociation value] "no translation for now, TEMPORARY!"
		ifFalse: [aStringOrMultilangAssociation convertToSloveneChars]