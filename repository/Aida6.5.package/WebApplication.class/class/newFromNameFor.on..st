private
newFromNameFor: anObject on: aSession
	"Try to create of AnObjectApp instance if that class exist."
	"Squeak specific!"
	| className class |
	className := (anObject class name asString, 'App') asSymbol.
	class := [Smalltalk at: className] on: Error do: [:ex | ^nil].  "Squeak specific!"
	(class allSuperclasses includes: WebApplication) ifFalse: [^nil].
	^class basicNew 
		observee: anObject; 
		session: aSession; 
		initialize.
