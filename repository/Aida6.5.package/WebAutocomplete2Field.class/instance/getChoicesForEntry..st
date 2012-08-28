private
getChoicesForEntry: aString
	"return list of choices, selected already entered characters in  aString. "
	"always return text strings, not choice objects!"
	| choices matchString |
	self choiceAspect isNil "one possiblity, direct question to choicesObject"
		ifTrue: [^self choicesObject perform: self choicesAspect with: aString].
	"other possibility, we select internaly from all choices"
	choices := self choicesObject perform: self choicesAspect.
	matchString := aString, '*'.
	choices := choices select: [:each | matchString match: (each perform: self choiceAspect)].
	^choices collect: [:each | each perform: self choiceAspect].