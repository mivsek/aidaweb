instance creation
new
	| instance ctx |
	instance := super basicNew initialize.
	self == WebElement ifTrue: 
		[instance setCreationMethodAndObject. "Widget or App"
		ctx := instance context.  "?? how this work?" "because initialy nil, it start climbing the stack?"
		instance creationContext: ctx.
		instance checkIfFirstInMethodOn: ctx.  "and set the #firsInMethod"
"		instance isFirstInMethod ifTrue:
			[instance setDiv; registerId]. " "fist elements in creation method are always DIVs and have ids"
		(ctx notNil and: [ctx currentReplacement notNil]) ifTrue: 
			"replace id from old element in Ajax updating, see WebApplication>>ajaxUpdate:from:on:"
			[ctx replaceIdIn: instance with: ctx currentReplacement. 
			ctx cancelReplacement] ].
	^instance