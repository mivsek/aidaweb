private-importing
checkCorrectDuplicate: aMethodNameSymbol
	| nr name |
	(self map values includes: aMethodNameSymbol) ifFalse: [^aMethodNameSymbol].
	nr := 2. name := aMethodNameSymbol asString.
	[self map values includes: name asSymbol] whileTrue:
		[name last isNumber ifTrue: [name := name copyFrom: 1 to: name size-1].
		name := self checkCorrectDuplicate: (name, nr asString) asSymbol.
		nr := nr + 1].
	^name asSymbol