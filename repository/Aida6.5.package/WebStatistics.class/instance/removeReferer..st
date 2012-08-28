private-referers
removeReferer: anUrlString

	self referers removeKey: anUrlString ifAbsent: [^self].