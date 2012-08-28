testing-user agent
isMobile
	"a session from mobile device: phone, tablet, .."
	| request userAgent |
	request := self lastRequest. request isNil ifTrue: [^false].
	userAgent := request userAgent.  userAgent isNil ifTrue: [^false].
	( '*Android*' match: userAgent) ifTrue: [^true]. "Android device"
	( '*Symbian*' match: userAgent) ifTrue: [^true]. "Symbian device"
	( 'BlackBerry*' match: userAgent) ifTrue: [^true]. "BlackBerry device"
	('*iPhone*' match: userAgent) ifTrue: [^true].  "iPhone"
	('*iPad*' match: userAgent) ifTrue: [^true].  "iPad"
	^false