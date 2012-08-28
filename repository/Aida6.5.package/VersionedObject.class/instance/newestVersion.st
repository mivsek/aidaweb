accessing-versions
newestVersion
	self isNewestVersion ifTrue: [^self].
	^self newerVersions last