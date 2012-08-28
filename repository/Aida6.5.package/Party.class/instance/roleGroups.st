role groups
roleGroups
	(self otherAt: #roleGroups) isNil ifTrue: 
		[self otherAt: #roleGroups put: OrderedCollection new].
	^self otherAt: #roleGroups