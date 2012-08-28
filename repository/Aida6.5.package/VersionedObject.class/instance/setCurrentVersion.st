accessing-current
setCurrentVersion
	"set this object as current version, which has always the same identity "
	| other |
	self isCurrentVersion ifTrue: [^nil].
	other := self currentVersion.
	self swapIdentityWith: other.
	^other version setCurrent "because other is now me! "