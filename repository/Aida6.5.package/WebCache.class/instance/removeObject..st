private-cache
removeObject: anObject
	self objects removeKey: anObject ifAbsent: [nil]