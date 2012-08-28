indexing
indexObjects: aCollection
	aCollection do: [:each | self indexObject: each].