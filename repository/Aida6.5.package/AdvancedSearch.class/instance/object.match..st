private
object: anObject match: aCriteria
	| objValue |
	aCriteria associationsDo: [:assoc | 
		(anObject class canUnderstand: assoc key) ifTrue:
			[objValue := anObject perform: assoc key.
			(objValue isKindOf: String) 
				ifTrue: 
					[(assoc value match: objValue) ifFalse: [^false] ] 
				ifFalse:  "numbers, dates etc."
					["self alignCriteria: aCriteria aspect: assoc key with: anObject."
					(assoc value match: objValue printString) ifFalse: [^false] ] ] ].
	^true