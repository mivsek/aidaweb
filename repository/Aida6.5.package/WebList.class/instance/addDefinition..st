adding/removing
addDefinition: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement setDefinition] 
		ifFalse: [WebListItem newDefinition add: anElement; yourself].
	^super add: element