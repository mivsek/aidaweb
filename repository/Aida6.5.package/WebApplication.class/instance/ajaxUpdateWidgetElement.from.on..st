private-obsolete
ajaxUpdateWidgetElement: anOldElement from: anElementToRecreate "widget" on: aRequest
	"prepare to update (recreate or refresh) some element in that widget by returning a recreated one"
	| argument creationObject new |
	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	creationObject := anElementToRecreate creationObject.
	new := (creationObject class canUnderstand: anElementToRecreate creationMethod) 
		ifTrue: [(anElementToRecreate creationMethod asString last = $: )
			ifTrue: [creationObject perform: anElementToRecreate creationMethod with: argument ] 
			ifFalse: [argument notNil  "try to call the method with that argument"
				ifTrue: [creationObject perform: (anElementToRecreate creationMethod, ':') asSymbol with: argument]
				ifFalse: [creationObject perform: anElementToRecreate creationMethod] ] ]
		ifFalse: [self error: 'Widget does not  understand this update method!' " WebElement new method: nil"].
	^new