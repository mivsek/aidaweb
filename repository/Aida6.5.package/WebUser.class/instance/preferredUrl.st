private
preferredUrl
	| nme |
	nme := self nameSurname trimBlanks asSloveneWithoutCircumflexes asHttpFriendly.
	^'/user/', nme