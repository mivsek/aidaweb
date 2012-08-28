authentication
isAllowedToLoginIP: anIPString
	self allowedIPs isEmpty ifTrue: [^true].
	self isIpFilterPolicyNone ifTrue: [^true].
	^self allowedIPs contains: [:ip | ip trimBlanks notEmpty and: [ip match: anIPString] ]