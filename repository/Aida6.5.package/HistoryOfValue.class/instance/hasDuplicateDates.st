private-adding-removing
hasDuplicateDates

	"maintenance - check if more than one entry with the same date exist"

	| unique |
	unique := Set new.
	self dates do: [: date | (unique includes: date)
		ifTrue: [^true]
		ifFalse: [unique add: date] ].
	^false