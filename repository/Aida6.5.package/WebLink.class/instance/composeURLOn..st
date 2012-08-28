private
composeURLOn: aSession
	"do url link only if ooReference or urlReference exists, return nil otherwise"
	| stream url |
	stream := WriteStream on: String new.
	(self ooReference notNil or: [self urlReference notNil] ) ifFalse: [^nil].
	"copy parameters to aSession parms, remove all other except session id"
	parms keysAndValuesDo: [:key :value | aSession parms at: key put: value].
	aSession parms copy keysAndValuesDo: [:key :value | 
		((parms includesKey: key) or: [key = 'id']) 
			ifFalse: [aSession parms removeKey: key ifAbsent: [nil]] ].
	"make an url reference"
	self ooReference notNil
		ifTrue:	
			[url := (aSession site urlResolver
				halfUrlFromPath:	(aSession site urlResolver halfUrlFor: self ooReference)
				andParms: aSession parms on: aSession).
			(self isEncryptedViewFor: self ooReference on: aSession) 
				ifTrue: [url := self encryptedUrl: url on: aSession] ]
		ifFalse: [url := self urlReference].
	anchor notNil ifTrue: [url := self addAnchorTo: url].
	stream nextPutAll: url.
	^self properAmpersand: stream contents " &amp; instead of mere & in XHTML! "