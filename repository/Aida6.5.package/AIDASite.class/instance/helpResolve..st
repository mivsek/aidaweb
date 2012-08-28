private-serving
helpResolve: aResolution 
	(self canAnswer and: [aResolution siteMatch: self]) ifFalse: [^nil].
	^self answerTo: aResolution request