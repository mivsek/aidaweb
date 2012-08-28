accessing
methodImageForUrl: aString 
	"maybe a method image can be done from current WebStyle?"
	|  name selector |
	('/img/*' match: aString) ifFalse: [^nil].
	name := (aString readStream upTo: $/ ; upTo: $/; upTo: $. ) asLowercase.
	selector := self site style class allSelectors 
		detect: [:each | each asString asLowercase = name] ifNone: [^nil].
	^WebMethodImage fromMethod: selector on: self site style contentType: 'image/gif' site: self site

"URLResolver default methodImageForURL: '/img/eranovaLogoGif.gif' "