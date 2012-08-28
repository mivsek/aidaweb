private
doesNotUnderstand: aMessage
	| aspect |
	aspect := (aMessage selector asString copyUpTo: $: ) asSymbol.
	(self criteria includesKey: aspect) ifFalse: [self criteria at: aspect put: ''].
	aMessage arguments notEmpty ifTrue: "mutator"
		[self criteria at: aspect put: aMessage arguments first].
	^self criteria at: aspect