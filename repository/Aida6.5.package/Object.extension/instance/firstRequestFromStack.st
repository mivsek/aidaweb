*Aida
firstRequestFromStack
	"try to find a first sender up in calling stack, who is  AIDASite and get request of that call"
	"Squeak specific! "
	| stContext isBlock |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		isBlock := AIDASite onPharo
			ifTrue: [stContext outerContext notNil] ifFalse: [stContext isBlock].	
		(isBlock not 
			and: [(stContext receiver isKindOf: AIDASite) 
				and: [stContext method numArgs > 1 
					and: [(stContext at: 2) isKindOf: HTTPRequest]] ])
						ifTrue: "AIDASite>>answer:toGetOrPost:on:"
							[^stContext at: 2].
		stContext := stContext sender].
	 stContext := thisContext.         "in case we execute in a separate web context's process"
	[stContext notNil] whileTrue: [
		(stContext receiver isKindOf: WebContext) ifTrue: [^stContext receiver request].
		stContext := stContext sender].
	^nil