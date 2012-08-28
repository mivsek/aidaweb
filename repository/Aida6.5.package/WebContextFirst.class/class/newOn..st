instance creation
newOn: aWebApplication
	^super new 
		parent: aWebApplication;
		setNoProcessState "an initial state"