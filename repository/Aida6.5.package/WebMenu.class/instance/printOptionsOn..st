private-streaming
printOptionsOn: aStream
	| option preselected session |
	self collection isEmpty ifTrue: [^nil].
	self prepareSelected.
	preselected := self selected notNil ifTrue: [self selected asSet] ifFalse: [#()].
	aStream nextPutAll: '<option></option>'. "empty choice"
	session := self firstSessionFromStack.
	self collection do: [:each |
		option := self aspect isNil ifTrue: [each] ifFalse: [each perform: self aspect]. 
		option := AIDASite convertToWeb: option on: session.
		aStream nextPutAll: '<option'.
		aStream nextPutAll: ((preselected includes: each) ifTrue: [' selected>'] ifFalse: ['>']).
 		aStream nextPutAll: option; nextPutAll: '</option> ' ]