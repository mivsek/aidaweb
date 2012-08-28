collecting
collectStatsFrom: aWebRequest
	| referer |
	referer := AIDASite convert: aWebRequest referer fromCodepage: #UTF8.
	(referer notNil and: [(self isLocalUrl: referer) not]) 
		ifTrue: [self countReferer: referer]