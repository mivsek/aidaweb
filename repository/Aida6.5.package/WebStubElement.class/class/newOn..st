instance creation
newOn: aWebContext
	| instance |
	instance := super new.
	instance 
		creationMethod: #build;
		creationObject: instance;
		creationContext: aWebContext;
		setDiv;
		registerId;
		build.
	^instance