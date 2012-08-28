accessing
fullUrlFromPath: aPathString andParms: aParmsDictionary on: aSession
	"compose full url: server address, document path and additional parameters in query string, 
	for instance: http://www.eranova.si/welcome.html?view=brief"
	| url |
	url := self urlFromHalfUrl: aPathString on: aSession.
	^self halfUrlFromPath: url andParms: aParmsDictionary on: aSession. "not very nice, i know ..."
	
"
| parms |
parms := Dictionary new.
parms at: 'view' put: 'brief'. parms at: 'id' put: '12345'. 
URLResolver default fullUrlFromPath: '/dzs/panorama.html' andParms: parms on: WebSession new
"