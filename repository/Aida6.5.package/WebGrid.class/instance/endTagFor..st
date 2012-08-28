private-building
endTagFor: anObject
	(self rowBoldBlock notNil and: [self rowBoldBlock value: anObject]) ifTrue: [^'</b>'].
	^''