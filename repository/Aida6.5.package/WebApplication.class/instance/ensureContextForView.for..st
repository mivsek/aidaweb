private-contexts
ensureContextForView: aViewSymbol for: aRequest
	aRequest context isNil ifTrue:
		[aRequest context: (self contextForView: aViewSymbol). "try to find it first among existing for that view"
		aRequest context isNil ifTrue: [| ctx |
			ctx := (WebContextFirst newOn: self) view: aViewSymbol.
			aRequest context: ctx.
			self addContext: ctx] ]