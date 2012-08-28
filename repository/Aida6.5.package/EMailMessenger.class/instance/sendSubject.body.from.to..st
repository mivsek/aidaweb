sending
sendSubject: aSubjectString body: aBodyString from: aPerson to: aPersonOrCollection
	^self 
		sendSubject: aSubjectString body: aBodyString 
		attachFile: nil content: nil 
		from: aPerson to: aPersonOrCollection