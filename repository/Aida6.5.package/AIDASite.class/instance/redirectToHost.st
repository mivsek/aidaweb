settings
redirectToHost
	"if set, all requests are redirected to that hostname!"
	| host |
	host := self settings  at: #redirectToHost ifAbsent: [^nil].
	(host isNil or: [host isEmpty]) ifTrue: [^nil].
	^host