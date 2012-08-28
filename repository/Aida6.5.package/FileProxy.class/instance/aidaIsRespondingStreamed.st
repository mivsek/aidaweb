testing
aidaIsRespondingStreamed
	"should we stream that file directly to TCP socket or not?"
	self content notNil ifTrue: [^false].  "cached content is sent faster without streaming"
	self aidaContentType = 'text/html' ifTrue: [^false]. "pure HTML files also not"
	^true