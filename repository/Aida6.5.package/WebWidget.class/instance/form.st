accessing
form
	"WebForm is first and only subelement of the widget, all element addings go to it and not direclty to widget!"
	self elements isEmpty ifTrue: [self initForm].
	^self elements first