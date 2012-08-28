*Aida
idFromCookie
	"return session id from our cookie. nil if not aida field present in cookie"
	| stream part |
	stream := self cookie readStream.
	[stream atEnd] whileFalse:
		[part := stream upTo: $; .
		('*aida9357*' match: part) ifTrue:
			[^part readStream upTo: $=; upToEnd] ].
	^nil