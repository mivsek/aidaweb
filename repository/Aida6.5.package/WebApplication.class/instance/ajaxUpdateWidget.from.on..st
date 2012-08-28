private-obsolete
ajaxUpdateWidget: anOldElement from: anElementToRecreate "widget" on: aRequest
	"prepare to update (recreate or refresh) that widget by returning a recreated one"
	| argument creationObject superform new |
	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	creationObject := anElementToRecreate creationObject.
	superform := anElementToRecreate form superform.
	superform removeSubform: anElementToRecreate form.
	aRequest context cancelReplacement. "widget is rebuilt, not replaced with new instance!"
	new := (creationObject class canUnderstand: anElementToRecreate creationMethod) 
		ifTrue: [(anElementToRecreate creationMethod asString last = $: )
			ifTrue: [creationObject perform: anElementToRecreate creationMethod with: argument ] 
			ifFalse: [argument notNil  "try to call the method with that argument"
				ifTrue: [creationObject perform: (anElementToRecreate creationMethod, ':') asSymbol with: argument]
				ifFalse: [creationObject perform: anElementToRecreate creationMethod] ] ]
		ifFalse: [self error: 'App does not  understand this update method!' " WebElement new method: nil"].
	superform addSubform: new form.
	^new