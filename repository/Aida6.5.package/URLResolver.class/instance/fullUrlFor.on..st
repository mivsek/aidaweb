accessing
fullUrlFor: anObject on: aSession
	"find or make a path for anObject and compose full url together with server address and 
	query string, eg: http://www.eranova.si/welcome.html?view=brief"
	^self 
		fullUrlFromPath: (self halfUrlFor: anObject)
		andParms: (aSession notNil ifTrue: [aSession parms] ifFalse: [#()])
		on: aSession