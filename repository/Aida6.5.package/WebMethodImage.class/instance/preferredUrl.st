accessing
preferredUrl
	| ext |
	ext := self site mimeMap extensionForType: self aidaContentType.
	ext isNil ifTrue: [ext := ''].
	^'/img/' , self method asString asLowercase , ext