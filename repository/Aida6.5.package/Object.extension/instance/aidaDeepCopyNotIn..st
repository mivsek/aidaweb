*Aida
aidaDeepCopyNotIn: aDictionary

	"Answer a copy of the receiver and copy down all its objects reachable from him. If altready in aDictionary, then not copy, return reference to already copied object"

	| class newObject index |

	self isNil ifTrue: [^self].
	(aDictionary includesKey: self) ifTrue:
		[^aDictionary at: self].

	class := self class.
	newObject := self copy.
	aDictionary at: self put: newObject.
	class isVariable
		ifTrue: 
			[class isPointers 
				ifTrue: 
					[index := self basicSize.
					1 to: index do:
						[ :i |  newObject basicAt: i put: 
							((self basicAt: i) aidaDeepCopyNotIn: aDictionary)  ]]
				ifFalse: ["already copied by self copy"] ]

		ifFalse: ["already copied by self copy"].
		
	1 to: class instSize do:
		[ :inx |  newObject 
				instVarAt: inx
				put: ((self instVarAt: inx) aidaDeepCopyNotIn: aDictionary)  
		].
	^newObject