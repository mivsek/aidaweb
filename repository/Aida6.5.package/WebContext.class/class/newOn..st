instance creation
newOn: aContext
	^super new 
		parent: aContext;
		setNoProcessState "an initial state"