accessing
style
	style isNil ifTrue: 
		[self style: ((Smalltalk at: self styleClass asSymbol) value newOnSite: self)].
	^style