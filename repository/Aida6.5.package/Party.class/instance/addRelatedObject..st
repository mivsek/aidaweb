related objects
addRelatedObject: anObject
	(self relatedObjects includes: anObject) ifFalse:
		[self relatedObjects add: anObject].