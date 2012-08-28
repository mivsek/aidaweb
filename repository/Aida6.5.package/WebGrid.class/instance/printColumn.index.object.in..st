private-building
printColumn: aColumn index: aNumber object: anObject in: anElement
	| start |
	aColumn align notNil ifTrue: [anElement align: aColumn align].
	aColumn isNumbered  ifTrue: 
		[start := self hasPages ifTrue: [(self page-1) * self rowsOnPage] ifFalse: [0].
		^self printNumber: start+aNumber object: anObject in: anElement].
	aColumn isCheckboxed  ifTrue: [^self printCheckboxIndex: aNumber object: anObject in: anElement].
	aColumn hasLink ifTrue: [^self printLinkTo: anObject column: aColumn in: anElement]. 
	aColumn hasAddBlock ifTrue: [^anElement add: (aColumn addBlock value: anObject)].
	anElement addText: 
		(self startTagFor: anObject), (aColumn viewBlock value: anObject), (self endTagFor: anObject)