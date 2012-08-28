private-app state
appsForObjects
	
	appsForObjects isNil ifTrue: [self initAppsForObjects].
	^appsForObjects