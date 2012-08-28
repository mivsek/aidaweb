roles - specific
jobRole
	^self roles detect: [:role | role isJobRole] ifNone: [^nil].