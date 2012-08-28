security
updateRightSymbolFor: aViewSymbol
	"return a right symbol, used for setting/testing rights to update a page with specified view.
	A symbol is composed as follows: '#upd',<aViewSymbol> for expample for view #brief
	result is #updbrief"
	"if view does not exist, then use a default (first) view. Be sure to use a
	sublclass of WebApplication when calling that method to find the right defult view"
	| view allViews|
	allViews := self allViews.
	allViews isEmpty ifTrue: [^nil].
	view := (allViews includes: aViewSymbol)
		ifTrue: [aViewSymbol]
		ifFalse: [self defaultView].
	view := (String with: view asString first asUppercase), 
		(view asString copyFrom: 2 to: view asString size).
	^('upd', view) asSymbol