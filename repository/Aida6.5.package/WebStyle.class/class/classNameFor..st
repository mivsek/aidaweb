accessing
classNameFor: aMethodSymbol
	"name of a class in a superclass chain which first implement that method"
	(self selectors includes: aMethodSymbol) ifTrue: [^self name asString].
	^self superclass classNameFor: aMethodSymbol