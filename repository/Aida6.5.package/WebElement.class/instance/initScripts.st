initialize-release
initScripts
	self other isNil ifTrue: [^nil].
	self other removeKey: #scriptBefore ifAbsent: [].
	self other removeKey: #scriptAfter ifAbsent: [].