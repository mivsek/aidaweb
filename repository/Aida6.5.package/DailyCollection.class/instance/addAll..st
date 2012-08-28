adding-removing
addAll: aCollection 

	aCollection do: [:each | self add: each].
	^aCollection