accessing
lastDate
	"return date on last (most future) value entered"
	| coll |
	coll := self days keys asSortedCollection.  "not very optimized way for big colections! "
	coll isEmpty ifTrue: [^nil].
	^Date fromDays: coll last