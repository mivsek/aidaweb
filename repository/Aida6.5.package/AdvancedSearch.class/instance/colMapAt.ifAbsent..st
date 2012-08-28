private
colMapAt: anAspect ifAbsent: aBlock
	^self colMap detect: [:each | each first = anAspect] ifNone: aBlock