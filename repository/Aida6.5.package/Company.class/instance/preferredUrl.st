private
preferredUrl
	| nme |
	nme := (self name copyUpTo: $ ) trimBlanks asSloveneWithoutCircumflexes asHttpFriendly.
	^'/', nme