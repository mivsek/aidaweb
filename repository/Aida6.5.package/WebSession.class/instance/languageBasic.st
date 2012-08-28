locale support
languageBasic
	" if a combined code (like 'en-us'), return only basic lanuage (like 'en' for 'en-us')"
	^(self language asString includes: $- )
		ifTrue: [self language asString readStream upTo: $- ]
		ifFalse: [self language]