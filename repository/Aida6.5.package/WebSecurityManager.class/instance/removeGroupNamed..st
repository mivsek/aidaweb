group management
removeGroupNamed:  aString 
	| group |
	group := self groupNamed: aString.
	group notNil ifTrue: [self removeGroup: group]