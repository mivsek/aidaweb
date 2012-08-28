accessing-versions
oldestVersion
	self isOldestVersion ifTrue: [^self].
	^self olderVersions first