*Aida
firstSessionFromStack
	"try to find a first sender up in calling stack, who is  AIDASite and get session if that call"
	"Squeak specific! "
	| stContext isBlock |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		isBlock := AIDASite onPharo
			ifTrue: [stContext outerContext notNil] ifFalse: [stContext isBlock].	
		(isBlock not and: [stContext receiver isKindOf: AIDASite]) ifTrue: 	
			[(1 to: stContext method numArgs) do: [:inx | 
				(stContext at: inx) class == WebSession 
					ifTrue: [^(stContext at: inx)] ].
			^nil].
		stContext := stContext sender].
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		isBlock := AIDASite onPharo
			ifTrue: [stContext outerContext notNil] ifFalse: [stContext isBlock].	
		(isBlock not and: [stContext receiver isKindOf: WebContext]) ifTrue: 	
			[^(stContext receiver app session)].
		stContext := stContext sender].
	^nil