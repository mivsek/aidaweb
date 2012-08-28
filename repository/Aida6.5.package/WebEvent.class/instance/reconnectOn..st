parsing
reconnectOn: aSession
	"find a right element and a context (at start we have only their ids)"
	"deal specially with page unload event"
	| object app |
	object := aSession site urlResolver objectOnUrl: self relativeUrl.
	app := aSession webAppFor: object. 
	app isNil ifTrue: [^self].
	self context: (self context notNil
		ifTrue: [app contexts at: self context]
		ifFalse: [app contextForView: self pageView]). "for unload event"
	self context isNil ifTrue: [^self].
	self context event: self.
	#unload = self event ifTrue:
		[app contexts 
			detect: [:ctx | ctx window id = self element 
				ifTrue: [self element: ctx window. ^self] ifFalse: [false] ] 
			ifNone: [self element: nil. ^self] ].
	(  #( #load #newtab) includes: self event) "page events"
		ifTrue: [self element: self context page]  "element is entire page"
		ifFalse: [self element: (self context elementId: self element)].