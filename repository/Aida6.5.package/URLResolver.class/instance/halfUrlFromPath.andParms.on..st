accessing
halfUrlFromPath: aPathString andParms: aParmsDictionary on: aSession
	"compose half url: /document path and additional parameters in query string, for instance: 	/welcome.html?view=brief"
	| url parmsString newValue |
	url := aPathString.
	aParmsDictionary size > 0 ifTrue:
		[parmsString := ''.
		aParmsDictionary keysAndValuesDo: [:name :value |
			(value isKindOf: Set) ifTrue:[newValue := value asArray at: 1]ifFalse:[newValue := value].
			parmsString := parmsString, 
				(AIDASite convertToWebString: name asString), '=', 
				(AIDASite convertToWebString: newValue asString), '&'].  "value"
		url := url, '?', (parmsString copyFrom: 1 to: (parmsString size - 1))].
	^url

"
| parms |
parms := Dictionary new.
parms at: 'view' put: 'brief'. parms at: 'id' put: '12345'. 
URLResolver default halfUrlFromPath: '/dzs/panorama.html' andParms: parms on: WebSession new
"