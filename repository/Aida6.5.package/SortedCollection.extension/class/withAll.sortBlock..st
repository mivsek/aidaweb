*Aida
withAll: aCollection sortBlock: aBlock
	" Answer a new SortedCollection with
	the given elements and sortBlock. "

	| newCollection |
	newCollection := self new: aCollection size.
	newCollection sortBlock: aBlock.
	newCollection addAll: aCollection.
	^newCollection