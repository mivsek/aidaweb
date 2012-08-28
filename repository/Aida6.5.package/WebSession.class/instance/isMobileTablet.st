testing-user agent
isMobileTablet
	"a session from mobile tablet (bigger screen than phone)"
	self lastRequest isNil ifTrue: [^false].
	( '*Android*SPH*Mobile*' match: self lastRequest userAgent) ifTrue: [^true]. "Galaxy Tab"
	('*iPad*' match: self lastRequest userAgent) ifTrue: [^true].  "iPad"
	^false