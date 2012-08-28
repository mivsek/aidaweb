redirection
redirectLink: aWebLink
	(aWebLink isKindOf: WebLink) | aWebLink isNil ifFalse: [^nil].
	self otherAt: #redirectLink put: aWebLink.