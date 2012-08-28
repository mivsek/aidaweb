private
encryptedUrl: aString on: aSession
	"https and port if not default"
	| url port sslPort stream |
	url := aSession site urlResolver urlFromHalfUrl: aString on: aSession.
	('https*' match: url) ifFalse: [url := url copyReplaceAll: 'http' with: 'https'].
	port := aSession site port.
	sslPort := aSession site sslPort.
	port = 80 & sslPort = 443 ifTrue: [^url].
	stream := url readStream.
	url := (stream upTo: $/ ), '//'.
	stream upTo: $/.
	url := url, (port = 80 ifTrue: [stream upTo: $/] ifFalse: [stream upTo: $: ]).
	port  ~= 80 ifTrue: [stream upTo: $/].
	sslPort ~= 443 ifTrue: [url := url, ':', sslPort printString].
	url := url, '/', stream upToEnd.
	aSession hasSecureCookie ifFalse: [url := self addSessionIdTo: url on: aSession].
	^url