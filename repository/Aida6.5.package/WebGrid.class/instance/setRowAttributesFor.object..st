private-building
setRowAttributesFor: aWebRow object: anObject
	(self rowRedBlock notNil and: [self rowRedBlock value: anObject]) 
		ifTrue: [^aWebRow class: #red].
	(self rowGreenBlock notNil and: [self rowGreenBlock value: anObject]) 
		ifTrue: [^aWebRow class: #green].
	(self rowBlueBlock notNil and: [self rowBlueBlock value: anObject]) 
		ifTrue: [^aWebRow class: #blue].
	(self rowYellowBlock notNil and: [self rowYellowBlock value: anObject]) 
		ifTrue: [^aWebRow class: #yellow].
	(self rowGrayBlock notNil and: [self rowGrayBlock value: anObject]) 
		ifTrue: [^aWebRow class: #gray].