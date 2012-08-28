adding-removing
remove: oldObject 
	^self remove: oldObject ifAbsent: [self notFoundError]