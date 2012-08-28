*Aida
firstEventFromStack
	"try to find a first sender up in calling stack which is an App and get a WebEvent of that call"
	"Squeak specific! "
	| stContext isBlock |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		isBlock := AIDASite onPharo
			ifTrue: [stContext outerContext notNil] ifFalse: [stContext isBlock].	
		(isBlock not 
			and: [(stContext receiver isKindOf: WebApplication) 
				and: [stContext selector = #respondToEvent:]]) 				
					ifTrue: [^stContext at: 1].
		stContext := stContext sender].
	 stContext := thisContext.         "in case we execute in a separate web context's process"
	[stContext notNil] whileTrue: [
		(stContext receiver isKindOf: WebContext) ifTrue: [^stContext receiver request].
		stContext := stContext sender].
	^nil