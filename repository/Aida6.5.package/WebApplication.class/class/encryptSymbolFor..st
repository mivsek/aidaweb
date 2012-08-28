security
encryptSymbolFor: aViewSymbol
	"if view does not exist, then use a default (first) view. Be sure to use a
	sublclass of WebApplication when calling that method to find the right default view"
	| view allViews|
	allViews := self allViews.
	allViews isEmpty ifTrue: [^nil].
	view := (allViews includes: aViewSymbol)
		ifTrue: [aViewSymbol]
		ifFalse: [self defaultView].
	view := (String with: view asString first asUppercase), 
		(view asString copyFrom: 2 to: view asString size).
	^('encrypt', view asString) asSymbol