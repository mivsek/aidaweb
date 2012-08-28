accessing
currentVersionSpec
	"find a version spec of current object in a chain"
	self isCurrent ifTrue: [^self].
	^self olderVersionSpecs detect: [:each | each isCurrent] ifNone: 
		[^self newerVersionSpecs detect: [:each | each isCurrent] 
			ifNone: [self error: 'no current version!'] ].