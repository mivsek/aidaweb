private
checkBaseUrl: anUrlString
	"ensure / at start of Url"
	| url |
	url := anUrlString trimBlanks.
	^url first = $/ ifTrue: [url] ifFalse: ['/', url]