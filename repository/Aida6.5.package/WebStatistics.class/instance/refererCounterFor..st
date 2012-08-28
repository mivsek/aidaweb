private-referers
refererCounterFor: anUrlString

	^self referers at: anUrlString ifAbsent: [^nil]