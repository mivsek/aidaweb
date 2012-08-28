private
newFromNameFor: anObject on: aSession
	"Try to create of anObjectMobileApp instance if that class exists."
	"Squeak specific!"
	| className class |
	className := (anObject class name asString, 'MobileApp') asSymbol.
	class := [Smalltalk at: className] on: Error do: [:ex | ^nil].  "Squeak specific!"
	(class allSuperclasses includes: WebApplication) ifFalse: [^nil].
	^class basicNew 
		observee: anObject; 
		session: aSession; 
		initialize.
													
													