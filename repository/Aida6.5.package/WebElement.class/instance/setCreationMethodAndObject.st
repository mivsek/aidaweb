private
setCreationMethodAndObject
	"find a name of a method and the object (Widget, App or Style) which created me"
	| stContext |
	stContext := thisContext.
	[stContext notNil] whileTrue: [
		((stContext receiver isKindOf: WebApplication) 
			or: [(stContext receiver isKindOf: WebWidget) 
				or: [stContext receiver isKindOf: WebStyle]]) ifTrue: 
					[self creationObject: stContext receiver. "who shall receive that method when needed"
					^self creationMethod: stContext selector].
		stContext := stContext sender].