*Aida
firstWidgetOrAppFromStack
	"try to find a first sender up in calling stack, which is subclass of Widget or WebApplication"
	"Squeak specific! "
	| stContext |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		((stContext receiver isKindOf: WebWidget) or: [stContext receiver isKindOf: WebApplication]) 
			ifTrue: [^stContext receiver].
		stContext := stContext sender].
	^nil