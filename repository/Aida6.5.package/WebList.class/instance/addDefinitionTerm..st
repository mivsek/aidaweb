adding/removing
addDefinitionTerm: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement setDefinitionTerm] 
		ifFalse: [WebListItem newDefinitionTerm add: anElement; yourself].
	^super add: element