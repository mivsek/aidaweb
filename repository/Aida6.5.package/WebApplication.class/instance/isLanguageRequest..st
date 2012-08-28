private-multilingual
isLanguageRequest: aRequest
	^(aRequest queryAt: 'language') notNil