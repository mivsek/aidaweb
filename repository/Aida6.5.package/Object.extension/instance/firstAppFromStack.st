*Aida
firstAppFromStack
	"try to find a first sender up in calling stack, who is  WebApplication"
	"Squeak specific! "
	| stContext |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		(stContext receiver isKindOf: WebApplication) ifTrue: [^stContext receiver].
		stContext := stContext sender].
	^self firstContextFromStack app