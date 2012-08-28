private
preferredUrl
	| nme |
	nme := self surnameName trimBlanks asSloveneWithoutCircumflexes.
	^'/oseba/', nme asHttpFriendly.

"Person allInstances do: [:each | 
	each repository notNil ifTrue: [each repository site urlResolver changeToPreferedURL: each] ]"