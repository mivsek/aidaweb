private
year
	year isNil ifTrue: [self year: Date today year].
	^year