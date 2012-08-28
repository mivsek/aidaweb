private
preferredUrl
	| nme |
	nme := self name trimBlanks asSloveneWithoutCircumflexes.
	^'/org-enota/', nme asHttpFriendly.

"OrganizationUnit allInstances do: [:each | 
	each repository notNil ifTrue: [each repository site urlResolver changeToPreferedURL: each] ]"