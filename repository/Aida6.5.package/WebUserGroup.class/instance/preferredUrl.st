private
preferredUrl
	| nme |
	nme := self name trimBlanks asHttpFriendly.
	^'/group/', nme