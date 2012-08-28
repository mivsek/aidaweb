adding-removing
remove: oldObject ifAbsent: anExceptionBlock
	| result |
	result := self remove: oldObject onDate: oldObject date.
	result isNil ifTrue: [^anExceptionBlock value].