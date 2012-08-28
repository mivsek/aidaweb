adding/removing
add: anElement
	"ensure always WebListItem as subelement of list"
	| element |
	element := (anElement class == WebListItem)
		ifTrue: [anElement] 
		ifFalse: [WebListItem newListItem add: anElement; yourself].
	^super add: element