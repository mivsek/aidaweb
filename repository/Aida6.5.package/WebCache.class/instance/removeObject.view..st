private-cache
removeObject: anObject view: aViewSymbol
	| views |
	views := self objects at: anObject ifAbsent: [^nil].
	views removeKey: aViewSymbol ifAbsent: [^nil].
	views isEmpty ifTrue: [self removeObject: anObject].