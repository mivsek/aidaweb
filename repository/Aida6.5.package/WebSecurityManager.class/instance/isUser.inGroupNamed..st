user management
isUser: aWebUser inGroupNamed: aString
	| group |
	group := self groupNamed: aString.
	group isNil ifTrue: [^false].
	^group includes: aWebUser