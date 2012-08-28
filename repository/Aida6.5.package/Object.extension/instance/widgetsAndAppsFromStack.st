*Aida
widgetsAndAppsFromStack
	"try to find a first sender up in calling stack, which is subclass of Widget or WebApplication"
	"Squeak specific! "
	| stContext coll |
	stContext := thisContext.
	coll := OrderedCollection new.
	[stContext notNil] whileTrue: [
		((stContext receiver isKindOf: WebWidget) or: [stContext receiver isKindOf: WebApplication]) 
			ifTrue: [(coll includes: stContext receiver) ifFalse: [coll add: stContext receiver] ].
		stContext := stContext sender].
	^coll