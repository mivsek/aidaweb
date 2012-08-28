private-obsolete
ajaxUpdateAppElement: anOldElement from: anElementToRecreate on: aRequest
	"prepare to update (recreate or refresh) some element in current App by returning a recreated one"
	| argument new |
	argument := aRequest postDataStringAt: 'parm'.   "element creation method with an argument (parm) "
	('view*' match: anElementToRecreate creationMethod asString) ifTrue: 
		[^self error: 'Cannot Ajax update views! View in question: #', anElementToRecreate method].
	new := (self class canUnderstand: anElementToRecreate creationMethod) 
		ifTrue: [(anElementToRecreate creationMethod asString last = $: )
			ifTrue: [self perform: anElementToRecreate creationMethod with: argument ] "object method: parm"
			ifFalse: [argument notNil  "try to call the method with that argument"
				ifTrue: [self perform: (anElementToRecreate creationMethod, ':') asSymbol with: argument]
				ifFalse: [self perform: anElementToRecreate creationMethod] ] ]
		ifFalse: [self error: 'App does not  understand this update method!' " WebElement new method: nil"].
	^new