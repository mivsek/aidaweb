accessing
allFieldsIncludingSubforms
	"return all fields (form elements) in down the form hierarchy"
	| set  |
"	count := 0.
	stContext := thisContext sender.   ""TEMPORARY, FOR DEBUGGING!""
	[stContext notNil] whileTrue: [
		(stContext receiver isKindOf: WebForm) ifTrue: 
			[count := count +1].
		stContext := stContext sender].
	count > 20 ifTrue: [self error: 'WebForm allFields infinite recursion!'].
"
	set := self allFields.
	self subforms do: [:subform | set addAll: subform allFieldsIncludingSubforms].
	^set