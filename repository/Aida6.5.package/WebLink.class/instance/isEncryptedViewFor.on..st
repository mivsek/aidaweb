private
isEncryptedViewFor: anObject on: aSession
	"check if we need to make an https link"
	| app view |
	app := anObject aidaWebAppFor: aSession.
	app isNil ifTrue: [^false].
	view := self parms at: 'view' ifAbsent: [app class defaultView].
	^app mustBeEncrypted: view